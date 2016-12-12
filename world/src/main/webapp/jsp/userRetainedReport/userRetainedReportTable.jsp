<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date, java.util.ArrayList, java.util.List,
	bean.userRetainedReport.*, tools.*, service.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<title>user retained report table</title>
		
		<script src="../../js/table2excel.js"></script>
		
		<script language="JavaScript">
		
			
			
		</script>
		
	</head>
	
	<style type="text/css">
		.myhighlight{
			font-weight:bold;
			color:blue;
			font-size:20;
		}
		.mybox{
			height:50px;
			position:relative;
			border:1px solid;
		}
		table tr:nth-child(even){
			background: #aaa;
		}
		body {
			margin:20px;padding:10px;
			background: #ddd;
		}
	</style>
	
	<body>
		
		<%
			UserRetainedReportRequestBean reqBean = new UserRetainedReportRequestBean();	
		
			//获取日期
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
			String provinceName = request.getParameter("provinceName");
			String provinceValue = request.getParameter("provinceValue");
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			Date startDate = Tools.getFirstDayOfLastMonth(year, month);
			Date middleDate = Tools.getFirstDayOfMonth(year, month);
			Date endDate = Tools.getFirstDayOfNextMonth(year, month);
			//获取渠道和客户端类型
			String channelName = request.getParameter("channelNameOptions");
			String clientType = request.getParameter("clientTypeOptions");
			List<String> clientTypeList = new ArrayList<String>();
			String clientTypes[] = clientType.split("\\-");
			for(String s:clientTypes){
				clientTypeList.add(s);
			}
			
			//将以上获取到的数据放入请求体，向服务器发出请求
			reqBean.setmStartDate(startDate);
			reqBean.setmMiddleDate(middleDate);
			reqBean.setmEndDate(endDate);
			reqBean.setmClientTypeList(clientTypeList);
			reqBean.setmChannelName(channelName);
			reqBean.setmProvince(provinceName);
			
			UserRetainedReportResponseBean respBean = UserRetainedReportService.getUserRetainedReport(reqBean);
			
			
		%>
		
		<h2 align="center">用户留存表</h2>
		<br/>
		
		<div align="center">
			渠道名称：
			<%
				String str = channelName;
				if("commonChannel".equals(str)){
					out.println("大众版勤工");
				}else if("shandongChannel".equals(str)){
					out.println("山东版勤工");
				}else if("sichuanChannel".equals(str)){
					out.println("四川版勤工");
				}else if("jifenChannel".equals(str)){
					out.println("积分商城");
				}
			%> 
			&nbsp;&nbsp;客户端类型：
			<%
				String str2 = clientType;
				if("H5".equals(str2)){
					out.println("H5页面");
				}else if("Android".equals(str2)){
					out.println("安卓客户端");
				}else{
					out.println("H5页面和安卓客户端");
				}
			%> 
			&nbsp;&nbsp;省份：
			<%=java.net.URLDecoder.decode(provinceValue,"UTF-8")%>
			
		</div>
		<br/>
		
		<table id="tab" align='center'>
			<tr>
				<th>时间</th>
				<th>登陆留存</th>
				<th>推荐留存</th>
				<th>订购留存</th>
			</tr>
			
			<tr align="center">
				<td><%=sdf.format(respBean.getmMiddleDate()) %></td>
				<td><%=respBean.getmLogRetainedCounts() %></td>
				<td><%=respBean.getmRecommendRetainedCounts() %></td>
				<td><%=respBean.getmOrderRetainedCounts() %></td>
			</tr>
			
			
		</table>
		
		<a download="用户留存表.xls" href="#" onclick="return table2excel.excel(this, 'tab', '用户留存表');">Export to Excel</a>
		
	</body>
</html>