package bean.generalReport;

import java.util.Date;

public class RecommendFile {
	
	private int rid;
	private String srcUsername;
	private String destUsername;
	private Date recommendDate;
	private String clientType;
	private String channelName;
	private String business;
	
	public String getBusiness() {
		return business;
	}

	public void setBusiness(String business) {
		this.business = business;
	}

	public RecommendFile(){}

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getSrcUsername() {
		return srcUsername;
	}

	public void setSrcUsername(String srcUsername) {
		this.srcUsername = srcUsername;
	}

	public String getDestUsername() {
		return destUsername;
	}

	public void setDestUsername(String destUsername) {
		this.destUsername = destUsername;
	}

	public Date getRecommendDate() {
		return recommendDate;
	}

	public void setRecommendDate(Date recommendDate) {
		this.recommendDate = recommendDate;
	}

	public String getClientType() {
		return clientType;
	}

	public void setClientType(String clientType) {
		this.clientType = clientType;
	}

	public String getChannelName() {
		return channelName;
	}

	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}

	
}
