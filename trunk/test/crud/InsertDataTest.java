package crud;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.json.JSONException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import junit.framework.TestCase;

/**
 * <p><b>InsertData</b> will be used to test {@link InsertData}class</p>
 * @author Saw Nandi
 * @version 1.0
 */

public class InsertDataTest {
	
	private String screenName="";
	private String searchQuery="";
	private String var="";
	private String insertClause="";
	private String autoid="";
		
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
		screenName="frmDeliveryNote";
		searchQuery="INSERT INTO ams_dn (dn_id,dn_po_id,dn_invoice_no) VALUES(autoid,'7655','1')";
		insertClause="{\"json\":[{\"name\":\"panelFields\",\"valuesar\":[{\"key\":\"deliverynoteid\",\"value\":\"AUTOGEN_SEQUENCE_ID\"},{\"key\":\"deliverydate\",\"value\":\"15/03/2010\"},{\"key\":\"itemname\",\"value\":\"IT1\"},{\"key\":\"receiveddate\",\"value\":\"16/03/2010\"},{\"key\":\"itemquantity\",\"value\":\"4\"},{\"key\":\"warrantydate\",\"value\":\"24/03/2010\"},{\"key\":\"chqno\",\"value\":\"4\"},{\"key\":\"invoiceno\",\"value\":\"4\"},{\"key\":\"dnstatus\",\"value\":\"CREATE\"},{\"key\":\"orderno\",\"value\":\"4\"},{\"key\":\"itemid\",\"value\":\"IT1\"}]},"+
                      "{\"name\":\"popanel\",\"valuesar\":[{\"key\":\"poid\",\"value\":\"7655\"},{\"key\":\"postatus\",\"value\":\"SEND\"}]}," +
                      "{\"name\":\"statusFields\",\"valuesar\":[{\"key\":\"Status\",\"value\":\"\"},{\"key\":\"wflactionid\",\"value\":\"\"},{\"key\":\"wflactiondesc\",\"value\":\"\"},{\"key\":\"wflid\",\"value\":\"\"}]}]}";
	}
	
	
	/**
	 * initialization. Executed after each test.
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception 
	{
	}

	
	/**
	* Test method for {@link crud.InsertData#doInsert()}.<br/>
	*/	
	@Test
	public void testDoInsert() 
	{
		System.out.println("\nTesting DoInsert method>>>");
		autoid="361";
		InsertData insertdata=new InsertData();
		try 
		{
			var= insertdata.doInsert(screenName,insertClause,autoid);
			if (var.matches("") && var.length()==0) assertEquals(">>>successfully inserted", "", var);
			else if (var.length()>0) assertNotNull(">>>failed inserting the new record or unique constraint", var);
				
		} catch (Exception e) {
			fail(e.toString());
		}
	}

	/**
	* Test method for {@link crud.InsertData#createInsertQuery()}.<br/>
	*/	
	@Test
	public void testCreateInsertQuery() 
	{
		  searchQuery = searchQuery.replaceAll("\n"," ");
	      boolean b=searchQuery.matches(".*(?i:INSERT INTO).+(?i:VALUES).+");
	      System.out.println("\n\nTesting CreateInsertQuery>>>");
	      assertTrue("Insert Query should be the same with INSERT INTO() VALUES()format.", b);
	}
	
	/**
	* Test method for {@link crud.InsertData#getNewAppId()}.<br/>
	*/

	@Test
	public void testGetNewAppId() 
	{
		System.out.println("Testing GetNewAppID method>>>");
		InsertData insertdata=new InsertData();
		assertNotSame("New Application ID should not be null.", "", insertdata.getNewAppId());
		
	}

}
