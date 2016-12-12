<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>日期选择器</title>

<style>
body {
	background: #ddd;
	font: 14px/1.7 tahoma, '\5fae\8f6f\96c5\9ed1', sans-serif;
}

input{
	padding: 0.3em;
	width: 60;
}

</style>

</head>
<body>

	<label>输入年：<input id="year" type="text" value="2016" /></label>&nbsp;&nbsp;
	<label>输入月：<input id="month" type="text" value="12"/></label> 

</body>
</html>
