package actionclass;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import businesslogic.BaseBL;

import com.opensymphony.xwork2.ActionSupport;

import crud.InsertData;
import crud.UpdateData;
import dao.CrudDAO;

public class UpdateDataAC extends ActionSupport implements ServletRequestAware {

	private InputStream inputStream;
	private String insertKeyValue;
	private String screenName;
	private String whereclause;
	private HashMap retBLhm = null;
	
	private HttpServletRequest servletRequest;
	
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
	
	public HashMap getRetBLhm() {
		return retBLhm;
	}

	public void setRetBLhm(HashMap retBLhm) {
		this.retBLhm = retBLhm;
	}
	
	public String execute()  {
		HashMap metadata = new HashMap();
    	UpdateData update = new UpdateData();
    	
    	if(servletRequest!=null)
    	debug(0,"query string RD : " + servletRequest.getQueryString());
    	
    	HttpServletRequest request1 =  ServletActionContext.getRequest();
    	//debug(0,request1.getQueryString());
    	
    	
    	//panelFields1WhereClause = request1.getParameter("panelFields1WhereClause");
    	insertKeyValue = request1.getParameter("insertKeyValue");
    	screenName = request1.getParameter("screenName");
    	URLDecoder decoder =  new URLDecoder();
    	
    	whereclause = decoder.decode(request1.getParameter("wclause"));
    	
    	
    	
    	debug(0,"InserKeyValue = " +insertKeyValue);
    	debug(0,"Screen Name  = " +screenName);
    	debug(0,"where clause  = " +whereclause);
    	
    	String resultHtml = "No Data found";
    	ArrayList errorList = new ArrayList();
    	if(insertKeyValue != null || (!"".equals(insertKeyValue)))
			try {
				
				String updresult = update.doUpdate(screenName, insertKeyValue, whereclause);
				if(updresult.length() >1){
					errorList.add(updresult);
				}
				debug(5,"callin postUpdateProcessBL ");
				HashMap retBL = postUpdateProcessBL(screenName);
				if(retBL.get("error")!=null){
					errorList.add("Business Logic error occured");
				}
				
			} catch (JSONException e) {
				debug(5,e.getMessage());
				e.printStackTrace();
				errorList.add("Data extraction error");
			} catch (Exception e) {
				debug(5,e.getMessage());
				e.printStackTrace();
				errorList.add("Business Logic Exception");
			}
    	
			try {
				JSONObject jobj = new JSONObject();
				if (errorList.size() > 0) {
					
					jobj.put("error", errorList);
					jobj.put("message", "Record updated successfully");
					resultHtml = jobj.toString();
				}else{
					jobj.put("message", "Record updated successfully");
					resultHtml = jobj.toString();
				}
			} catch (Exception e) {
				debug(5,e.toString());
			}
		debug(5,"Updated resultHtml:"+resultHtml);
       // String resXML  = getResultXML (qry,metadata); 
        inputStream = new StringBufferInputStream(resultHtml);
    	//inputStream = new StringBufferInputStream("in view details");
        debug(0,"in update details");
        
        //clearing the where clause after use
        return SUCCESS;
	}
	
	private void preUpdateProcessBL(String screenName) {
	
	}
	private HashMap postUpdateProcessBL(String screenName) throws Exception {
		
		Class aclass = null;
		CrudDAO cd = new CrudDAO();
		retBLhm = new HashMap();
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
				retBLhmtmp = basebl.postUpdateProcessBL(buslogHm);
				if(retBLhmtmp == null){
					retBLhm.put("message","Unimplemented business logic");
				}else{
					retBLhm.put("BusinessLogicRESULT",retBLhmtmp);
				}
			}
			else{
				//retBLhm.put("error", "BL Class not defined");
				debug(1," BL Class from DB not defined");
			}
		} catch (Exception e) {
			debug(1,"Businesslogic not found");
			e.printStackTrace();
			retBLhm.put("error","Error executing business logic");
			throw e;
		}
		return retBLhm;
	}

}
