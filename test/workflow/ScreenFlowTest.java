package workflow;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;


/**
 * <p><b>ScreenFlow</b> will be used to test {@link ScreenFlow}class</p>
 * @author Saw Nandi
 * @version 1.0
 */
public class ScreenFlowTest {
	
	private String screenflowName="";
	private String currentAction="";
	private String decision="";

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
	public void setUp() throws Exception {
		screenflowName="loginflow";
		currentAction="";
		decision="";
		
		
	}

	/**
	 * initialization. Executed after each test.
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	/**
	* Test method for {@link workflow.ScreenFlow#GetNextActions()}.<br/>
	*/	
	@Test
	public void testGetNextActions() {
		ScreenFlow obj=new ScreenFlow();
		ArrayList<String> scrflowar = new ArrayList<String>();
		scrflowar=obj.getNextActions(screenflowName, currentAction, decision);
		assertNotNull("At least one panel name should be there.",scrflowar.size());
		
		if(scrflowar.size()!= 0) 
		{
			for(int i=0;i<scrflowar.size();i++)
			assertNotSame("Next Action should not be null.", "", scrflowar.get(i));
		}
		else fail("Failed in getNextAction method..");
	}

	/**
	* Test method for {@link workflow.ScreenFlow#GetActionScreenName()}.<br/>
	*/	
	@Test
	public void testGetActionScreenName() {
		
		ScreenFlow obj1=new ScreenFlow();
		String st= obj1.getActionScreenName(screenflowName, currentAction);
	
		if(st!="")
			assertNotNull("Action Screen Name should not be null.",obj1.getActionScreenName(screenflowName, currentAction));
		else fail("Failed in getActionScreenName method..");
	}

	/**
	* Test method for {@link workflow.ScreenFlow#GetBusinessLogic()}.<br/>
	*/	
	@Test
	public void testGetBusinessLogic() {
		ScreenFlow obj2=new ScreenFlow();
		String st=null;
		st=obj2.getBusinessLogic(screenflowName, currentAction);
		System.out.println(st);
		if(st!=null)
			assertNotNull("Business Logic should not be null.",obj2.getBusinessLogic(screenflowName, currentAction));
		else fail("Failed in getBusinessLogic method..");
	}

	/**
	* Test method for {@link workflow.ScreenFlow#PopulateScrFlowNode()}.<br/>
	*/	
	@Test
	public void testPopulateScrFlowNode() {
		
		ScreenFlow obj3=new ScreenFlow();
		ScrFlowNode scrflownode = new ScrFlowNode();
		scrflownode=obj3.populateScrFlowNode(screenflowName, currentAction);
		assertNotNull("Screen flow node should not be null.", scrflownode);
		
	}

}
