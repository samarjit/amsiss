package actionclass;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.json.JSONObject;

import businesslogic.BaseBL;

import com.opensymphony.xwork2.ActionSupport;

import crud.DeleteData;
import dao.CrudDAO;


public class DeleteDataAC extends ActionSupport implements ServletRequestAware {
	private void debug(int priority, String s){
		if(priority > 1){
			System.out.println("DeleteDataAC:"+s);
		}
	}
	
	private InputStream inputStream;
	private String screenName;
	private String whereclause;
	private HttpServletRequest servletRequest;
	private HashMap retBLhm = new HashMap();
	
	public HashMap getRetBLhm() {
		return retBLhm;
	}

	public void setRetBLhm(HashMap retBLhm) {
		this.retBLhm = retBLhm;
	}

	
	
    public InputStream getInputStream() {
        return inputStream;
    }
    
    public HttpServletRequest getServletRequest() {
		return servletRequest;
	}
    
	@Override
	public void setServletRequest(HttpServletRequest request) {
			servletRequest = request;
	}
	
	
	public String execute() throws Exception {
		HashMap metadata = new HashMap();
    	DeleteData delete = new DeleteData();
    	
    	if(servletRequest!=null)
    	debug(0,"query string RD : " + servletRequest.getQueryString());
    	
    	HttpServletRequest request1 =  ServletActionContext.getRequest();
    	//debug(0,request1.getQueryString());
    	
    	
    	//panelFields1WhereClause = request1.getParameter("panelFields1WhereClause");
    	
    	screenName = request1.getParameter("screenName");
    	URLDecoder decoder =  new URLDecoder();
    	
    	whereclause = decoder.decode(request1.getParameter("wclause"));
    	
    	
    	
    	debug(0,"Screen Name  = " +screenName);
    	debug(0,"where clause  = " +whereclause);
    	
    	String resultHtml = "No Data found";
    	ArrayList errorList = new ArrayList();
    	JSONObject jobj = new JSONObject();
    	
    	if(whereclause != null || (!"".equals(whereclause)))
    		resultHtml = delete.doDelete(screenName,whereclause);
    		//resultHtml  = "hii i cant write now.. ";
    	
    	if(resultHtml.length() >1){
			errorList.add(resultHtml);
		}
    	  	
    	HashMap retPostBL = postDeleteProcessBL(screenName);
    	
    	if(retPostBL.get("error")!= null){
			errorList.add("Post Business Logic error occured");
		}
    	
    	try {
        	jobj.put("message", resultHtml);
			if (errorList.size() > 0) {
				
				jobj.put("error", errorList);
				jobj.put("message", "Record deleted successfully");
				resultHtml = jobj.toString();
			}else{
				jobj.put("message", "Record deleted successfully");
				resultHtml = jobj.toString();
			}
		} catch (Exception e) {
			debug(5,e.toString());
		}
		
		debug(5,"Deleted Result"+resultHtml);
       // String resXML  = getResultXML (qry,metadata); 
        inputStream = new StringBufferInputStream(resultHtml);
    	//inputStream = new StringBufferInputStream("in view details");
        debug(0,"in update details");
        
        //clearing the where clause after use
        return SUCCESS;
	}

	private HashMap postDeleteProcessBL(String screenName2) {
		
		Class aclass = null;
		CrudDAO cd = new CrudDAO();
		HashMap retBLhmtmp = new HashMap();
		String businessLogic = cd.getBusinessLogicName(screenName);
		try {
			if (businessLogic != null && !"".equals(businessLogic)) {
				aclass = Class.forName(businessLogic);
				BaseBL basebl = (BaseBL) aclass.newInstance();
				Map buslogHm = new HashMap();

				Map map = servletRequest.getParameterMap();//parameters;
				
				Iterator iter = map.entrySet().iterator();
				while (iter.hasNext()) {
					Entry n = (Entry) iter.next();
					String key = n.getKey().toString();
					String values[] = (String[]) n.getValue();
					buslogHm.put(key, values);
				}	
				//buslogHm = map;
				retBLhmtmp = basebl.postDeleteProcessBL(buslogHm);
				if(retBLhmtmp == null){
					retBLhm.put("message","Unimplemented business logic");
				}else{
					retBLhm.put("BusinessLogicRESULT",retBLhmtmp);
				}
			}
			else{
				retBLhm.put("message", "Business logic not defined");
				debug(1," BL Class from DB not defined");
			}
		} catch (Exception e) {
			debug(1,"Businesslogic not found:"+businessLogic);
			e.printStackTrace();
			retBLhm.put("error","Error executing business logic");
		}		
		return retBLhm;
	}
	
		
}
