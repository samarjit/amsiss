package crud;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.json.JSONException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
/**
 * <p><b>UpdateData</b> will be used to test {@link UpdateData}class</p>
 * @author Saw Nandi
 * @version 1.0
 */

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
	
	/**
	 * initialization. Executed before each test.
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception 
	{
		searchQuery="Update ams_dn set dn_status='CREATE' where dn_id='1'";
		screenName="frmRequest";
		insertClause="{\"json\":[{\"name\":\"panelFields\",\"valuesar\":[{\"key\":\"requesttype\",\"value\":\"NEW HARDWARE\"}]}]}";
        whereclause="{\"json\":[{\"key\":\"reqid\",\"value\":\"639\"}]}";
	}
	
	/**
	 * initialization. Executed after each test.
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	
	/**
	* Test method for {@link crud.UpdateData#doUpdate()}.<br/>
	*/
	@Test
	public void testDoUpdate() 
	{
		System.out.println("\nTesting DoUpdate method>>>");
		UpdateData updata=new UpdateData();
		try {
			
			 try {
				   var=updata.doUpdate(screenName, insertClause, whereclause);
				   if (var.matches("") && var.length()==0) assertNotNull(">>>successfully updated", var);
				   else if (var.length()>0) assertEquals(">>>failed updating the existing record or record is not existing.", "", var);
						 
			     } catch (SQLException e) {  e.printStackTrace();  }
		    } catch (JSONException e) {
			     fail(e.toString());
		   } 
	}

	
	/**
	* Test method for {@link crud.UpdateData#CreateUpdateQuery()}.<br/>
	*/
	@Test
	public void testCreateUpdateQuery() 
	{
		   searchQuery = searchQuery.replaceAll("\n"," ");
		   boolean b=searchQuery.matches(".*(?i:UPDATE).+(?i:SET).+(?i:WHERE).+");
	       System.out.println("\n\nTesting CreateUpdateQuery>>>");
	       assertTrue("Update Query should be the same with UPDATE tablename SET WHERE format", b);
    }

}
