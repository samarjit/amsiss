package pojo;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
/**
 * <p><b>HTable</b> will be used to test {@link HTable}class</p>
 * @author Saw Nandi
 * @version 1.0
 */
public class HTableTest {
	
	private String panelName="";

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
		panelName="panelFields";
		
		
	}

	/**
	 * initialization. Executed after each test.
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	/**
	* Test method for {@link pojo.HTable#Add()}.<br/>
	*/	
	
	@Test
	public void testAdd() 
	{
		HTable obj=new HTable(3,4);
		obj.add(1,1,"User ID");
	}

	/**
	* Test method for {@link pojo.HTable#toString()}.<br/>
	*/	
	
	@Test
	public void testToString() 
	{
		HTable obj1=new HTable(3,4);
		String st=obj1.toString();
		System.out.println(st);
		assertNotSame("String should not be null", "", st);
	}

	
	/**
	* Test method for {@link pojo.HTable#setTableId()}.<br/>
	*/	
	@Test
	public void testSetTableId() 
	{
		HTable obj2=new HTable(3,4);
		obj2.setTableId(panelName);
	}

}
