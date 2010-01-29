package actionclass;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.struts2.interceptor.ParameterAware;
import org.json.JSONObject;

import businesslogic.BaseBL;

import com.opensymphony.xwork2.ActionSupport;

import dao.CrudDAO;

public class JavascriptRpcAC extends ActionSupport implements  ParameterAware{
	private void debug( int priority,String s){
		if(priority > 0)
		System.out.println("JavascriptRpcAC:"+s);
	}
	
	private InputStream inputStream;
	private String screenName = null;
	private Map parameters;
	private String rpcid;
	
	
    public String getRpcid() {
		return rpcid;
	}

	public void setRpcid(String rpcid) {
		this.rpcid = rpcid;
	}

	public String getScreenName() {
		return screenName;
	}

	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public InputStream getInputStream() {
        return inputStream;
    }
	
	public HashMap jsrpcProcessBL(String screenName) {
		Class aclass = null;
		HashMap retBLhm = new HashMap();
		CrudDAO cd = new CrudDAO();
		
		try {
			String businessLogic = cd.getBusinessLogicName(screenName);
			debug(1,businessLogic);
			if (businessLogic != null && !"".equals(businessLogic)) {
				aclass = Class.forName(businessLogic);
				BaseBL basebl = (BaseBL) aclass.newInstance();
				Map buslogHm = new HashMap();

				Map map = parameters;//servletRequest.getParameterMap();
				Iterator iter = map.entrySet().iterator();
				while (iter.hasNext()) {
					Entry n = (Entry) iter.next();
					String key = n.getKey().toString();
					String values[] = (String[]) n.getValue();
					buslogHm.put(key, values);
				}
				
				retBLhm = basebl.jsrpcProcessBL(buslogHm, rpcid);
			}else{
				retBLhm.put("error", "Method not found");
			}
		} catch (Exception e) {
			debug(1,"Businesslogic not found");
			retBLhm.put("error", "Method not found");
			e.printStackTrace();
		}
		
		return retBLhm;
	}
	
	public String execute(){
		
		String resultHtml = null;
		debug(1,"jsrpc start..."+screenName+" "+rpcid); 
		HashMap hm =  jsrpcProcessBL(  screenName);
		JSONObject jobj = new JSONObject(hm);
		resultHtml = jobj.toString();
		inputStream = new StringBufferInputStream(resultHtml );
		return SUCCESS;
	}

	@Override
	public void setParameters(Map<String, String[]> parameters) {
		this.parameters = parameters;
	}
}
