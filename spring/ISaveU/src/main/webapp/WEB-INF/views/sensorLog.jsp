<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% String root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="<%=root%>/css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=root%>/rMateChartH5.css" />
<script language="javascript" type="text/javascript"
	src="<%=root%>/rMateChartH5License.js"></script>
<script language="javascript" type="text/javascript"
	src="<%=root%>/rMateIntegrationH5.js"></script>
<script type="text/javascript" src="<%=root%>/theme.js"></script>
<script type="text/javascript" src="<%=root%>/rMateChartH5.js"></script>
<script type="text/javascript" src="<%=root%>/charts.js"></script>
<script language="javascript" type="text/javascript" src="<%=root%>/js1.js"></script>
<script type="text/javascript" src="<%=root%>/charts.js"></script>
<script type="text/javascript" src="<%=root%>/jquery-ui.js"></script>
<script type="text/javascript" src="<%=root%>/jquery-1.12.4.min.js"></script>

<script>

</script>
<style>
.ui-tabs-nav{
	margin:0 0 10px 0;
	padding:0;
	display:table;
}
.ui-tabs-nav *{
	box-sizing:border-box;
}
.ui-tabs-tab{
	float:left;
	color:#666;
	position:relative;
	list-style:none;
	margin-right:4px;
	border:solid 1px #eee;
	border-bottom:none;
}
.ui-tabs-tab:hover{
	color:#222;
	font-weight:bold;
}
.li_select{
	color:#000;
	border-color:#40b2e6;
}
.ui-tabs-anchor{
	float:left;
	color:inherit;
	padding:10px 30px;
	text-decoration:none;
	outline:none;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>관리자 페이지</title>

</head>
<body>
	<div class="wrapper">
		<div class="alert" id="art" >
			화재 발생
			<div id="fireBtn" onclick="closeAlert()">위치확인</div>			
		</div>
		<div class="location" id="lct" onclick="closeLocation()">
			<div id="fire">
			<div id="exts1">
				<div class="shake-freeze" id="ex0">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex1">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex2">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex3">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex4">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex5">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex6">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex7">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex8">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex9">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
				<div class="shake-freeze" id="ex10">
					<img src="./img/extinguisher.png" alt="extinguisher" class="imgEtg" name="etgs1"/>
				</div>
			</div>
			</div>
		</div>
		<div class="header">
			<div class="case" onclick="goReplace('/admin')">
				<img src="<%=root%>/img/logo1.png" alt="logo" class="logo" />
			</div>
		</div>
		<div class="sidebar">
			<div class="menuBtn" >
				<button type="button" class="btn btn-default btn-lg btn-block" onclick="goReplace('/sensor')">
  					<span class="glyphicon glyphicon-tasks" ></span> Sensor Log
				</button>
			</div>
			<div class="menuBtn" >
				<button type="button" class="btn btn-default btn-lg btn-block" onclick="goReplace('/event')">
  					<span class="glyphicon glyphicon-alert" ></span> Envent Log
				</button>
			</div>
			<div class="menuBtn" >
				<button type="button" class="btn btn-default btn-lg btn-block" onclick="goReplace('/stream')">
  					<span class="glyphicon glyphicon-play-circle" ></span> Striming
				</button>
			</div>
			<div class="menuBtn" >
				<button type="button" class="btn btn-default btn-lg btn-block" onclick="goReplace('/hr')">
  					<span class="glyphicon glyphicon-user" ></span> H.R
				</button>
			</div>
			<div class="menuBtn" >
				<button type="button" class="btn btn-default btn-lg btn-block" onclick="goReplace('/ex')">
  					<span class="glyphicon glyphicon-map-marker"></span> Map
				</button>
			</div>
			<input type="button" value="불내기" onclick="showAlert()"/>
		</div>
		<div class="contents">
			<div id="floor1">
				<div class="area" id="a1">
					<div id="content1"
						style="height: 400px; width: 550; position: relative;">
						<div id="content">
							<div id="jqueryTabs">
								<ul>
									<li class="li_select"><a href="#chartHolder1">chart1</a></li>
									<li><a href="#chartHolder2">chart2</a></li>
									<li><a href="#chartHolder3">chart3</a></li>
								</ul>
								<!-- 차트가 삽입될 DIV -->
								<div id="chartHolder1" style="width:850px;height:400px;"></div>
								<div id="chartHolder2" style="width:850px;height:400px;"></div>
								<div id="chartHolder3" style="width:850px;height:400px;"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="area" id="a2">
					<div id="content2"
						style="height: 400px; width: 550; position: relative;">
					</div>
				</div>
			</div>
			<div id="floor2">
				<div class="area" id="a3">
					<div id="content3"
						style="height: 400px; width: 550; position: relative;">
					</div>
				</div>
				<div class="area" id="a4">
					<div id="content4"
						style="height: 400px; width: 550; position: relative;">
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div style="padding: 7px;">Copyright © 2018 HSB Inc.</div>
			<div>
				<div id="result1"></div>
				<div id="result2"></div>
				<div id="result3"></div>
				<div id="result4"></div>
			</div>
		</div>
	</div>
</body>
</html>