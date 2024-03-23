package kr.co.rland.web.controller;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import kr.co.rland.web.context.MybatisContext;

//@WebServlet(urlPatterns = {"/"}, loadOnStartup = 1)
public class MybatisConfigServlet extends HttpServlet {
	/*
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("hehehe~~~~");
		
		
		try {
			String resource = "mybatis-config.xml";
			
			InputStream inputStream;
			inputStream = Resources.getResourceAsStream(resource);			
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder()
													.build(inputStream);
			
			MybatisContext.setSqlSessionFactory(sqlSessionFactory);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	*/
}
