<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*, service.ReportUserLoginService, tools.MD5Util" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>身份验证</title>
		
	</head>
	<body>
		<p>judge report user </p>
		<%
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			MD5Util md5u = new MD5Util();
			String MD5password = md5u.byte2hex(md5u.encrypt(password).getBytes());
			int resultcode = ReportUserLoginService.judgeReportUser(username, MD5password);
			if(resultcode==0){
				session.setAttribute("resultcode", 0);
				response.sendRedirect("../reportSelect.jsp");
			}else if(resultcode==1){
				session.setAttribute("resultcode", 1);
				response.sendRedirect("reportUserLogin.jsp");
			}else if(resultcode==2){
				session.setAttribute("resultcode", 2);
				response.sendRedirect("reportUserLogin.jsp");
			}else{
				session.setAttribute("resultcode", 3);
				response.sendRedirect("reportUserLogin.jsp");
			}
		%>
		
	</body>
</html> 