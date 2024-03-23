package kr.co.rland.web.controller.menu;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.rland.web.entity.Menu;
import kr.co.rland.web.service.MenuService;
import kr.co.rland.web.service.MenuServiceImp;

@WebServlet("/menu/list")
public class ListController extends HttpServlet {
		
	private MenuService service;
	
	public ListController() {
		/* 
		 * ServiceImpl에서 repository를 만드는게 싫어서 분리를 했는데.. 결국 여기서 내가 객체를 맹글어서 꽂아야하자너..
		 * 그 객체를 만들어서 꽂는 작업을 이젠 스프링에게 맡길 수도 있는것이지 ^_^ 그것이 DI! 
		*/
	//	MenuRepository menuRepository = new JDBCMenuRepository();
		service = new MenuServiceImp();
		
	//	service.setRepository(menuRepository);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		List<Menu> list = service.getList();
		//List<Menu> list = new ArrayList<>();
		
		
		// 만들어낸 list를 req에 담아서 보내야 하눈디...
		req.setAttribute("list", list);
		req.getRequestDispatcher("/WEB-INF/view/menu/list.jsp").forward(req, resp);
		
		
	}
}
