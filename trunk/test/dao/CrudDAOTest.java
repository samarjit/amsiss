package dao;

import static org.junit.Assert.*;


import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import javax.sql.rowset.CachedRowSet;
import org.json.JSONException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import util.Utility;


/**
 * <p><b>CrudDAO</b> will be used to test {@link CrudDAO}class</p>
 * @author Saw Nandi
 * @version 1.0
 */
public class CrudDAOTest {

	private String screenName="";
	private String panelName="";
	private String joiner="";
	private String query="";
	private boolean exactmatch;
	private CachedRowSet crs;
	
	
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
		screenName="frmAllocation";
		panelName="panelFields";
		joiner=" WHERE ";
		exactmatch=true;
	}
	/**
	 * initialization. Executed after each test.
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	/**
	* Test method for {@link dao.CrudDAO#findSplWhereClsOfPanels()}.<br/>
	*/
	@Test
	public void testFindSplWhereClsOfPanels() 
	{
		CrudDAO obj=new CrudDAO();
		String st="";
				
			st=obj.findSplWhereClsOfPanels(screenName, panelName);
			if(st!="")
			{
				assertNotSame("Special Where Clause may be null", "", obj.findSplWhereClsOfPanels(screenName, panelName));
			}
			else fail("failed in findSplWhereClsOfPanels method..");
	}
	/**
	* Test method for {@link dao.CrudDAO#findPanelByScrname()}.<br/>
	*/
	@Test
	public void testFindPanelByScrname() 
	{
		CrudDAO obj1=new CrudDAO();
	    ArrayList<String> st = new ArrayList<String>();
		st=(ArrayList<String>) obj1.findPanelByScrname(screenName);
		assertNotNull("At least one panel name should be there.",st.size());
		
		if(st.size()!= 0) 
		{
			for(int i=0;i<st.size();i++)
			assertNotSame("Panel Name should not be null.", "", st.get(i));
		}
		else fail("Failed in findPanelByScrname method..");
	}
	/**
	* Test method for {@link dao.CrudDAO#findTableByPanels()}.<br/>
	*/
	@Test
	public void testFindTableByPanels() 
	{
		CrudDAO obj2=new CrudDAO();
		String st="";
				
			st=obj2.findTableByPanels(screenName, panelName);
			if(st!="")
			{
				assertNotSame("Table may be there", "", obj2.findTableByPanels(screenName, panelName));
			}
			else fail("failed in findTableByPanels method..");
	}
	/**
	* Test method for {@link dao.CrudDAO#createRetrieveQueryPart1()}.<br/>
	*/
	@Test
	public void testCreateRetrieveQueryPart1() 
	{
		CrudDAO obj3=new CrudDAO();
		HashMap metadata = new HashMap();
		String st="";
				
			st=obj3.createRetrieveQueryPart1(metadata, screenName, panelName);
			if(st!="")
			{
				assertNotSame("Create Retrieve Query should be.", "", obj3.createRetrieveQueryPart1(metadata, screenName, panelName));
			}
			else fail("failed in createRetrieveQueryPart1 method..");
	}
	/**
	* Test method for {@link dao.CrudDAO#createWhereClause()}.<br/>
	*/
	@Test
	public void testCreateWhereClause() 
	{
		CrudDAO obj4=new CrudDAO();
		String whereClause="{\"json\":[{\"key\":\"username\",\"value\":\"samarjit3\"},{\"key\":\"assethost\",\"value\":\"234\"},{\"key\":\"assetid\",\"value\":\"1\"}]}";
		System.out.println("whereClause:"+whereClause);
		HashMap hmWhere=new HashMap();
		try {
			hmWhere = Utility.extractWhereClause(whereClause);
			String strWhereQuery="";  
			strWhereQuery= obj4.createWhereClause(joiner,screenName,panelName,hmWhere,exactmatch);
			assertNotNull("String where clause should not be null.", obj4.createWhereClause(joiner,screenName,panelName,hmWhere,exactmatch));
			
		} catch (JSONException e) 
		{
			e.printStackTrace();
		}
	}
	
	/**
	* Test method for {@link dao.CrudDAO#executeRetrieveQuery()}.<br/>
	*/
	@Test
	public void testExecuteRetrieveQuery() 
	{
		CrudDAO obj5=new CrudDAO();
		query="SELECT * FROM AMS_REQUEST";
		
		try {
			crs=obj5.executeRetrieveQuery(query);
			System.out.println(crs);
			assertNotNull("When executing the retrieve query, something should be there.", crs);
						
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	* Test method for {@link dao.CrudDAO#executeInsertQuery()}.<br/>
	*/
	@Test
	public void testExecuteInsertQuery() 
	{
		CrudDAO obj6=new CrudDAO();
		query="INSERT INTO AMS_CURRENCY(CURR_ID,CURR_NAME)VALUES('SGD','Singapore Dollar')";
		String query1="SELECT CURR_ID, CURR_NAME FROM AMS_CURRENCY WHERE CURR_ID='SGD'";
		
		try 
		{
			int i=obj6.executeInsertQuery(query);
			CachedRowSet crs1=obj6.executeRetrieveQuery(query1);
			if(crs1.next())
			{
				assertEquals("Inserted Record should be 1.", "SGD", crs1.getString(1));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	* Test method for {@link dao.CrudDAO#findPreDefQuery()}.<br/>
	*/
	@Test
	public void testFindPreDefQuery() 
	{
		CrudDAO obj7=new CrudDAO();
		String st=obj7.findPreDefQuery(screenName,panelName);
		assertNotNull("It should not be null.", st);
	}
	/**
	* Test method for {@link dao.CrudDAO#createUpdateQueryPart1()}.<br/>
	*/
	@Test
	public void testCreateUpdateQueryPart1() 
	{
		CrudDAO obj8=new CrudDAO();
		//HashMap<String, HashMap<String,String>> keyvvaltemp = Utility.extractKeyValPair(insertClause);
		//keyvvaltemp.containsKey(panelName);
		///HashMap updateClause=null;
		///HashMap metadata=null;
		///String st=obj8.createUpdateQueryPart1(metadata, screenName, panelName, updateClause);
		///System.out.println("ST>>>"+st);
		
	}
	/**
	* Test method for {@link dao.CrudDAO#createInsertQueryPart1()}.<br/>
	*/
	@Test
	public void testCreateInsertQueryPart1() 
	{
		//CrudDAO obj9=new CrudDAO();
		//HashMap<String, HashMap<String,String>> keyvvaltemp = Utility.extractKeyValPair(insertClause);
		//keyvvaltemp.containsKey(panelName);
		///HashMap insertClause=null;
		///HashMap metadata=null;
		///HashMap hpreturn=obj9.createInsertQueryPart1(metadata, screenName, panelName, insertClause);
		///System.out.println("Return >>>"+hpreturn);
	}
	/**
	* Test method for {@link dao.CrudDAO#getBusinessLogicName()}.<br/>
	*/
	@Test
	public void testGetBusinessLogicName() 
	{
		CrudDAO obj10=new CrudDAO();
		String st="";
			
			st=obj10.getBusinessLogicName(screenName);
			if(st!="")
			{
				assertNotSame("Business Logic Name may be null.", "", obj10.getBusinessLogicName(screenName));
			}
			else fail("failed in getBusinessLogicName method..");
	
		
	}
	/**
	* Test method for {@link dao.CrudDAO#getNewAppId()}.<br/>
	*/
	@Test
	public void testGetNewAppId() 
	{
		CrudDAO obj11=new CrudDAO();
		String st="";
	
			st=obj11.getNewAppId();
			if(st!="")
			{
				assertNotNull("New Application ID should not be null.", obj11.getNewAppId());
			}
			else fail("failed in getStoreFlag method..");
			
	}
	/**
	* Test method for {@link dao.CrudDAO#getStoreFlag()}.<br/>
	*/
	@Test
	public void testGetStoreFlag() 
	{
		CrudDAO obj12=new CrudDAO();
		String st=null;
		try {
			st=obj12.getStoreFlag(screenName, panelName);
			if(st!=null)
			{
				assertNotNull("Store Flag should not be null.", obj12.getStoreFlag(screenName, panelName));
			}
			else fail("failed in getStoreFlag method..");
		
		} catch (SQLException e) {
			
		}
	}
}
