package bean.generalReport;

import java.util.Date;

public class OrderFile {
	
	private int oid;
	private String recommendUsername;
	private String orderUsername;
	private Date orderDate;
	private String clientType;
	private String channelName;
	private String business;
	
	public OrderFile(){}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public String getRecommendUsername() {
		return recommendUsername;
	}

	public void setRecommendUsername(String recommendUsername) {
		this.recommendUsername = recommendUsername;
	}

	public String getOrderUsername() {
		return orderUsername;
	}

	public void setOrderUsername(String orderUsername) {
		this.orderUsername = orderUsername;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
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

	public String getBusiness() {
		return business;
	}

	public void setBusiness(String business) {
		this.business = business;
	}

		
}
