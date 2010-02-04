package actionclass;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import businesslogic.BaseBL;

import com.opensymphony.xwork2.ActionSupport;

import crud.InsertData;
import dao.CrudDAO;




public class InsertDataAC extends ActionSupport implements ServletRequestAware{

	private InputStream inputStream;
	private String insertKeyValue;
	private String screenName;
	private HttpServletRequest servletRequest;
	private String invokewfl = "false";
	private String redirectUrl = null;
	private String activityname = "";
	private HashMap retBLhm = null;
	private boolean create = false;
	private String wflid;
	
    public String getWflid() {
		return wflid;
	}

	public void setWflid(String wflid) {
		this.wflid = wflid;
	}

	public String getInvokewfl() {
		return invokewfl;
	}

	public void setInvokewfl(String invokewfl) {
		this.invokewfl = invokewfl;
	}

	public String getRedirectUrl() {
		return redirectUrl;
	}

	public void setRedirectUrl(String redirectUrl) {
		this.redirectUrl = redirectUrl;
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
    	InsertData insert = new InsertData();
    	
    	if(servletRequest!=null)
    	System.out.println("query string RD : " + servletRequest.getQueryString());
    	
    	HttpServletRequest request1 =  ServletActionContext.getRequest();
    	//System.out.println(request1.getQueryString());
    	
    	
    	//panelFields1WhereClause = request1.getParameter("panelFields1WhereClause");
    	insertKeyValue = request1.getParameter("insertKeyValue");
    	screenName = request1.getParameter("screenName");
    	invokewfl = request1.getParameter("invokewfl");
    	
    	System.out.println("InserKeyValue = " + insertKeyValue);
    	System.out.println("Screen Name  = " + screenName);
    	
    	String resultHtml = "No Data found";
    	String autogenId =insert.getNewAppId();
    	if(insertKeyValue != null || (!"".equals(insertKeyValue)))
    		resultHtml  = insert.doInsert(screenName, insertKeyValue, autogenId);
    		//resultHtml  = "hii i cant write now.. ";
    	
    	postInsertProcessBL(screenName);
    	
        System.out.println(insertKeyValue);
       // String resXML  = getResultXML (qry,metadata); 
        inputStream = new StringBufferInputStream(resultHtml);
    	//inputStream = new StringBufferInputStream("in view details");
        System.out.println("in view details");
        if(invokewfl.equals("worlkflow")){
        	
        	redirectUrl = request1.getContextPath()+"/workflow.action?appid="+autogenId+"&activityname="+activityname+"&create="+create;
        	return "workflow";
        	
        }else if(invokewfl.equals("scrflow")){
        	redirectUrl = request1.getContextPath()+"/scrworkflow.action?appid="+autogenId+"&activityname="+activityname+"&create="+create;
        	return "workflow";
        }else{
        return SUCCESS;
        }
	}

	public String getInsertKeyValue() {
		return insertKeyValue;
	}

	public void setInsertKeyValue(String insertKeyValue) {
		this.insertKeyValue = insertKeyValue;
	}

	public String getScreenName() {
		return screenName;
	}

	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}

	public String getActivityname() {
		return activityname;
	}

	public void setActivityname(String activityname) {
		this.activityname = activityname;
	}

	private void debug( int priority,String s){
		if(priority > 0)
		System.out.println("InsertDataAC:"+s);
	}
	
	private void postInsertProcessBL(String screenName) {
	
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
				retBLhm = basebl.postInsertProcessBL(buslogHm);
			}
			else{
				retBLhm.put("error", "Method not found");
			}
		} catch (Exception e) {
			debug(1,"Businesslogic not found");
			e.printStackTrace();
		}
		
	}
	
	
	public void setParameters(Map<String, String[]> parameters) {
		//this.parameters = parameters;
	}
}
