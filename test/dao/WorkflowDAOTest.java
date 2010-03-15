package dao;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashMap;

import javax.sql.rowset.CachedRowSet;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import dto.ApplicationDTO;

import pojo.Createhtml;
import workflow.WorkflowBean;
/**
 * <p><b>WorkflowDAO</b> will be used to test {@link WorkflowDAO}class</p>
 * @author Saw Nandi
 * @version 1.0
 */
public class WorkflowDAOTest {
	
	
	private String activity="";
	private String userid="";
	private String appid="";
	private String status="";
	private String wflName="";
	private String decision=null;
	private String doString;
	private int actionid=0;
	private long wflid=-1;
	private long id;

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
			activity="CR";
			userid="dav";
			appid="627";
			status="S";
			actionid=4;
			wflName="newwfl";
			id=4;
	}

	/**
	 * initialization. Executed after each test.
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	/**
	* Test method for {@link dao.WorkflowDAO#getAvailableAction()}.<br/>
	*/
	@Test
	public void testGetAvailableAction() 
	{
		WorkflowDAO obj=new WorkflowDAO();	
		HashMap<String, ArrayList<String>> a = new HashMap<String, ArrayList<String>>();
		a=obj.getAvailableAction(userid, appid);
		assertNotNull("Available Action should not be null.", a);
	}

	/**
	* Test method for {@link dao.WorkflowDAO#getNewAppId()}.<br/>
	*/	
	@Test
	public void testGetNewAppId() 
	{
		WorkflowDAO obj1=new WorkflowDAO();
		String st="";
		st=obj1.getNewAppId();
		if(st!="")
			assertNotNull("New Application ID should not be null.",obj1.getNewAppId());
		else fail("Failed in getNewAppId method..");
	}
	
	/**
	* Test method for {@link dao.WorkflowDAO#createApplicationWfl()}.<br/>
	*/
	@Test
	public void testCreateApplicationWfl() 
	{
		CrudDAO crud=new CrudDAO();
		WorkflowDAO obj2=new WorkflowDAO();	
		CachedRowSet csr;
		String query="SELECT USER_WFLID_APPID";
		WorkflowBean wflBean=new WorkflowBean();
		wflid = wflBean.workflowInit(appid, wflName, null);
		HashMap<String, Integer> hmActions = wflBean.getAvailableActions(appid, wflid);
		obj2.createApplicationWfl(userid, id, appid, status, hmActions);
		
		try {
			csr=crud.executeRetrieveQuery(query);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
	}
	/**
	* Test method for {@link dao.WorkflowDAO#getScreenId()}.<br/>
	*/
	@Test
	public void testGetScreenId() 
	{
		WorkflowDAO obj3=new WorkflowDAO();	
		String st=null;
		st=obj3.getScreenId(activity);
		if(st!=null)
			assertNotNull("Screen ID should not be null.",obj3.getScreenId(activity));
		else fail("Failed in getScreenId method..");
	}
	/**
	* Test method for {@link dao.WorkflowDAO#changeStageApplicationWfl()}.<br/>
	*/
	@Test
	public void testChangeStageApplicationWfl()
	{
		WorkflowDAO obj4=new WorkflowDAO();	
		WorkflowBean wflBean=new WorkflowBean();
		wflid = wflBean.workflowInit(appid, wflName, null);
		HashMap<String, Integer> hmActions = wflBean.getAvailableActions(appid, wflid);
		obj4.changeStageApplicationWfl(userid, id, appid, status, actionid);
	}
	/**
	* Test method for {@link dao.WorkflowDAO#updateApplicationWfl()}.<br/>
	*/
	@Test
	public void testUpdateApplicationWfl() 
	{
		WorkflowDAO obj5=new WorkflowDAO();	
		WorkflowBean wflBean=new WorkflowBean();
		wflid = wflBean.workflowInit(appid, wflName, null);
		HashMap<String, Integer> hmActions = wflBean.getAvailableActions(appid, wflid);
		obj5.updateApplicationWfl(userid, actionid, appid, status, hmActions);
	}
	/**
	* Test method for {@link dao.WorkflowDAO#createApplicationScrWfl()}.<br/>
	*/
	@Test
	public void testCreateApplicationScrWfl() 
	{
		WorkflowDAO obj6=new WorkflowDAO();	
		WorkflowBean wflBean=new WorkflowBean();
		wflid = wflBean.workflowInit(appid, wflName, null);
		ArrayList<String> hmActions = wflBean.getNextScrFlowActions(wflName, "",decision); 
		//HashMap<String, Integer> hmActions = wflBean.getAvailableActions(appid, wflid);
		obj6.createApplicationScrWfl(userid, wflName, appid, status, hmActions);
    }
	/**
	* Test method for {@link dao.WorkflowDAO#changeStageApplicationScrWfl()}.<br/>
	*/
	@Test
	public void testChangeStageApplicationScrWfl() 
	{
		WorkflowDAO obj7=new WorkflowDAO();
		//WorkflowBean wflBean=new WorkflowBean();
		String wflid="";
		//ArrayList<String> hmActions = wflBean.getNextScrFlowActions(wflName, "",decision); 
		obj7.changeStageApplicationScrWfl(userid, wflid, appid, status, doString);
		
	}
	/**
	* Test method for {@link dao.WorkflowDAO#updateApplicationScrWfl()}.<br/>
	*/
	@Test
	public void testUpdateApplicationScrWfl() 
	{
		WorkflowDAO obj8=new WorkflowDAO();
		WorkflowBean wflBean=new WorkflowBean();
		String wflid="";
		ArrayList<String> hmActions = wflBean.getNextScrFlowActions(wflName, "",decision); 
		obj8.updateApplicationScrWfl(userid, wflid, appid, status, hmActions);
	}
	
	/**
	* Test method for {@link dao.WorkflowDAO#getSuitableWorkflowName()}.<br/>
	*/
	@Test
	public void testGetSuitableWorkflowName() 
	{
		WorkflowDAO obj9=new WorkflowDAO();	
		String st=obj9.getSuitableWorkflowName(activity);
		System.out.println("workflow name>>"+st);
		if(st!="")
			assertNotNull("Workflow Name should not be null.",obj9.getSuitableWorkflowName(activity));
		else fail("Failed in getSuitableWorkflowName method..");
		
    }

}
