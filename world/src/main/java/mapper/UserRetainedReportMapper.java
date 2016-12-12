package mapper;

import bean.userRetainedReport.UserRetainedReportRequestBean;

public interface UserRetainedReportMapper {

	public Integer getLogRetainedCounts(UserRetainedReportRequestBean userRetainedReportRequestBean);
	public Integer getRecommendRetainedCounts(UserRetainedReportRequestBean userRetainedReportRequestBean);
	public Integer getOrderRetainedCounts(UserRetainedReportRequestBean userRetainedReportRequestBean);
}
