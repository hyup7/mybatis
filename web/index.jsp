<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이바티스 사용하기</title>
</head>
<body>
	 <h3>마이바티스 체엄하기</h3>
	 <h4>학생정보 등록하기</h4>
	 <a href="${path }/insertStudent">학생입력</a>
	 <h4>학생이름을 변경해서 등록하기</h4>
	 <form action="${path }/insertStudentName" method="post">
	 	<input type="text" name="name">
	 	<input type="submit" value="저장">
	 </form>
	 <h4>다중값 파라미터 입력하기</h4>
	 	 <form action="${path }/insertStudentData" method="post">
	 	이름<input type="text" name="name"><br>
	 	전화번호<input type="text" name="phone"><br>
	 	주소<input type="text" name="addr"><br>
	 	<input type="submit" value="저장">
	 </form>
	 
	 <h4>다중값 입력받아 수정하기</h4>
	 <form action="${path }/updateStudent" method="post">
	 	학생번호 <input type="number" name="no"> <br>
	 	이메일 <input type="text" name="email"><br>
	 	전화번호<input type="text" name="phone"><br>
	 	주소<input type="text" name="addr"><br>
	 	<input type="submit" value="저장">
	 </form>
	 
	 <h4>학생번호 입력받아 삭제하기</h4>
	 <form action="${path }/deleteStudent" method="post">
	 	학생번호 <input type="number" name="no"> <br>
	 	<input type="submit" value="저장">
	 </form>
	 <h2>DB저장된 데이터 조회하기</h2>
	 <p>select문 활용하기</p>
	 
	 <ul>
	 	<li>한개의 row만 가져오는 select문</li>
	 	<li>여러개의 row들을 가져오는 select</li>
	 	<li>여러개의 row들을 부분별로 가져오는 select문 -> paging처리 </li>
	 	
	 </ul>
	 
	 <h2>한개의 row를 가져오는 select문 실행하기</h2>
	 <h4>student테이블의 학생 수 조회하기</h4>
	 <a href="${path }/selectCount">학생수 조회하기</a>
	 <h4>학생 한명에 대한 정보 가져오기</h4>
	 <form action="${path }/selectstudentone">
	 	<input type="number" name="no">
	 	<input type="submit" value="전송">
	 </form>
	 
	 <h4>student테이블의 전체 학생 조회하기</h4>
	 <p>다수row를 가져온다ㅣ</p>
	 <a href="${path }/selectStudentAll">전체학생조회</a>
	 
	 <h4>Map을 이용해서 데이터 가져오기</h4>
	 <p>
	 	데이터보관하기 위한 vo객체를 만들지 않고 DB의 데이터 가져와 출력하기
	 	--> Map객체이용하기 /key:value 
	 </p>
	 <a href="${path }/selectStudentMap?no=4">학생조회</a>
	 
	 
</body>
</html>