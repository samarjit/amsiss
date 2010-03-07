package crud;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.json.JSONException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class InsertDataTest {

	
	private String screenname="";
	private String searchQuery="";
	private String var="";
	private String insertClause="";
	private String autoid="";
	private String appid="";
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception 
	{
		screenname="frmDeliveryNote";
		searchQuery="INSERT INTO ams_dn (dn_id,dn_po_id,dn_invoice_no) VALUES(autoid,'7655','1')";
		insertClause="{\"json\":[{\"name\":\"panelFields\",\"valuesar\":[{\"key\":\"deliverynoteid\",\"value\":\"AUTOGEN_SEQUENCE_ID\"},{\"key\":\"deliverydate\",\"value\":\"15/03/2010\"},{\"key\":\"itemname\",\"value\":\"IT1\"},{\"key\":\"receiveddate\",\"value\":\"16/03/2010\"},{\"key\":\"itemquantity\",\"value\":\"4\"},{\"key\":\"warrantydate\",\"value\":\"24/03/2010\"},{\"key\":\"chqno\",\"value\":\"4\"},{\"key\":\"invoiceno\",\"value\":\"4\"},{\"key\":\"dnstatus\",\"value\":\"CREATE\"},{\"key\":\"orderno\",\"value\":\"4\"},{\"key\":\"itemid\",\"value\":\"IT1\"}]},"+
                      "{\"name\":\"popanel\",\"valuesar\":[{\"key\":\"poid\",\"value\":\"7655\"},{\"key\":\"postatus\",\"value\":\"SEND\"}]}," +
                      "{\"name\":\"statusFields\",\"valuesar\":[{\"key\":\"Status\",\"value\":\"\"},{\"key\":\"wflactionid\",\"value\":\"\"},{\"key\":\"wflactiondesc\",\"value\":\"\"},{\"key\":\"wflid\",\"value\":\"\"}]}]}";
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testDoInsert() 
	{
		System.out.println("\nTesting DoInsert method>>>");
		autoid="359";
		InsertData insertdata=new InsertData();
		try 
		{
			var= insertdata.doInsert(screenname,insertClause,autoid);
			System.out.println("Return variable>>"+var);
			if (var.matches("") && var.length()==0) System.out.println(">>>successfully inserted");
			else if (var.length()>0) System.out.println(">>>failed inserting the new record or unique constraint");
		} catch (SQLException e) {
			fail(e.toString());
		}
	}

	@Test
	public void testCreateInsertQuery() 
	{
		   searchQuery = searchQuery.replaceAll("\n"," ");
	       searchQuery.matches(".*(?i:INSERT INTO).+(?i:VALUES).+");
	       System.out.println("\n\nTesting CreateInsertQuery>>>"+ searchQuery.matches(".*(?i:INSERT INTO).+(?i:VALUES).+"));
	}

	@Test
	public void testGetNewAppId() 
	{
		System.out.println("Testing GetNewAppID method>>>");
		InsertData insertdata=new InsertData();
		appid=insertdata.getNewAppId();
		if(appid.matches(""))System.out.println("Failed in getNewAppId method..");
		else if(appid.length()>0)System.out.println("New App ID is >>>"+appid);
	}

}
