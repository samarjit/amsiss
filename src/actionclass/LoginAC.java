package actionclass;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;

import pojo.Login;

import com.opensymphony.workflow.Workflow;
import com.opensymphony.workflow.basic.BasicWorkflow;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Iterator;

import dao.LoginDAO;
import dao.WorkflowDAO;
import dto.UserDTO;

public class LoginAC extends ActionSupport implements ServletRequestAware{
	private void log(String s){
		System.out.println(s);
	}
	
	
	private HttpServletRequest request;
	private String username;
	private String userid;
	private String password;
	 
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public String htmlStr;
	
	public String getHtmlStr() {
		return htmlStr;
	}

	public void setHtmlStr(String htmlStr) {
		this.htmlStr = htmlStr;
	}

	public String execute(){
		UserDTO usr = new UserDTO();
		ArrayList<String> arwflId= null;
		HttpSession session = request.getSession(true);
		
		if( request.getParameter("userid") == null ||  request.getParameter("password") == null){
			 addActionError("Enter User ID!");
			return ERROR;
		}else{
			
			usr.setUserid(userid);
			session.setAttribute("userSessionData", usr);
			Login lin = new Login();
			usr.setRoleid(lin.getUserRole(userid));
			usr.setUsername(lin.getUserName(userid));
			WorkflowDAO wflDAO = new WorkflowDAO();
			HashMap<String, ArrayList<String>> hmwflsess = wflDAO.getAvailableAction(usr.getUserid(),null);
			
			Iterator<String> itr = hmwflsess.keySet().iterator();
			try {
				while(itr.hasNext()){
					String strwflsess = (String) itr.next(); //wfl session 
					htmlStr+="<br>"+strwflsess;
					arwflId = hmwflsess.get(strwflsess);
					Workflow wf = new BasicWorkflow(strwflsess);
					Iterator wflIdItr = arwflId.iterator();
					while(wflIdItr.hasNext()){
						String wflId = (String)wflIdItr.next(); //wfl id
						htmlStr+="|"+wflId+"|";
						if(wflId != null){
							long id = Long.parseLong(wflId);
						    int[] actions = wf.getAvailableActions(id, null); //actions
						    for(int s:actions){
						    	htmlStr +=  String.valueOf(s)+",";
						    }
						}
						
					}
				}
			} catch (Exception e) {
				log("login:"+e.getMessage());
				addActionError("Login failed try again!");
				return ERROR;
			}
			System.out.println(htmlStr);
		}
		return SUCCESS;
	}
	public String logout(){
		System.out.println("logged out");
		HttpSession session = request.getSession(false);
		 if(session != null)session.invalidate();
		return SUCCESS;
	}
	 
	@Override
	public void setServletRequest(HttpServletRequest req) {
		request = req;
		
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return password;
	}

}
