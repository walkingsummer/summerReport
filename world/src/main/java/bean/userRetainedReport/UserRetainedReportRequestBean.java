package bean.userRetainedReport;

import java.util.Date;
import java.util.List;

public class UserRetainedReportRequestBean {
	private Date mStartDate;
	private Date mMiddleDate;
	private Date mEndDate;
	private String mChannelName;
	private List<String> mClientTypeList;
	private String mProvince;
	
	public UserRetainedReportRequestBean(){
		
	}
	

	public Date getmMiddleDate() {
		return mMiddleDate;
	}


	public void setmMiddleDate(Date mMiddleDate) {
		this.mMiddleDate = mMiddleDate;
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

	public String getmProvince() {
		return mProvince;
	}

	public void setmProvince(String mProvince) {
		this.mProvince = mProvince;
	}
	
}
