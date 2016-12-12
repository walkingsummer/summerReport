package service;

import bean.reportUser.ReportUser;
import dao.ReportUserLoginDao;

public class ReportUserLoginService {
	public static Integer judgeReportUser(String username, String password){
		ReportUser reportUser = ReportUserLoginDao.getReportUser(username);
		if(reportUser==null){
			return 1;		//不存在该用户名
		}
		String passwordFromDB = reportUser.getPassword();
		if(!passwordFromDB.equals(password)){
			return 2;		//密码不正确
		}
		return 0;			//验证通过
	}
}
