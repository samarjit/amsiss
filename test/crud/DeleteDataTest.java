package crud;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.HashMap;

import org.json.JSONException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;

import util.Utility;
import dao.CrudDAO;

import junit.framework.TestCase;

/**
 * <p><b>DeleteData</b> will be used to test {@link DeleteData}class</p>
 * @author Saw Nandi
 * @version 1.0
 */
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

	/**
	 * initialization. Executed before each test.
	 * @throws java.lang.Exception
	 */	
	@Before
	public void setUp() throws Exception 
	{
		
		screenname="frmAllocation";
		searchQuery="DELETE from ams_asset where asset_id='IT1'";
		whereClause="{\"json\":[{\"key\":\"username\",\"value\":\"tt\"},{\"key\":\"assethost\",\"value\":\"tt\"},{\"key\":\"assetid\",\"value\":\"580\"}]}";
	}

	
	/**
	 * initialization. Executed after each test.
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
		
		
	}
	
	/**
	* Test method for {@link crud.DeleteData#doDelete()}.<br/>
	*/	
	public void testDoDelete()  
	{
		System.out.println("\nTesting DoDelete method>>>");
		DeleteData deletedata=new DeleteData();
		try 
		{
		   var= deletedata.doDelete(screenname,whereClause);
		   if (var.matches("1")) assertEquals(">>>successfully updated","1",var);
		   else if (var.matches("0")) assertEquals(">>>record is not existing or already deleted before", "0", var);
			 		  
		} catch (JSONException e) {
			
			fail(e.toString());
		}
	}

	/**
	* Test method for {@link crud.DeleteData#createDeleteQuery()}.<br/>
	*/
	public void testCreateDeleteQuery() 
	{
       searchQuery = searchQuery.replaceAll("\n"," ");
       boolean b=searchQuery.matches(".*(?i:DELETE).+(?i:FROM).+(?i:WHERE).+");
       System.out.println("\n\nTesting CreateDeleteQuery>>>");
       assertTrue("Retrieve Query should be the same with DELETE FROM tablename WHERE format", b);
   	}

}
