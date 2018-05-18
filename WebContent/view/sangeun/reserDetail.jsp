<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
ddsa
	<table border="1">
		<tr>
			<td>신청자 이름</td>
			<td>${user.name }</td>
		</tr>
		<tr>
			<td>신청자 폰번호</td>
			<td>${user.phone }</td>
		</tr>
		<tr>
			<td>신청자 주소</td>
			<td>우편번호 : ${user.address }</td>
		</tr>
		<tr>
			<td>상세주소</td>
			<td>${user.address }</td>
		</tr>
		<tr>
			<td>더 상세주소</td>
			<td>${user.address }</td>
		</tr>
		<tr>
			<td>기사님 이름</td>
			<td>${engi.ename }</td>
		</tr>
		<tr>
			<td>기사님 사진</td>
			<td>${engi.epicture }</td>
		</tr>
		<tr>
			<td>기사님 번호</td>
			<td>${engi.ephone }</td>
		</tr>
		<tr>
			<td>날짜</td>
			<td>${reservo.resDate}</td>
		</tr>
		<tr>
			<td>시간</td>
			<td><c:choose>
					<!-- part.. 예약한 시간이 언제인지 넘겨줘야함 -->
					<c:when test="${part eq 'p1' }">
					${reservo.part1 }
					파트1클릭
					</c:when>
					<c:when test="${part=='p2' }">
					${reservo.part2 }
					파트2클릭
					</c:when>
					<c:when test="${part=='p3' }">
					${reservo.part3 }
					파트3클릭
					</c:when>
				</c:choose></td>
		</tr>
<!-- 		<tr>
			<td>파일</td>
			<td></td>
		</tr> -->
		<tr>
			<td colspan="2">
			<a href="Reserlist">예약 내역(마이페이지)</a> <a href="intro">홈으로</a> 예약취소</td>
		</tr>
	</table>