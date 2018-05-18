<%@page import="model.UserVO"%>
<%@page import="model.DAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	/* 	request.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date())); */
	/* request.setAttribute("dao", new DAO()); */
	/* 	request.setAttribute("schedule", new DAO().dayPart()); */
%>

<fmt:parseDate var="day" value="${today }" pattern="yyyy-MM-dd" />
<fmt:parseDate var="tt" value="${today }" pattern="yyyy-MM-dd" />
<c:set var="todate" value="${day.date }" />
<%-- <c:if test="${resDate eq null }">
<c:set var="resDate" value="${day }" />
</c:if> --%>

${last.setMonth(day.month+1) } ${last.setDate(0) }
<%-- ${day.setDate(day.date-day.day) } --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
.r_matching {
	float: left;
	margin-right: 20px;
}

.r_tr {
	width: 150pt;
}

.r_td {
	float: left;
	text-align: center;
	width: 20pt;
	height: 20pt;
	color: maroon;
}

.r_sun {
	float: left;
	text-align: center;
	width: 20pt;
	height: 20pt;
	color: fuchsia;
	text-align: center;
	width: 20pt;
	height: 20pt;
}

.r_sat {
	float: left;
	text-align: center;
	width: 20pt;
	height: 20pt;
	color: aqua;
}

.r_resible {
	cursor: pointer;
	float: left;
	text-align: center;
	width: 20pt;
	height: 20pt;
}

.r_gpic {
	width: 300px;
	height: 200px;
	margin-right: 10px;
}

.r_imgs {
	width: 100%;
	height: 100%;
}
</style>

<script type="text/javascript">

	mclick = function(ii) {
		location.href = "?date=" + ii;
	}

	/* 	part1 = function(){
			${dao.setPart1(reservo) }
			alert();	
		} */
</script>
<!-- 예약신청 폼 -->
<div align="center">
	신청자 정보 입력
	<!-- 어차피 로그인한 애만 예약할 수 있는데 이름, 번호, 주소 입력할  필요가?
		 입력 안해도 로그인 정보에서 뽑아쓰면 되는데?
		  / 번호,주소 바꿔서 적는 경우 생각 해야하나? -->
	<form action="reser">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="username"
					<c:if test='${user!=null }'>value='${user.uname }'</c:if> /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="userphone"
					<c:if test='${user!=null }'>value='${user.uphone }'</c:if> /></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"
					<c:if test='${user!=null }'>value='${user.uaddress }'</c:if> /></td>
			</tr>
			<tr>
				<td>시간</td>
				<td id="time">${time }</td>

			</tr>
			<tr>
				<td>제품</td>
				<td><select name="category">
						<option>카테고리 선택</option>
						<c:forEach items="${cate}" var="cc">
							<option>${cc }</option>
						</c:forEach>
				</select> <select name="product">
						<option>제품 선택</option>
						<c:forEach items="${dao.cateList().cate.list }" var="pp">
							<option>${pp }</option>
						</c:forEach>

				</select></td>
			</tr>
			<tr>
				<td>증상</td>
				<td><select name="symptom">
						<!-- 선택된걸 잡아서 -->
						<c:forEach items="${prod.list(pp) }" var="ss">
							<option>${ss }</option>

						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td>상세내용</td>
				<td><textarea cols="30" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td>전달사항</td>
				<td><input type="text" name="call" /></td>
			</tr>
			<!-- 		<tr>
			<td colspan="2">

			<a href="reserForm.jsp">뒤로가기</a>
			<a href="?">위로가기</a>
			<input type="reset" value="리셋"/>
			<input type="submit" value="작성"/>
			
			</td>
		</tr> -->
		</table>
	</form>
</div>

<!-- 얘가 필요한게 날짜별로 빈 기사. -->
<!-- 달력표시 / 다음달 달력도 표시되어야 할 경우가 있음. (각 달의 마지막 6일.)-->
<!-- 달력 날짜선택 -->
<div class="r_matching">
	<c:set var="color" value="black"></c:set>
	<div class="r_tr">
		<c:forTokens var="week" items="일,월,화,수,목,금,토" delims=",">
			<div class="r_td">${week }</div>
		</c:forTokens>
	</div>
	<!-- 첫줄 -->
	<div class="r_tr">
		<c:forEach begin="0" end="${day.day-1}" var="i">
