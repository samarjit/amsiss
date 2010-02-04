package pojo;

import java.sql.SQLException;

import javax.sql.rowset.CachedRowSet;

import dao.CrudDAO;
import dbconn.DBConnector;

public class GenerateMenu {
	private void debug(int priority,String s){
		if(priority > 0)
		System.out.println("GenerateMenu:"+s);
	}
	public StringBuffer retrieveMenu(String role){
		
		
		
		String menuName;
		 String menuAction;
		 StringBuffer result = new StringBuffer("");
		CachedRowSet crs = null;
		try {
			DBConnector db = new DBConnector();
			CrudDAO cd = new CrudDAO();
			 crs =  cd.executeRetrieveQuery("Select MENU_NAME,MENU_ACTION from ams_menu where menu_role_id='"+role+"' order by menu_id");
			 
			 while(crs.next()){
				 menuName = "";
				 menuAction = "";
				 
				 menuName = crs.getString("MENU_NAME");
				 menuAction = crs.getString("MENU_ACTION");
				 System.out.println("menu menu "+menuName+" aa "+menuAction);
				 
				 result.append("<li><a href="+menuAction+">"+menuName+"</a></li>");
			 }
			
			 debug(0,result.toString());
			 return result;
		} catch (SQLException e) {
			e.printStackTrace();
			 debug(5,e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			 debug(5,e.getMessage());
		}
		return null;
		
	}
	

}
