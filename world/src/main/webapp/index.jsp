<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
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
			color:blue;
			font-size:30;
			font-style:italic;
		}
		body {margin:20px;padding:10px;}
	</style>
	

	<body>
		
		
		<jsp:forward page="jsp/reportUserLogin/reportUserLogin.jsp"/>
		
		
		<%
		//	session.setMaxInactiveInterval(10);
		//	session.setAttribute("resultcode", -1);
		//	response.sendRedirect("jsp/reportUserLogin/reportUserLogin.jsp");
		//	request.getRequestDispatcher("jsp/reportUserLogin/reportUserLogin.jsp").forward(request, response);
		%>	
		
		<!-- 
			奇怪问题记录：这里的页面跳转使用标签可以正常跳转，但是如果使用java语句就无法找到页面，原因未知
		 -->
		
	</body>
</html>
