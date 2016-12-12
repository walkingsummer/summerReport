<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date, java.util.ArrayList, java.util.List,
	bean.generalReport.GeneralReportResponseBean, bean.generalReport.GeneralReportRequestBean, 
	service.GeneralReportService, bean.generalReport.GeneralReportTableColumnsBean" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<title>general report table</title>
		
		<script src="../../js/table2excel.js"></script>
		
		<script language="JavaScript">
		
			function tableShows(){
				var tableId = document.getElementById("tab"); 
				if(!<%=request.getParameter("registerCounts")%>){
					for(var i=0;i<tableId.rows.length;i++) 
					{ 
						tableId.rows[i].cells[1].style='display:none';
					}	
				}
				if(!<%=request.getParameter("newLogCounts")%>){
					for(var i=0;i<tableId.rows.length;i++) 
					{ 
						tableId.rows[i].cells[2].style='display:none';
					}	
				}
				if(!<%=request.getParameter("newRecommendCounts")%>){
					for(var i=0;i<tableId.rows.length;i++) 
					{ 
						tableId.rows[i].cells[3].style='display:none';
					}	
				}
				if(!<%=request.getParameter("newOrderCounts")%>){
					for(var i=0;i<tableId.rows.length;i++) 
					{ 
						tableId.rows[i].cells[4].style='display:none';
					}	
				}
				if(!<%=request.getParameter("dayRecommendCounts")%>){
					for(var i=0;i<tableId.rows.length;i++) 
					{ 
						tableId.rows[i].cells[5].style='display:none';
					}	
				}
				if(!<%=request.getParameter("dayOrderCounts")%>){
					for(var i=0;i<tableId.rows.length;i++) 
					{ 
						tableId.rows[i].cells[6].style='display:none';
					}	
				}
				if(!<%=request.getParameter("dayLogCounts")%>){
					for(var i=0;i<tableId.rows.length;i++) 
					{ 
						tableId.rows[i].cells[7].style='display:none';
					}	
				}
			}
			
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
	
	<body onload="tableShows();">
		
		<%
			GeneralReportRequestBean reqBean = new GeneralReportRequestBean();	
		
			//获取日期
			SimpleDateFormat sdf = new SimpleDateFormat ("yyyy-MM-dd");
			String date = request.getParameter("date");
			Date fmtDate = sdf.parse(date);
			//获取渠道和客户端类型
			String channelName = request.getParameter("channelNameOptions");
			String clientType = request.getParameter("clientTypeOptions");
			List<String> clientTypeList = new ArrayList<String>();
			String clientTypes[] = clientType.split("\\-");
			for(String s:clientTypes){
				clientTypeList.add(s);
			}
			//获取需要展示的列名称
			GeneralReportTableColumnsBean grtc = new GeneralReportTableColumnsBean();
			grtc.setShowDayLogCounts(Boolean.parseBoolean(request.getParameter("dayLogCounts")));
			grtc.setShowDayOrderCounts(Boolean.parseBoolean(request.getParameter("dayOrderCounts")));
			grtc.setShowDayRecommendCounts(Boolean.parseBoolean(request.getParameter("dayRecommendCounts")));
			grtc.setShowNewLogCounts(Boolean.parseBoolean(request.getParameter("newLogCounts")));
			grtc.setShowNewOrderCounts(Boolean.parseBoolean(request.getParameter("newOrderCounts")));
			grtc.setShowNewRecommendCounts(Boolean.parseBoolean(request.getParameter("newRecommendCounts")));
			grtc.setShowRegisterCounts(Boolean.parseBoolean(request.getParameter("registerCounts")));
			
			//将以上获取到的数据放入请求体，向服务器发出请求
			reqBean.setmDate(fmtDate);
			reqBean.setmClientTypeList(clientTypeList);
			reqBean.setmChannelName(channelName);
			reqBean.setGeneralReportTableColumnsBean(grtc);
			
			ArrayList<GeneralReportResponseBean> list = GeneralReportService.getGeneralReportListService(reqBean);
			
		%>
		
		<h2 align="center">总体报表</h2>
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
		</div>
		<br/>
		
		<table id="tab" align='center'>
			<tr>
				<th>时间</th>
				<th>新增注册</th>
				<th>新增登陆</th>
				<th>新增推荐</th>
				<th>新增成交</th>
				<th>日推荐总量</th>
				<th>日成交总量</th>
				<th>日登陆用户总数</th>
			</tr>
			
			<%
				for(int i=0; i<list.size(); i++) {
			%>
			<tr align="center">
				<td> <%=sdf.format(list.get(i).getmDate()) %> </td>
				<td> <%=list.get(i).getmRegisterCounts() %> </td>
				<td> <%=list.get(i).getmNewLogCounts() %> </td>
				<td> <%=list.get(i).getmNewRecommendCounts() %> </td>
				<td> <%=list.get(i).getmNewOrderCounts() %> </td>
				<td> <%=list.get(i).getmDayRecommendCounts() %> </td>
				<td> <%=list.get(i).getmDayOrderCounts() %> </td>
				<td> <%=list.get(i).getmDayLogCounts() %> </td>
			</tr>
			<%
				}
			%>
			
		</table>
		
		<a download="总体报表.xls" href="#" onclick="return table2excel.excel(this, 'tab', '总体报表');">Export to Excel</a>
		
		
	</body>
</html>