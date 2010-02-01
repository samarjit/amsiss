package actionclass;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import crud.InsertData;




public class InsertDataAC extends ActionSupport implements ServletRequestAware{

	private InputStream inputStream;
	private String insertKeyValue;
	private String screenName;
	private HttpServletRequest servletRequest;
	private String invokewfl = "false";
	private String redirectUrl = null;
	private String activityname = "";
	private boolean create = false;
	
	
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
    	
        System.out.println(insertKeyValue);
       // String resXML  = getResultXML (qry,metadata); 
        inputStream = new StringBufferInputStream(resultHtml);
    	//inputStream = new StringBufferInputStream("in view details");
        System.out.println("in view details");
        if(invokewfl.equals("true")){
        	
        	redirectUrl = request1.getContextPath()+"/workflow.action?appid="+autogenId+"&activityname="+activityname+"&create="+create;
        	return "workflow";
        	
        }else{
        return SUCCESS;
        }
	}
}
