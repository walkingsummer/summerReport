<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>销售管理平台报表系统登录页面</title>
	</head>
	
	<body>
	
		<%
			//这里有个小bug（目前还不知道怎么解决）：如果第一次登陆的时候发生错误(resultcode!=0)，而第二次登陆成功(resultcode=0)了，
			//那么从登陆成功界面后退到登陆界面的时候，会提示第一次登陆时发生的错误，估计因为是登陆的状态码resultcode也被回退到了之前的状态
			Integer resultcode=-1;
			try{
				resultcode = (Integer)session.getAttribute("resultcode");
			}catch(Exception e){}
			
			if(resultcode==null){
				resultcode = -1;
				session.setAttribute("resultcode", resultcode);	
			}else{
				if(resultcode==1){
					session.setAttribute("resultcode", -1);		//下次刷新页面的时候不会
		%>
		
		<script type="text/javascript">
			alert("用户不存在");
		</script>
		
		<%	
				} else if(resultcode==2){
					session.setAttribute("resultcode", -1);
				
		%>
		
		<script type="text/javascript">
			alert("密码错误");
		</script>
		
		<%	
					
				} else if(resultcode==3){
					session.setAttribute("resultcode", -1);
		%>
		
		<script type="text/javascript">
			alert("系统错误");
		</script>
		
		<%
				}
			}
		%>
	
		<form name="loginForm" method="post" action="/helloworld/jsp/reportUserLogin/judgeReportUser.jsp">
			<table>
				<tr>
					<td>用户名:<input type="text" name="username" id="username"></td>
				</tr>
				<tr>
					<td>密码:<input type="password" name="password" id="password"></td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="登录" style="background-color:blue">  
						<input type="reset" value="重置" style="background-color:red">
					</td>     
				</tr>
			</table>
		</form>
		
	</body>
	
</html>