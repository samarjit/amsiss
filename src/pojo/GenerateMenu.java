package pojo;

import java.sql.SQLException;

import javax.sql.rowset.CachedRowSet;

import dao.CrudDAO;
import dbconn.DBConnector;

public class GenerateMenu {
	
	public StringBuffer retrieveMenu(String role){
		String menuName;
		 String menuAction;
		 StringBuffer result = new StringBuffer("");
		CachedRowSet crs = null;
		try {
			DBConnector db = new DBConnector();
			CrudDAO cd = new CrudDAO();
			 crs =  cd.executeRetrieveQuery("Select * from ams_menu where menu_role_id='"+role+"' order by menu_id");
			 
			 while(crs.next()){
				 menuName = "";
				 menuAction = "";
				 
				 menuName = crs.getString("MENU_NAME");
				 menuAction = crs.getString("MENU_ACTION");
				 System.out.println("menu menu "+menuName+" aa "+menuAction);
				 if(result.equals("")){
					 result.append("<ul>");
				 }
				 result.append("<li><a href="+menuAction+">"+menuName+"</a></li>");
			 }
			 result.append("</ul>");
			 System.out.println(result.toString());
			 return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	

}
