package pojo;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;


/**
 * <p><b>Createhtml</b> will be used to test {@link Createhtml}class</p>
 * @author Saw Nandi
 * @version 1.0
 */
public class CreatehtmlTest {
	
	private String screenName="";
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
	public void setUp() throws Exception {
		
		screenName="frmDeliveryNote";
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
	* Test method for {@link pojo.Createhtml#getPanels()}.<br/>
	*/	
	@Test
	public void testGetPanels() 
	{
		Createhtml obj= new Createhtml();
		List<String> panelNames = new ArrayList<String>();
		panelNames=obj.getPanels(screenName);
		
		assertNotNull("At least one panel name should be there.",panelNames.size());
		
		if(panelNames.size()!= 0) 
		{
			for(int i=0;i<panelNames.size();i++)
			assertNotSame("Panel Name in Array List should not be null.", "", panelNames.get(i));
		}
		else fail("Failed in getPanels method..");
	}

	
	/**
	* Test method for {@link pojo.Createhtml#getTemplateName()}.<br/>
	*/
	@Test
	public void testGetTemplateName() {
		
		Createhtml obj1=new Createhtml();
		String templateName="";
		templateName=obj1.getTemplateName(screenName);
		
		if(templateName!="")
			assertNotNull("Template Name should not be null.",obj1.getTemplateName(screenName));
		else fail("Failed in getTemplateName method..");
	}

	
	/**
	* Test method for {@link pojo.Createhtml#makehtml()}.<br/>
	*/
	@Test
	public void testMakehtml() {
		
		Createhtml obj2=new Createhtml();
		String mhtml="";
		mhtml=obj2.makehtml(screenName, panelName);
		if(mhtml!="")
			assertNotNull("In MakeHTML method should not return null.",obj2.makehtml(screenName, panelName));
		else fail("Failed in makehtml method..");
		
	}

	/**
	* Test method for {@link pojo.Createhtml#getJsCsshtml()}.<br/>
	*/
	@Test
	public void testGetJsCsshtml() {
		Createhtml obj3=new Createhtml();
		String a="";
		a=obj3.getJsCsshtml(screenName);
		if(a!="")
			assertNotNull("In getJsCsshtml method should not return null.",obj3.getJsCsshtml(screenName));
		else fail("Failed in getJsCsshtml method..");
	}

	
	/**
	* Test method for {@link pojo.Createhtml#findScreenTitle()}.<br/>
	*/
	@Test
	public void testFindScreenTitle() 
	{
		Createhtml obj4=new Createhtml();
		String b="";
		b=obj4.findScreenTitle(screenName);
		if(b!="")
			assertEquals("The Screen Title of frmDeliveryNote should be Delivery Note Details.", "Delivery Note Details", obj4.findScreenTitle(screenName));
		else fail("Failed in findScreenTitle method..");
	}

}
