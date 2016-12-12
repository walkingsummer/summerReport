package bean.generalReport;

import java.util.Date;
import java.util.List;

public class GeneralReportRequestBean {

	private String mChannelName;
	private List<String> mClientTypeList;
	private Date mDate;
	private GeneralReportTableColumnsBean generalReportTableColumnsBean;
	
	public GeneralReportRequestBean(){
		
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

	public Date getmDate() {
		return mDate;
	}

	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}

	public GeneralReportTableColumnsBean getGeneralReportTableColumnsBean() {
		return generalReportTableColumnsBean;
	}

	public void setGeneralReportTableColumnsBean(
			GeneralReportTableColumnsBean generalReportTableColumnsBean) {
		this.generalReportTableColumnsBean = generalReportTableColumnsBean;
	}
	
	
}
