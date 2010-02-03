package actionclass;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import businesslogic.BaseBL;

import com.opensymphony.xwork2.ActionSupport;

import crud.DeleteData;
import dao.CrudDAO;


public class DeleteDataAC extends ActionSupport implements ServletRequestAware {

	private InputStream inputStream;
	private String screenName;
	private String whereclause;
	private HttpServletRequest servletRequest;
	private HashMap retBLhm = null;
	
	private void debug(int priority, String s){
		if(priority > 1){
			System.out.println("UpdateData:"+s);
		}
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
    	
    	
    	postDeleteProcessBL(screenName);
    	debug(0,"Screen Name  = " +screenName);
    	debug(0,"where clause  = " +whereclause);
    	
    	String resultHtml = "No Data found";
    	if(whereclause != null || (!"".equals(whereclause)))
    		resultHtml = delete.doDelete(screenName,whereclause);
    		//resultHtml  = "hii i cant write now.. ";
    	
        debug(5,"Update Result"+resultHtml);
       // String resXML  = getResultXML (qry,metadata); 
        inputStream = new StringBufferInputStream(resultHtml);
    	//inputStream = new StringBufferInputStream("in view details");
        debug(0,"in update details");
        
        //clearing the where clause after use
        return SUCCESS;
	}

	private void postDeleteProcessBL(String screenName2) {
		
		Class aclass = null;
		CrudDAO cd = new CrudDAO();
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
				retBLhm = basebl.postDeleteProcessBL(buslogHm);
			}
			else{
				retBLhm.put("error", "Method not found");
			}
		} catch (Exception e) {
			debug(1,"Businesslogic not found");
			e.printStackTrace();
		}		
	}
		
}
