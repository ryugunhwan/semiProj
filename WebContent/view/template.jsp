<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div{

 align-items: center; 

}

#maininc{
height:auto;
}

.inc{
	clear: both;
	text-align:center;
}

.incdiv{
	height:40px;
	width: 600px;
	display:inline-block;
}

#topinc{
	background-color: #088;
}
#menuinc{
	background-color: #880;
}
#maininc{
	background-color: #808;
}
#bottominc{
	background-color: #080;
}

</style>
</head>
<body>

	<div class="inc"  style="background-color: aqua;" >
		<jsp:include page="inc/top.jsp" />
	</div>
	<div class="inc" style="background-color: yellow;" >
		<jsp:include page="inc/menu.jsp"/>
	</div>
	<div class="inc" style="background-color: orange;">
		<jsp:include page="inc/main.jsp"/>
	</div>
	<div class="inc" style="background-color: lime;">
		<jsp:include page="inc/bottom.jsp"/>
	</div>
</body>
</html>