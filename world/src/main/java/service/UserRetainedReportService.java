package service;

import bean.userRetainedReport.UserRetainedReportRequestBean;
import bean.userRetainedReport.UserRetainedReportResponseBean;
import dao.UserRetainedReportDao;

public class UserRetainedReportService {
	
	public static UserRetainedReportResponseBean getUserRetainedReport(UserRetainedReportRequestBean reqBean){
		
		return UserRetainedReportDao.getUserRetainedReportDao(reqBean);
	} 
}
