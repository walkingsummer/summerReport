package mapper;

import java.util.ArrayList;

import bean.generalReport.GeneralReportRequestBean;
import bean.generalReport.GeneralReportResponseBean;
import bean.generalReport.UserInfo;

public interface GeneralReportMapper {
//	@Select("select count(rid) from registerFile r where r.registerDate=(current_date())")
	
//	
//	@Select("select count(lid) " +
//			"from registerFile r, logFile l " +
//			"where r.registerDate=(current_date()) and l.logDate=(current_date()) and l.username=r.username")
//	int getNewLogCounts();
//	
//	@Select("select count(rid) from recommendFile r where r.recommendDate=(current_date())")
//	int getNewRecommendCounts();
//	
	UserInfo queryUserByName(String username);
	
	int getRegisterCounts(GeneralReportRequestBean reqBean);
	int getDayLogCounts(GeneralReportRequestBean reqBean);
	int getDayRecommendCounts(GeneralReportRequestBean reqBean);
	int getDayOrderCounts(GeneralReportRequestBean reqBean);
	int getNewLogCounts(GeneralReportRequestBean reqBean);
	int getNewRecommendCounts(GeneralReportRequestBean reqBean);
	int getNewOrderCounts(GeneralReportRequestBean reqBean);
	ArrayList<GeneralReportResponseBean> getGeneralReportList(GeneralReportRequestBean reqBean);
}
