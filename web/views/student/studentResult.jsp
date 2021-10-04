<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학생정보 조회결과</h2>
	<h4>학생수 : ${count }</h4>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>생성일</th>
		</tr>
		<tr>
			<td>${s.studentNo }</td>
			<td>${s.studentName }</td>
			<td>${s.studentEmail }</td>
			<td>${s.studentTel }</td>
			<td>${s.studentAddr }</td>
			<td>${s.reg_date }</td>
		</tr>
			
	</table>
	
</body>
</html>