<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 조회결과</title>
</head>
<body>
	<h4>전체학생 조회</h4>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>생성일</th>
		</tr>
		<c:forEach var="s" items="${list }">
		<tr>
			<td>${s.studentNo }</td>
			<td>${s.studentName }</td>
			<td>${s.studentEmail }</td>
			<td>${s.studentTel }</td>
			<td>${s.studentAddr }</td>
			<td><fmt:formatDate value="${s.reg_date }" pattern="yy년MM월dd일"/></td>
		</tr>
		</c:forEach>
	</table>
	<h4>Map으로 받아온데이터 출력하기</h4>
		<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>생성일</th>
		</tr>
		<c:forEach var="s" items="${list }">
			<tr>
			<%-- 	<td>${s.STUDENT_NO }</td>
				<td>${s.STUDENT_NAME }</td>
				<td>${s.STUDENT_TEL }</td>
				<td>${s.STUDENT_EMAIL }</td>
				<td>${s.STUDENT_ADDR }</td>
				<td>${s.REG_DATE }</td>	 --%>			
				<td>${s['STUDENT_NO'] }</td>
				<td>${s['STUDENT_NAME'] }</td>
				<td>${s['STUDENT_TEL'] }</td>
				<td>${s['STUDENT_EMAIL'] }</td>
				<td>${s['STUDENT_ADDR'] }</td>
				<td>${s['REG_DATE'] }</td>	
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>