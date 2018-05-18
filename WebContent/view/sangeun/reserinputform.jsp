<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

신청자 정보 입력
<form action="reser">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="userphone" /></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type="text" name="address" /></td>
		</tr>
		<tr>
			<td>제품</td>
			<td><select name="category" >
			<c:forEach items="${cate.list }" var="cc">
			<option>${pp }</option>
			
			</c:forEach>
			
			</select>
			<select name="product" >
			<c:forEach items="${cate.prod.list }" var="pp">
			<option>${pp }</option>
			
			</c:forEach>
			
			</select> </td>
		</tr>
		<tr>
			<td>증상</td>
			<td><select name="symptom" >
			<!-- 선택된걸 잡아서 -->
			<c:forEach items="${prod.list(pp) }" var="ss">
			<option>${ss } </option>
			
			</c:forEach>
			</select> </td>
		</tr>
		<tr>
			<td>상세내용</td>
			<td><textarea cols="30" rows="5" name="content" ></textarea></td>
		</tr>
		<tr>
			<td>전달사항</td>
			<td><input type="text" name="call" /></td>
		</tr>
		<tr>
			<td colspan="2">

			<a href="reserForm.jsp">뒤로가기</a>
			<a href="?">위로가기</a>
			<input type="reset" value="리셋"/>
			<input type="submit" value="작성"/>
			
			</td>
		</tr>
	</table>
</form>


