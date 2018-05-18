<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
</head>
<body>
	<form name="frm" id="frm" action="" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="" name="" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="" name="" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="" name="" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="" name="" /></td>
			</tr>
			<tr>
				<td>주소</td>

				<td><table>
						<tr>
							<th>우편번호</th>
							<td><input type="hidden" id="confmKey" name="confmKey"
								value=""> <input type="text" id="zipNo" name="zipNo"
								readonly style="width: 100px"> <input type="button"
								value="주소검색" onclick="goPopup();"></td>
						</tr>
						<tr>
							<th><label>도로명주소</label></th>
							<td><input type="text" id="roadAddrPart1" style="width: 85%"></td>
						</tr>
						<tr>
							<th>상세주소</th>
							<td><input type="text" id="addrDetail" style="width: 40%"
								value=""> <input type="text" id="roadAddrPart2"
								style="width: 40%" value=""></td>
						</tr>
					</table></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="" name="" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="" name="" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="" name="" /></td>
			</tr>
		</table>
	</form>
</body>
</html>