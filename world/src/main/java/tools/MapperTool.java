package tools;

import java.io.IOException;
import java.io.InputStream;

import mapper.GeneralReportMapper;
import mapper.ReportUserMapper;
import mapper.UserRetainedReportMapper;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MapperTool {
	
	private static SqlSession getSqlSession(){
		String resource = "mybatis-config.xml";
		InputStream inputStream=null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession sqlSession = sqlSessionFactory.openSession();
		return sqlSession;
	}
	
	public static GeneralReportMapper getGeneralReportMapper(){
		GeneralReportMapper mapper = getSqlSession().getMapper(GeneralReportMapper.class);
		return mapper;
	}
	public static ReportUserMapper getReportUserMapper(){
		ReportUserMapper mapper = getSqlSession().getMapper(ReportUserMapper.class);
		return mapper;
	}
	public static UserRetainedReportMapper getUserRetainedReportMapper(){
		UserRetainedReportMapper mapper = getSqlSession().getMapper(UserRetainedReportMapper.class);
		return mapper;
	} 
}
