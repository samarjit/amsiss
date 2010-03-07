package crud;

import static org.junit.Assert.*;

import org.json.JSONException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

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

	@Before
	public void setUp() throws Exception 
	{
		screenname="frmPO";
		searchQuery="SELECT * FROM AMS_ASSET";
		whereClause="{\"json\":[{\"key\":\"poid\",\"value\":\"7655\"}]}";
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testDoRetrieveData() 
	{
		System.out.println("\nTesting DoRetrieve method>>>");
		RetreiveData rdata=new RetreiveData();
		
	    try 
	    {
			var= rdata.doRetrieveData(screenname,whereClause);
			System.out.println("Return variable>>"+var);
			if (var.length()>0) System.out.println(">>>successfully retrieved the data"); 
			else if (var.matches("") && var.length()==0) System.out.println(">>>failed retrieving the existing records");
			
	    } catch (Exception e) {
			fail(e.toString());
		}
	}

	@Test
	public void testDoRetrieveDatabyQuery() {
		   searchQuery = searchQuery.replaceAll("\n"," ");
	       searchQuery.matches(".*(?i:SELECT).+(?i:FROM).+");
	       System.out.println("\n\nTesting CreateInsertQuery>>>"+ searchQuery.matches(".*(?i:SELECT).+(?i:FROM).+"));
	}

}
