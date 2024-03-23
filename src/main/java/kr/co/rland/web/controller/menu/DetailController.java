package kr.co.rland.web.controller.menu;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.rland.web.entity.Menu;
import kr.co.rland.web.service.MenuServiceImp;

@WebServlet("/menu/detail")
public class DetailController extends HttpServlet {
	private MenuServiceImp service; 
	
	public DetailController() {
		service = new MenuServiceImp();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		Menu menu = service.get(id);
		
		req.setAttribute("menu", menu);
		req.getRequestDispatcher("/WEB-INF/view/menu/detail.jsp").forward(req, resp);
	}

}
