package dao;

import mapper.ReportUserMapper;
import tools.MapperTool;
import bean.reportUser.ReportUser;

public class ReportUserLoginDao {
	private static ReportUserMapper mapper;
	static{
		mapper = MapperTool.getReportUserMapper();
	}
	public static ReportUser getReportUser(String name){
		return mapper.getReportUser(name);
	}
}
