<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<title>user retained report</title>
		
		<script language="JavaScript">
			function setProvinceMap(){
				document.write("hello");
				var provinceOptions = document.getElementById('provinceSelect');//获得渠道名称
				for(var i=0; i<provinceOptions.length; i++){
					document.write(provinceOptions.options[i].value);
				}
				document.write("world");
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
		table tr:nth-child(odd){
			background: #ccc;
		}
		body {
			margin:20px;padding:10px;
			background: #ddd;
		}
			
	</style>
	
	<body>
		
		&nbsp;&nbsp;省份: 
		<select id="provinceSelect"> 
			<option value="provinceShanDong" selected>山东省</option> 
			<option value="provinceJiangXi">江西省</option> 
			<option value="provinceSiChuan">四川省</option> 
			<option value="provinceFuJian">福建省</option>
			<option value="provinceGuangDong">广东省</option>
			<option value="provinceGuangXi"> 广西 </option>
			<option value="provinceGuiZhou"> 贵州省 </option>
			<option value="provinceYunNan"> 云南省 </option>
			<option value="provinceHuNan"> 湖南省 </option>
			<option value="provinceHuBei"> 湖北省 </option>
			<option value="provinceChongQing"> 重庆市 </option>
			<option value="provinceXinJiang"> 新疆 </option>
			<option value="provinceXiZang"> 西藏 </option>
			<option value="provinceSshanXi"> 陕西省 </option>
			<option value="provinceShanXi"> 山西省 </option>
			<option value="provinceShangHai"> 上海市 </option>
			<option value="provinceJiangSu"> 江苏省 </option>
			<option value="provinceZheJiang"> 浙江省 </option>
			<option value="provinceAnHui"> 安徽省 </option>
			<option value="provinceNeiMengGu"> 内蒙古 </option>
			<option value="provinceGanSu"> 甘肃 </option>
			<option value="provinceLiaoNing"> 辽宁省 </option>
			<option value="provinceJiLin"> 吉林省 </option>
			<option value="provinceHeiLongJiang"> 黑龙江 </option>
			<option value="provinceHeNan"> 河南省 </option>
			<option value="provinceHeBei"> 河北省 </option>
			<option value="provinceBeiJing"> 北京市 </option>
			<option value="provinceQingHai"> 青海省 </option>
			<option value="provinceTianJin"> 天津市 </option>
			<option value="provinceHaiNan"> 海南省 </option>
			<option value="provinceHongKong"> 香港 </option>
			<option value="provinceMacao"> 澳门 </option>
			<option value="provinceTaiWan"> 台湾 </option>
			<option value="provinceNingXia"> 宁夏 </option>
		</select> 

		<script>
			//setProvinceMap();
		</script>
		
	</body>
</html>