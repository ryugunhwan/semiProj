<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>

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
	background-color: blue;
}

/* 
/////////////////////���⿬��//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/ */

/* 
/////////////////////���⿬����//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/ */
</style>

<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>
<script type="text/javascript">

$(document).ready(function(){
$('.title').click(function(){$('.title').each(function(){$(this).animate({height:'50px'},'easeOutBounce');});
 	var hh = $(this).find('.sub_menu').length*27+50+"px"
$(this).stop().animate({height:hh},'easeOutBounce');}); });





/* 
/////////////////////���⿬��//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/ */
/* 
	$(document).ready(function(){
		
		$('#main_menu2').click(function(){
			$('#sub_menu2').stop();
			$('#sub_menu2')animate({height:100px},100))
			 */
/* 		$('#main_menu2').click(function(){
			$('#sub_menu2').stop();
			$('#sub_menu2')animate({height:0px},100))
			
		}) */
		
		
/* 	}) */
/* 	 $(document).ready(function(){
        // menu Ŭ���� �ٷ� ������ �ִ� a �±׸� Ŭ��������
        $("#main_menu1").click(function(){
            var submenu = $(this).next("ul");

            // submenu �� ȭ��� ���϶��� ���� ������� ���� �ƴϸ� �Ʒ��� ������� ��ġ��
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        });
    });


	function menu_effect1(){
	       $('#sub_menu1').stop();
	       $('#sub_menu1').animate({height:100}); 

	} 
 	function menu_effect2(){
	       $('#sub_menu2').stop();
	       $('#sub_menu2').animate({height:100}); 
	} 
	function menu_effect3(){
	       $('[id=sub_menu3]').stop();
	       $('[id=sub_menu3]').animate({height:100}); 
	}
	function menu_effect4(){
	       $('[id=sub_menu4]').stop();
	       $('[id=sub_menu4]').animate({height:100}); 
	} 
	 */
	 
	 
	 
	 
	 
	 /* 
/////////////////////���⿬����//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/ */


gogo = function(url){
		 
		 
		 <%
		 request.setAttribute("main", "about_sangsung.jsp");
		 %>
		 location.href="${}";
		 targ

	 }
</script>


</head>

<body>



	<div class="inc" style="background-color: aqua;">

		<jsp:include page="inc/top.jsp" />

	</div>


	<div class="inc" id="s_center" style="background-color: orange;">
		<!--  ���DIV @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
		<div id="menuBar">
			�޴����� �� �����Դϴ�.
			<div class="title" data-flag="0">
				<div class="main_menu" id="main_menu1">Intro</div>
				<div class="sub_menu" id="sub_menu1" onclick="gogo()">���&nbsp;����</div>
				<div class="sub_menu" id="sub_menu2" onclik='/sangeun/about_CEO'>��&nbsp;��&nbsp;��</div>
				<div class="sub_menu" id="sub_menu3">Q&nbsp;&nbsp;&&nbsp;&nbsp;A</div>
			</div>

			<div class="title" data-flag="0">
				<div class="main_menu" id="main_menu2">��&nbsp;&nbsp;&nbsp;&nbsp;ǰ</div>
				<div class="sub_menu" id="sub_menu1">sub4</div>
				<div class="sub_menu" id="sub_menu2">sub5</div>
				<div class="sub_menu" id="sub_menu3">sub6</div>
			</div>

			<div class="title" data-flag="0">
				<div class="main_menu" id="main_menu3">��&nbsp;&nbsp;&nbsp;&nbsp;��</div>
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