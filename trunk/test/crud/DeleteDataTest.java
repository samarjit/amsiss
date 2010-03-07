package crud;

import java.util.HashMap;

import org.json.JSONException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;

import util.Utility;
import dao.CrudDAO;

import junit.framework.TestCase;

public class DeleteDataTest extends TestCase {
	
	private String screenname="";
	private String whereClause="";
	private String searchQuery="";
	private String var="";
		
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception 
	{
		
		screenname="frmAllocation";
		searchQuery="DELETE from ams_asset where asset_id='IT1'";
		whereClause="{\"json\":[{\"key\":\"username\",\"value\":\"tt\"},{\"key\":\"assethost\",\"value\":\"tt\"},{\"key\":\"assetid\",\"value\":\"580\"}]}";
	}

	@After
	public void tearDown() throws Exception {
		
		
	}
	public void testDoDelete()  
	{
		System.out.println("\nTesting DoDelete method>>>");
		DeleteData deletedata=new DeleteData();
		try 
		{
		   var= deletedata.doDelete(screenname,whereClause);
		   System.out.println("Return variable>>"+var);
		   if (var.matches("1")) System.out.println("successfully deleted");
		   else if (var.matches("0")) System.out.println("record is not existing or already deleted before");
		  
		} catch (JSONException e) {
			
			fail(e.toString());
		}
	}

	public void testCreateDeleteQuery() 
	{
       searchQuery = searchQuery.replaceAll("\n"," ");
       searchQuery.matches(".*(?i:DELETE).+(?i:FROM).+(?i:WHERE).+");
       System.out.println("\n\nTesting CreateDeleteQuery>>>"+searchQuery.matches(".*(?i:DELETE).+(?i:FROM).+(?i:WHERE).+"));
   	}

}
