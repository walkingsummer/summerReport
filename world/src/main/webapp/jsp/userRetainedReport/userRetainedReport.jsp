<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<title>user retained report</title>
		
		<script language="JavaScript">
		
			function jump(){
				var channelNameOptions = document.getElementById('channelNameOptions');//获得渠道名称
				var channelNameValue = channelNameOptions.options[channelNameOptions.selectedIndex].value;//获得选中的option的value
				
				var clientTypeOptions = document.getElementById('clientTypeOptions');//获得客户端类型
				var clientTypeValue = clientTypeOptions.options[clientTypeOptions.selectedIndex].value;//获得选中的option的value
				
				var month = document.getElementById("month").value;
				var year = document.getElementById("year").value;
				
				var provinceOptions = document.getElementById('provinceSelect');//获得省份
				var province = provinceOptions.options[provinceOptions.selectedIndex];
				var provinceName = province.value;
				var provinceValue = encodeURIComponent(encodeURIComponent(province.innerHTML));		
				//需要”两次“编码的原因：后台java代码赋值的时候，本身已经使用了一次解码，不过解码的结果依然不对。
				//所以我们可以在页面上进行两次编码操作，这样后台自动的那次就可以抵消掉一次,
				//所以我们取值的时候只需要进行一次手动解码即可： java.net.URLDecoder.decode(provinceValue,"UTF-8")
				
				var str = "userRetainedReportTable.jsp";
				str = str+"?"+"channelNameOptions"+"="+channelNameValue;
				str = str+"&"+"year"+"="+year;
				str = str+"&"+"month"+"="+month;
				str = str+"&"+"clientTypeOptions"+"="+clientTypeValue;
				str = str+"&"+"provinceName"+"="+provinceName;
				str = str+"&"+"provinceValue"+"="+provinceValue;
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
		<h2 align="center">用户留存表</h2>
		<br/>
		
		<div style="clear:both"></div><!-- 清除float模式 -->
		<br/>
		
		<div style="float:left" class="myhighlight">
			<jsp:include  page="../usage/monthSelect.jsp"/>
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
		
		<div class="myhighlight" style="float:left;"> 
			<jsp:include page="../usage/provinces.jsp" />
		</div>
		
		<div style="clear:both"></div><!-- 清除float模式 -->
		<br/>
	
		<input type="button" value="提交查询" onclick="jump()"/> &nbsp;&nbsp;
		<br/>
		
		
		
	</body>
</html>