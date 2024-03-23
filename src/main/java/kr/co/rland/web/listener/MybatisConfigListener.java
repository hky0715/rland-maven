package kr.co.rland.web.listener;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;


// ServletContext : 서블릿들이 함께 쓰는 공유 도구상자??
@WebListener
public class MybatisConfigListener implements ServletContextListener {
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("Is tomcat started?");
		
		// 무조건 여기서 MybatisContext가 수행되도록!
		try {
			Class.forName("kr.co.rland.web.context.MybatisContext");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("Is tomcat shutdowned?");
	}
}
