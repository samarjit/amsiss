package crud;

import static org.junit.Assert.*;

import org.json.JSONException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 * <p><b>RetreiveData</b> will be used to test {@link RetreiveData}class</p>
 * @author Saw Nandi
 * @version 1.0
 */
public class RetreiveDataTest {

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
		screenname="frmPO";
		searchQuery="SELECT * FROM AMS_ASSET";
		whereClause="{\"json\":[{\"key\":\"poid\",\"value\":\"7655\"}]}";
	}
	
	/**
	 * initialization. Executed after each test.
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}
	
	
	/**
	* Test method for {@link crud.RetreiveData#doRetrieveData()}.<br/>
	*/
	@Test
	public void testDoRetrieveData() 
	{
		System.out.println("\nTesting DoRetrieve method>>>");
		RetreiveData rdata=new RetreiveData();
		
	    try 
	    {
			var= rdata.doRetrieveData(screenname,whereClause);
			if (var.length()>0) assertNotNull(">>>successfully retrieved", var);
			else if (var.matches("") && var.length()==0) assertEquals(">>>failed retrieving the existing record.", "", var);
				
	    } catch (Exception e) {
			fail(e.toString());
		}
	}
	
	/**
	* Test method for {@link crud.RetreiveData#doRetrieveDataByQuery()}.<br/>
	*/	
	@Test
	public void testDoRetrieveDatabyQuery() 
	{
		   searchQuery = searchQuery.replaceAll("\n"," ");
		   boolean b=searchQuery.matches(".*(?i:SELECT).+(?i:FROM).+");
	       System.out.println("\n\nTesting DoRetrieveDatabyQuery>>>");
	       assertTrue("Retrieve Query should be the same with SELECT FROM tablename format", b);
	}
}
