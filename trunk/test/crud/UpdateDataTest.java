package crud;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.json.JSONException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class UpdateDataTest {
	
	private String screenName="";
	private String insertClause="";
	private String whereclause="";
	private String var="";
	private String searchQuery="";

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception 
	{
		searchQuery="Update ams_dn set dn_status='Create' where dn_id='1'";
		screenName="frmRequest";
		insertClause="{\"json\":[{\"name\":\"panelFields\",\"valuesar\":[{\"key\":\"requesttype\",\"value\":\"NEW HARDWARE\"}]}]}";
        whereclause="{\"json\":[{\"key\":\"reqid\",\"value\":\"627\"}]}";
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testDoUpdate() 
	{
		UpdateData updata=new UpdateData();
		try {
			
			 try {
				   var=updata.doUpdate(screenName, insertClause, whereclause);
				   System.out.println("Return variable>>"+var);
				   if (var.matches("") && var.length()==0) System.out.println(">>>successfully updated");
				   else if (var.length()>0) System.out.println(">>>failed updating the existing record or record is not existing");
			 
			     } catch (SQLException e) {  e.printStackTrace();  }
		    } catch (JSONException e) {
			     fail(e.toString());
		   } 
	}

	@Test
	public void testCreateUpdateQuery() {
		   searchQuery = searchQuery.replaceAll("\n"," ");
	       searchQuery.matches(".*(?i:UPDATE).+(?i:SET).+(?i:WHERE).+");
	       System.out.println("\n\nTesting CreateInsertQuery>>>"+ searchQuery.matches(".*(?i:UPDATE).+(?i:SET).+(?i:WHERE).+"));
	}

}
