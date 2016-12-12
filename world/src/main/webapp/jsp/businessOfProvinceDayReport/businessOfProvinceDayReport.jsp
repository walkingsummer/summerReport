<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<title>business of province day report</title>
		
		<script language="JavaScript">
		
			function jump(){
				var channelNameOptions = document.getElementById('channelNameOptions');//获得渠道名称
				var channelNameValue = channelNameOptions.options[channelNameOptions.selectedIndex].value;//获得选中的option的value
				
				var clientTypeOptions = document.getElementById('clientTypeOptions');//获得客户端类型
				var clientTypeValue = clientTypeOptions.options[clientTypeOptions.selectedIndex].value;//获得选中的option的value
				
				var date = document.getElementById("date").value;
				
				var items = document.getElementsByName('colname');//获得所有选项
				var selectItems="";
				for(var i=0;i<items.length;i++){
					selectItems = selectItems + "&" + items[i].value + "=" + items[i].checked;
				}
				
				var str = "generalReportTable.jsp";
				str = str+"?"+"channelNameOptions"+"="+channelNameValue;
				str = str+"&"+"date"+"="+date;
				str = str+"&"+"clientTypeOptions"+"="+clientTypeValue; 
				str = str+selectItems;
				//alert(str);
				window.location.href = str;
				
			}
			
			function setOrCancelAllItems(){
				var flag = true;
				var y=document.getElementsByTagName("input");
				for(var i=0; i<y.length; i++){
					if(y[i].type=="checkbox" && y[i].name=="itemsSelect"){
						flag=y[i].checked;
						break;
					}
				}
				for(var i=0;i<y.length;i++){
					if(y[i].type == "checkbox" && y[i].name=="colname"){
						y[i].checked = flag;							
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
		table tr:nth-child(odd){
			background: #ccc;
		}
		body {
			margin:20px;padding:10px;
			background: #ddd;
		}
			
	</style>
	
	<body>
		<h2 align="center">总体报表</h2>
		<br/>
		
		<div style="clear:both"></div><!-- 清除float模式 -->
		<br/>
		
		<div style="float:left" class="myhighlight">
			<jsp:include  page="../usage/dateSelect.jsp"/>
		</div>
		
		<div class="myhighlight" style="float:left;"> &nbsp;&nbsp;客户端类型: 
			<select id="clientTypeOptions"> 
				<option value="H5" selected>H5页面</option> 
				<option value="Android">安卓客户端</option> 
				<option value="H5-Android">H5页面和安卓客户端</option> 
			</select> 
		</div>
		
		<div class="myhighlight" style="float:left;"> &nbsp;&nbsp;渠道名称: 
			<select id="channelNameOptions"> 
				<option value="commonChannel" selected>大众版勤工</option> 
				<option value="shandongChannel">分省版山东</option> 
				<option value="sichuanChannel">分省版四川</option> 
				<option value="jifenChannel">积分商城</option> 
			</select> 
		</div>
		
		<div style="clear:both"></div><!-- 清除float模式 -->
		<br/>
	
		<div>输出字段选择：<label><input type="checkbox" name="itemsSelect" checked="checked" onclick="setOrCancelAllItems()"/>全选</label></div>
		<div class="mybox" id="selectItems">
			<label><input type="checkbox" name="colname" checked="checked" value="registerCounts"/> 1.新增注册 </label>
			<label><input type="checkbox" name="colname" checked="checked" value="newLogCounts"/> 2.新增登陆 </label>
			<label><input type="checkbox" name="colname" checked="checked" value="newRecommendCounts"/> 3.新增推荐 </label>
			<label><input type="checkbox" name="colname" checked="checked" value="newOrderCounts"/> 4.新增成交 </label>
			<label><input type="checkbox" name="colname" checked="checked" value="dayRecommendCounts"/> 5.日推荐总量 </label>
			<label><input type="checkbox" name="colname" checked="checked" value="dayOrderCounts"/> 6.日成交总量 </label>
			<label><input type="checkbox" name="colname" checked="checked" value="dayLogCounts"/> 7.日登陆总用户数 </label>
		</div>
		<br/>
		
		<input type="button" value="提交查询" onclick="jump()"/> &nbsp;&nbsp;
		<br/>
		
		
		
	</body>
</html>