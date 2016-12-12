<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>general report</title>
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
		
		<h3>分业务月报表</h3>
		
		
		<div class="myhighlight" style="float:left;"> 选择日期: </div>
		<div style="float:left;">年</div>
		<form style="float:left;">
			<select name="yearSelect"> 
				<option value="2015">2015</option> 
				<option value="2016">2016</option> 
				<option value="2017">2017</option> 
				<option value="2018">2018</option> 
			</select> 
		</form> 
		<div style="float:left;">&nbsp月</div>
		<form style="float:left;">
			<select name="monthSelect"> 
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
		</form> 
		<div style="float:left;">&nbsp日</div>
		<form style="float:left;">
			<select name="daySelect"> 
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
		</form> 
		
		<div class="myhighlight" style="float:left;"> &nbsp&nbsp客户端类型: </div>
		<form style="float:left;">
			<select name="clientType"> 
				<option value="H5Only">H5</option> 
				<option value="clientoOly">客户端</option> 
				<option value="H5AndClient">H5+客户端</option> 
				<option value=""></option> 
			</select> 
		</form> 
		
		<div class="myhighlight" style="float:left;"> &nbsp&nbsp渠道名称: </div>
		<form style="float:left;">
			<select name="channelName"> 
				<option value="commonChannel">大众版勤工</option> 
				<option value="shandongChannel">分省版山东</option> 
				<option value="sichuanChannel">分省版四川</option> 
				<option value="jifenChannel">积分商城</option> 
			</select> 
		</form>
		
		<div style="clear:both"></div><!-- 清除float模式 -->
		<br/>
	
		<div>输出字段选择：<label><input type="checkbox" name="selectAll"/>全选</label></div>
		<div class="mybox">
			<label><input type="checkbox" name="colname" value=""/> 1.客户端类型 </label>
			<label><input type="checkbox" name="colname" value=""/> 2.时间 </label>
			<label><input type="checkbox" name="colname" value=""/> 3.新增注册 </label>
			<label><input type="checkbox" name="colname" value=""/> 4.新增登陆 </label>
			<label><input type="checkbox" name="colname" value=""/> 5.新增推荐 </label>
			<label><input type="checkbox" name="colname" value=""/> 6.新增成交 </label>
			<label><input type="checkbox" name="colname" value=""/> 7.日推荐总量 </label>
			<label><input type="checkbox" name="colname" value=""/> 8.日成交总量 </label>
			<label><input type="checkbox" name="colname" value=""/> 9.日登陆总用户数 </label>
		</div>
	
		<br/>
		
		<input type="button" value="提交查询"/> &nbsp&nbsp
		<input type="button" value="导出"/>
		
	</body>
</html>