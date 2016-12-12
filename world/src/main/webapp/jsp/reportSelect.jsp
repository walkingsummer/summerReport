<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>report select</title>
	</head>
	
	<style type="text/css">
		.mycontent{
			font-family:"Microsoft YaHei";
			font-size:"200";
			color:red;
		}
		.myhighlight{
			font-weight:bold;
			color:green;
			font-size:18;
			font-style:italic;
		}
		.mybox{
			height:50px;
			position:relative;
			border:1px solid;
		}
		body {margin:20px;padding:10px;}
	</style>
	
	<body>
		<h1>销售管理平台报表系统</h1>
		
		<a href="generalReport/generalReport.jsp">总体报表</a><br/>
		<a href="userRetainedReport/userRetainedReport.jsp">用户留存表</a><br/>
		
	</body>
	
</html>