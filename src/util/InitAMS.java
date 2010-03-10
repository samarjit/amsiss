package util;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

public class InitAMS implements ServletContextListener {
	 
	@Override
	public void contextDestroyed(ServletContextEvent contextEvent) {
		System.out.println("AMS shutting down...");
	}

	/* Any AMS related initialization of resources can be done here
	 * For future use
	 */
	@Override
	public void contextInitialized(ServletContextEvent contextEvent) {
	 	AMSLogger logger  = AMSLogger.getInstance();
	 	logger.debug("servlet starting...");
		System.out.println("AMS Servlet context Started!!!");
	}

}
