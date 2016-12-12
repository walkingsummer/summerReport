<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<title>general report</title>
		
		<script language="JavaScript">
		
			function jump(){
				
				var channelNameOptions = document.getElementById('channelNameOptions');//获得渠道名称
				var channelNameValue = channelNameOptions.options[channelNameOptions.selectedIndex].value;//获得选中的option的value
				
				var yearSelectOptions = document.getElementById('yearSelectOptions');//获得年份
				var yearSelectValue = yearSelectOptions.options[yearSelectOptions.selectedIndex].value;//获得选中的option的value
				
				var monthSelectOptions = document.getElementById('monthSelectOptions');//获得月份
				var monthSelectValue = monthSelectOptions.options[monthSelectOptions.selectedIndex].value;//获得选中的option的value
				
				var daySelectOptions = document.getElementById('daySelectOptions');//获得日期数
				var daySelectValue = daySelectOptions.options[daySelectOptions.selectedIndex].value;//获得选中的option的value
				
				var clientTypeOptions = document.getElementById('clientTypeOptions');//获得客户端类型
				var clientTypeValue = clientTypeOptions.options[clientTypeOptions.selectedIndex].value;//获得选中的option的value
				
				var items = document.getElementsByName('colname');//获得所有选项
				var selectItems="";
				for(var i=0;i<items.length;i++){
					selectItems = selectItems + "&" + items[i].value + "=" + items[i].checked;
				}
				
				var str = "generalReportTable.jsp";
				str = str+"?"+"channelNameOptions"+"="+channelNameValue;
				str = str+"&"+"yearSelectOptions"+"="+yearSelectValue;
				str = str+"&"+"monthSelectOptions"+"="+monthSelectValue;
				str = str+"&"+"daySelectOptions"+"="+daySelectValue;
				str = str+"&"+"clientTypeOptions"+"="+clientTypeValue;
				str = str+selectItems;
				//alert(str);
				window.location.href = str;
				
			}
			
			function setOrCancelAllItems(){
				var flag = true;
				var y=document.getElementsByTagName("input");
				for(var i=0; i<y.length; i++){
					if(y[i].type=="checkbox" && y[i].name=="selectAll"){
						if(y[0].checked == false){
							flag=false;
						}
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
		body {margin:20px;padding:10px;}
	</style>
	
	<body>
		<h2 align="center">总体报表</h2>
		<br/>
		
		<div style="clear:both"></div><!-- 清除float模式 -->
		<br/>
		
		<div class="myhighlight" style="float:left;"> 选择日期: </div>		<!-- 这里有个小bug，每个月都可以选择31号咯~ -->
		
		<div style="float:left">
			<jsp:include  page="jsp/usage/dateSelect.jsp"/>
		</div>
		
		
		<div style="float:left;">年
			<select id="yearSelectOptions"> 
				<option value="2015">2015</option> 
				<option value="2016">2016</option> 
				<option value="2017">2017</option> 
				<option value="2018">2018</option> 
			</select> 
		</div>
		
		<div style="float:left;">月
			<select id="monthSelectOptions"> 
				<option value="1">1</option> 
				<option value="2">2</option> 
				<option value="3">3</option> 
				<option value="4">4</option> 
				<option value="5">5</option> 
				<option value="6">6</option> 
				<option value="7">7</option> 
				<option value="8">8</option> 
				<option value="9">9</option> 
				<option value="10">10</option> 
				<option value="11">11</option> 
				<option value="12">12</option> 
			</select> 
		</div>
			
		<div style="float:left;">&nbsp;日
			<select id="daySelectOptions"> 
				<option value="1">1</option> 
				<option value="2">2</option> 
				<option value="3">3</option> 
				<option value="4">4</option> 
				<option value="5">5</option> 
				<option value="6">6</option> 
				<option value="7">7</option> 
				<option value="8">8</option> 
				<option value="9">9</option> 
				<option value="10">10</option> 
				<option value="11">11</option> 
				<option value="12">12</option> 
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select>
		</div> 
		
		<div class="myhighlight" style="float:left;"> &nbsp;&nbsp;客户端类型: 
			<select id="clientTypeOptions"> 
				<option value="H5">H5页面</option> 
				<option value="Android">安卓客户端</option> 
				<option value="H5-Android">H5页面和安卓客户端</option> 
			</select> 
		</div>
		
		<div class="myhighlight" style="float:left;"> &nbsp;&nbsp;渠道名称: 
			<select id="channelNameOptions"> 
				<option value="commonChannel">大众版勤工</option> 
				<option value="shandongChannel">分省版山东</option> 
				<option value="sichuanChannel">分省版四川</option> 
				<option value="jifenChannel">积分商城</option> 
			</select> 
		</div>
		
		<div style="clear:both"></div><!-- 清除float模式 -->
		<br/>
	
		<div>输出字段选择：<label><input type="checkbox" name="selectAll" value="selectAllItems" onclick="setOrCancelAllItems()"/>全选</label></div>
		<div class="mybox" id="selectItems">
			<label><input type="checkbox" name="colname" value="registerCounts"/> 1.新增注册 </label>
			<label><input type="checkbox" name="colname" value="newLogCounts"/> 2.新增登陆 </label>
			<label><input type="checkbox" name="colname" value="newRecommendCounts"/> 3.新增推荐 </label>
			<label><input type="checkbox" name="colname" value="newOrderCounts"/> 4.新增成交 </label>
			<label><input type="checkbox" name="colname" value="dayRecommendCounts"/> 5.日推荐总量 </label>
			<label><input type="checkbox" name="colname" value="dayOrderCounts"/> 6.日成交总量 </label>
			<label><input type="checkbox" name="colname" value="dayLogCounts"/> 7.日登陆总用户数 </label>
		</div>
		<br/>
		
		
		
		<input type="button" value="提交查询" onclick="jump()"/> &nbsp;&nbsp;
		<br/>
		
		
		
	</body>
</html>