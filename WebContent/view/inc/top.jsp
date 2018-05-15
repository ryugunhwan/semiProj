<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#login {
	background-color: red;
	float:right;
	width: 20%;
	height:100%;
	
}

#logo {
	width: 80px;
	height:100%;
	float: left;
	background-image: url('../imgs/comp/logo.PNG');
	background-size: 100%;
	cursor: pointer;
}

.topdiv {
	width: 100%;
}
</style>
<script type="text/javascript">

logo = function(){
	location.href='inc/main.jsp'
	target="main"
};
</script>
</head>
<body>
	<div class="incdiv" id="topinc">
		<div id="logo" onclick=logo() ></div>
		<div id="login" align="right">
			<c:choose>
				<c:when test="${login }">
		로그인
		</c:when>
				<c:otherwise>
		로그아웃
		<!-- 내정보 -->
				</c:otherwise>
			</c:choose>

		</div>
	</div>
</body>
</html>