${day.setDate(day.date-day.day+i) }
			<c:choose>
				<c:when test="${i==0 }">
					<div class="r_sun">${day.date}</div>
				</c:when>
				<c:otherwise>
					<div class="r_td">${day.date}</div>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		${day.setDate(day.date+1) }

		<c:forEach begin="${day.date }" end="${day.date+14 }" var="ii">
			<div
				style="color: 
				<c:choose>
					<c:when test="${day.day==0 }">
						fuchsia
					</c:when>
					<c:when test="${day.day==6 }">
						aqua
					</c:when>
					<c:otherwise>
						maroon
					</c:otherwise>
				</c:choose>
				;background-color: 
						yellow;"
				class="r_resible" onclick="mclick(${day.date})">${day.date }</div>
			<c:if test="${day.day==6 }">
	</div>
	<div class="r_tr">
		</c:if>
		${day.setDate(day.date+1) }

		</c:forEach>


		<c:forEach var="i" begin="${day.day }" end="6">
			<c:choose>
				<c:when test="${i==6 }">
					<div class="r_sat">${day.date}</div>
				</c:when>
				<c:otherwise>
					<div class="r_td">${day.date}</div>
				</c:otherwise>
			</c:choose>
				${day.setDate(day.date+1) }
			</c:forEach>
		${day.setMonth(tt.month) } ${day.setDate(tt.date) }
	</div>
</div>

<!-- 기사 및 시간선택 -->
<div class="r_matching" style="float: left">
	<c:choose>
		<c:when test="${param.date == null }">
			<img alt="날짜 선택좀" src="../imgs/etc/missdate.png">
		</c:when>
		<c:otherwise>
			<%
				System.out.println("들어왔다");
			%>
			<c:set var="resDate" value="${day }" />
				${resDate.setDate(param.date) }
			
			<c:if test="${dao.dayPart(resDate) eq null }">
				기사님 못받음
			</c:if>
			<form action="ReserDetail">
				<c:forEach items="${dao.dayPart(resDate) }" var="reservo">
					<div style="float: left">
						<%
							System.out.println("포이치");
						%>
						<div class="r_gpic">
							<%
								System.out.println("기사님얼굴");
							%>
							<img class="r_imgs" alt="기사님얼굴"
								src="../imgs/engineer/g${reservo.gid }.PNG">
						</div>

						<div>

							<%
								System.out.println("스케줄확인");
							%>
							10시
							<c:choose>
								<c:when test="${reservo.part1==0 }">
									<%
										System.out.println("가능");
									%>
									<font color="green">●
									</font>
									<input type="radio" name="part" id="p1" value="p1" />
								</c:when>
								<c:otherwise>
									<%
										System.out.println("불가");
									%>
									<font color="red"> ● </font>
									<input type="radio" name="part" disabled="disabled"
										id="p1" value="p1"  />
								</c:otherwise>
							</c:choose>
							13시

							<c:choose>
								<c:when test="${reservo.part2==0 }">
									<%
										System.out.println("가능");
									%>
									<font color="green"> <a
										onclick="<%-- ${param.part=2}; --%>alert('13-15시')">●</a>
									</font>
									<input type="radio" name="part" id="p2" value="p2" />
								</c:when>
								<c:otherwise>
									<%
										System.out.println("불가");
									%>
									<font color="red"> ● </font>
									<input type="radio" name="part" disabled="disabled"
										id="p2" value="p2" />
								</c:otherwise>
							</c:choose>
							15시

							<c:choose>
								<c:when test="${reservo.part3==0 }">
									<%
										System.out.println("가능");
									%>
									<font color="green"> <a
										onclick="<%-- ${param.part=3}; --%> alert('15-17시')">●</a>
									</font>
									<input type="radio" name="part" id="p3" value="p3" />
								</c:when>
								<c:otherwise>
									<%
										System.out.println("불가");
									%>
									<font color="red"> ● </font>
									<input type="radio" name="part" disabled="disabled"
										id="p3" value="p3" />
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</c:forEach>
				<div align="center" style="clear: both">
					<input type="submit" value="예약하기"/>
				</div>
			</form>
		</c:otherwise>
	</c:choose>
</div>




