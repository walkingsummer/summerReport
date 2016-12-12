package bean.generalReport;

import java.util.Date;
import java.util.List;


public class GeneralReportResponseBean {

	
	private Integer mRegisterCounts;
	private Integer mNewLogCounts;
	private Integer mNewRecommendCounts;
	private Integer mNewOrderCounts;
	private Integer mDayRecommendCounts;
	private Integer mDayOrderCounts;
	private Integer mDayLogCounts;
	private Date mDate;
	private String mChannelName;
	private List<String> mClientTypeList;
	
	public GeneralReportResponseBean(){}

	public Integer getmRegisterCounts() {
		return mRegisterCounts;
	}

	public void setmRegisterCounts(Integer mRegisterCounts) {
		this.mRegisterCounts = mRegisterCounts;
	}

	public Integer getmNewLogCounts() {
		return mNewLogCounts;
	}

	public void setmNewLogCounts(Integer mNewLogCounts) {
		this.mNewLogCounts = mNewLogCounts;
	}

	public Integer getmNewRecommendCounts() {
		return mNewRecommendCounts;
	}

	public void setmNewRecommendCounts(Integer mNewRecommendCounts) {
		this.mNewRecommendCounts = mNewRecommendCounts;
	}

	public Integer getmNewOrderCounts() {
		return mNewOrderCounts;
	}

	public void setmNewOrderCounts(Integer mNewOrderCounts) {
		this.mNewOrderCounts = mNewOrderCounts;
	}

	public Integer getmDayRecommendCounts() {
		return mDayRecommendCounts;
	}

	public void setmDayRecommendCounts(Integer mDayRecommendCounts) {
		this.mDayRecommendCounts = mDayRecommendCounts;
	}

	public Integer getmDayOrderCounts() {
		return mDayOrderCounts;
	}

	public void setmDayOrderCounts(Integer mDayOrderCounts) {
		this.mDayOrderCounts = mDayOrderCounts;
	}

	public Integer getmDayLogCounts() {
		return mDayLogCounts;
	}

	public void setmDayLogCounts(Integer mDayLogCounts) {
		this.mDayLogCounts = mDayLogCounts;
	}

	public Date getmDate() {
		return mDate;
	}

	public void setmDate(Date mDate) {
		this.mDate = mDate;
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

	
	
}
