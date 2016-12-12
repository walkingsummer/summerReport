<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>日期选择器</title>
<link rel="stylesheet" href="../../css/jquery.cxcalendar.css">
<style>
body {
	background: #ddd;
	font: 14px/1.7 tahoma, '\5fae\8f6f\96c5\9ed1', sans-serif;
}

input,select,button {
	padding: 0.5em;
}

</style>

</head>
<body>

	<label for="date">选择日期：</label> 
	<input id="date" type="text" value="2016-12-31" readonly>

	<script src="http://cdn.staticfile.org/jquery/2.1.1-rc2/jquery.min.js"></script>
	<script src="../../js/jquery.cxcalendar.min.js"></script>
	<script src="../../js/jquery.cxcalendar.languages.js"></script>
	<script>
		
		// 在 value 中有默认值
		$('#date').cxCalendar();

	</script>

</body>
</html>
