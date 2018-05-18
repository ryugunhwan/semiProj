<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>

<style type="text/css">
div {
	align-items: center;
}

.inc {
	clear: both;
	text-align: center;
}

.incdiv {
	height: 40px;
	width: 70%;
	display: inline-block;
}

.title {
	position: relative;
	width: 100%;
	height: 50px;
	cursor: pointer;
	overflow: hidden;
}

.main_menu {
	width: 100%;
	height: 50px;
	background: green;
	line-height: 30px;
}

.sub_menu {
	position: relative;
	width: 100%;
	height: 27px;
	line-height: 27px;
	background: gray;
	cursor: pointer;
}

#topinc {
	background-color: fuchsia;
}

#bottominc {
	background-color: silver;
}

#s_center {
	height: 1000px;
}

#menuBar {
	width: 15%;
	height: 100%;
	float: left;
	background-color: yellow;
}

#main_menu1 {
	background-color: green;
}

#main_menu2 {
	background-color: blue;
}

#main_menu3 {
	background-color: white;
}

#main_menu4 {
	background-color: pink;
}

#maininc {
	float: left;
	width: 70%;
	height: auto;
	background-color: #eee;
}


</style>

<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>
<script type="text/javascript">

$(document).ready(function(){
$('.title').click(function(){$('.title').each(function(){$(this).animate({height:'50px'},'easeOutBounce');});
 	var hh = $(this).find('.sub_menu').length*27+50+"px"
$(this).stop().animate({height:hh},'easeOutBounce');}); });



</script>


</head>

<body>



	<div class="inc" style="background-color: aqua;">

		<jsp:include page="inc/top.jsp" />

	</div>


	<div class="inc" id="s_center" style="background-color: orange;">
		<!--  가운데DIV @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
		<div id="menuBar">
			메뉴들이 들어갈 예정입니다.
			<div class="title" data-flag="0">
				<div class="main_menu" id="main_menu1">Intro</div>
				<div class="sub_menu" id="sub_menu1" >기업&nbsp;정보</div>
				<div class="sub_menu" id="sub_menu2" >경&nbsp;영&nbsp;진</div>
				<div class="sub_menu" id="sub_menu3">Q&nbsp;&nbsp;&&nbsp;&nbsp;A</div>
			</div>

			<div class="title" data-flag="0">
				<div class="main_menu" id="main_menu2">제&nbsp;&nbsp;&nbsp;&nbsp;품</div>
				<div class="sub_menu" id="sub_menu1">sub4</div>
				<div class="sub_menu" id="sub_menu2">sub5</div>
				<div class="sub_menu" id="sub_menu3">sub6</div>
			</div>

			<div class="title" data-flag="0">
				<div class="main_menu" id="main_menu3">예&nbsp;&nbsp;&nbsp;&nbsp;약</div>
				<div class="sub_menu" id="sub_menu1">sub7</div>
				<div class="sub_menu" id="sub_menu2">sub8</div>
				<div class="sub_menu" id="sub_menu3">sub9</div>
			</div>

			<div class="title" data-flag="0">
				<div class="main_menu" id="main_menu4">Q&nbsp;&&nbsp;A</div>
				<div class="sub_menu" id="sub_menu1">sub7</div>
				<div class="sub_menu" id="sub_menu2">sub8</div>
				<div class="sub_menu" id="sub_menu3">sub9</div>
			</div>

		</div>


		<div id="maininc">
			<jsp:include page="sangeun/${main }" />
		</div>

	</div>

	<div class="inc" style="background-color: lime;">

		<jsp:include page="inc/bottom.jsp" />

	</div>

</body>

</html>