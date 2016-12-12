package bean.userRetainedReport;

import java.util.Date;
import java.util.List;

public class UserRetainedReportResponseBean {
	private String mChannelName;
	private List<String> mClientTypeList;
	private Date mStartDate;
	private Date mMiddleDate;
	private Date mEndDate;
	private String mProvince;
	private Integer mLogRetainedCounts;
	private Integer mRecommendRetainedCounts;
	private Integer mOrderRetainedCounts;
	
	public UserRetainedReportResponseBean(){
		
	}

	public Date getmMiddleDate() {
		return mMiddleDate;
	}

	public void setmMiddleDate(Date mMiddleDate) {
		this.mMiddleDate = mMiddleDate;
	}

	public String getmChannelName() {
		return mChannelName;
	}

	public void setmChannelName(String mChannelName) {
		this.mChannelName = mChannelName;
	}

	public List<String> getmClientTypeList() {
		return mClientTypeList;
	}

	public void setmClientTypeList(List<String> mClientTypeList) {
		this.mClientTypeList = mClientTypeList;
	}

	public Date getmStartDate() {
		return mStartDate;
	}

	public void setmStartDate(Date mStartDate) {
		this.mStartDate = mStartDate;
	}

	public Date getmEndDate() {
		return mEndDate;
	}

	public void setmEndDate(Date mEndDate) {
		this.mEndDate = mEndDate;
	}

	public String getmProvince() {
		return mProvince;
	}

	public void setmProvince(String mProvince) {
		this.mProvince = mProvince;
	}

	public Integer getmLogRetainedCounts() {
		return mLogRetainedCounts;
	}

	public void setmLogRetainedCounts(Integer mLogRetainedCounts) {
		this.mLogRetainedCounts = mLogRetainedCounts;
	}

	public Integer getmRecommendRetainedCounts() {
		return mRecommendRetainedCounts;
	}

	public void setmRecommendRetainedCounts(Integer mRecommendRetainedCounts) {
		this.mRecommendRetainedCounts = mRecommendRetainedCounts;
	}

	public Integer getmOrderRetainedCounts() {
		return mOrderRetainedCounts;
	}

	public void setmOrderRetainedCounts(Integer mOrderRetainedCounts) {
		this.mOrderRetainedCounts = mOrderRetainedCounts;
	}
	
		
}
