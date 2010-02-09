package pojo;

import dao.LoginDAO;

public class Login {
	private void debug(int priority,String s){
		if(priority > 1)
		System.out.println("Login:"+s);
	}
	public boolean loginMethod(String userId,String password){
		
		return true;
	}
	public String getUserRole(String userId){
		LoginDAO ldao = new LoginDAO();
		return ldao.getUserRole(userId);
	}
	public String getUserName(String userId) {
		LoginDAO ldao = new LoginDAO();
		return ldao.getUserName(userId);
		
	}
	
	public String getPassword(String userId) {
		LoginDAO ldao = new LoginDAO();
		return ldao.getPassword(userId);
		
	}
	
}
