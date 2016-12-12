package dao;

import mapper.UserRetainedReportMapper;
import tools.MapperTool;
import bean.userRetainedReport.UserRetainedReportRequestBean;
import bean.userRetainedReport.UserRetainedReportResponseBean;

public class UserRetainedReportDao {
	
	public static UserRetainedReportResponseBean getUserRetainedReportDao(UserRetainedReportRequestBean reqBean){
		UserRetainedReportResponseBean respBean = new UserRetainedReportResponseBean();
		UserRetainedReportMapper mapper = MapperTool.getUserRetainedReportMapper();
		
		respBean.setmChannelName(reqBean.getmChannelName());
		respBean.setmClientTypeList(reqBean.getmClientTypeList());
		respBean.setmStartDate(reqBean.getmStartDate());
		respBean.setmMiddleDate(reqBean.getmMiddleDate());
		respBean.setmEndDate(reqBean.getmEndDate());
		respBean.setmProvince(reqBean.getmProvince());
		respBean.setmLogRetainedCounts(mapper.getLogRetainedCounts(reqBean));
		respBean.setmOrderRetainedCounts(mapper.getOrderRetainedCounts(reqBean));
		respBean.setmRecommendRetainedCounts(mapper.getRecommendRetainedCounts(reqBean));
		return respBean;
		
	}
}
