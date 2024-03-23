package kr.co.rland.web.context;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisContext {
	private static SqlSessionFactory sqlSessionFactory;

	/* 이러케 하면 잘 돌아가는데.. 잘 돌아가는게 정상이 아니란다. 왜지?
	 * static 영역은 해당 클래스가 로드될 때 읽히므로, 클래스가 로드되지 않는다면 static 영역이 수행되지 않음.
	 * 운이 좋게 context 클래스가 import 되어있어서 해당 블럭이 수행되는 것이 아니라, 무조건 SqlSessionFactory는 빌드되어야 함.
	*/
	static {
		// 여기에 SqlSessionFactory를 다시 부르도록..!
		try {
			String resource = "mybatis-config.xml";

			InputStream inputStream;
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

			//MybatisContext.setSqlSessionFactory(sqlSessionFactory);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public static void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		MybatisContext.sqlSessionFactory = sqlSessionFactory;
	}

}
