package kr.co.rland.web.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.co.rland.web.context.MybatisContext;
import kr.co.rland.web.entity.Menu;
import kr.co.rland.web.repository.MenuRepository;

public class MenuServiceImp implements MenuService {
	
	//데이터는 내게 맡기고 너는 업무에만 집중하게!
	private MenuRepository menuRepository;
	
	public MenuServiceImp() {
		//menuRepository = new JDBCMenuRepository();
		
		/* 
		 * mapper가 이미 만들어져있는 공장이자너... ^_^	
		 * builder가 우르르르 만들어놓고, mapper에게 관리를 맡김!
		*/
		SqlSessionFactory factory = MybatisContext.getSqlSessionFactory();
		SqlSession session = factory.openSession();
		// 요거 구현한 mapper를 갖고와! 라고 class명을 명시해준다
		menuRepository = session.getMapper(MenuRepository.class);
	}
	

	public List<Menu> getList() {
		// TODO Auto-generated method stub
		List<Menu> list = menuRepository.findAll();
		return list;
	}


	public Menu get(int id) {
		// TODO Auto-generated method stub
		Menu menu = menuRepository.findById(id);
		return menu;
	}


	@Override
	public void setRepository(MenuRepository menuRepository) {
		// TODO Auto-generated method stub
		this.menuRepository = menuRepository;
	}
}
