package kr.co.rland.web.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import kr.co.rland.web.entity.Menu;

public class JDBCMenuRepository implements MenuRepository {

	public List<Menu> findAll() {
		// TODO Auto-generated method stub
		List<Menu> list = new ArrayList<>();
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url="jdbc:oracle:thin:@db.newlecture.com:1521/xepdb1";
			String user = "RLAND";
			String pwd = "0530";
			String sql = "SELECT * FROM MENU";
			
			Connection con = DriverManager.getConnection(url, user, pwd);		
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {		
				Menu menu = new Menu();
				menu.setId(rs.getInt("ID"));
				menu.setKorName(rs.getString("KOR_NAME"));
				menu.setEngName(rs.getString("ENG_NAME"));
				menu.setPrice(rs.getInt("PRICE"));
				menu.setImg(rs.getString("IMG"));
				menu.setLike(rs.getBoolean("LIKE"));
				menu.setRegDate(rs.getDate("REG_DATE"));
				
				list.add(menu);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public Menu findById(int id) {
		// TODO Auto-generated method stub
		Menu menu = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url="jdbc:oracle:thin:@db.newlecture.com:1521/xepdb1";
			String user = "RLAND";
			String pwd = "0530";
			String sql = "SELECT * FROM MENU WHERE ID = " + id + "";
			
			Connection con = DriverManager.getConnection(url, user, pwd);		
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			if(rs.next()) {		
				menu = new Menu();
				
				menu.setId(rs.getInt("ID"));
				menu.setKorName(rs.getString("KOR_NAME"));
				menu.setEngName(rs.getString("ENG_NAME"));
				menu.setPrice(rs.getInt("PRICE"));
				menu.setImg(rs.getString("IMG"));
				menu.setLike(rs.getBoolean("LIKE"));
				menu.setRegDate(rs.getDate("REG_DATE"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return menu;
	}

}
