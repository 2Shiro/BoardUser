<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/sass@1.72.0/sass.default.min.js"></script>
<style>
	td {
		padding : 10px;
		width : 150px;
		text-align : center;
	}
	
	tr:first-child {
		background-color:black;
		color: white;
		font-weight: bold;
		
		td {
			border-color : white;
		}
	}
	
	/*
	tr:first-child td {
		border-color : white;
	}
	*/
	
	tr:nth-child(2) td {
		text-align : right;
	}
</style>
</head>
<body>
	<main>
		<h2>사용자 목록</h2>
		<table>
			<tr>
				<td>아이디</td>
				<td>이름</td>
				<td>이메일</td>
				<td>회원등급</td>
				<td>가입일</td>
				<td>수정</td>
            	<td>삭제</td>
			</tr>
			<tr>
				<td colspan="7">
					[<a href="/Users/WriteForm">사용자 추가</a>]&nbsp;&nbsp;&nbsp;
					[<a href="/Users/WriteForm2">사용자 추가(이름으로만)</a>]
				</td>
			</tr>
			<c:forEach var="user" items="${userList}">
				<tr>
					<td>${user.userid}</td>
					<td>${user.username}</td>
					<td>${user.email}</td>
					<td>${user.upoint}</td>
					<td>${user.indate}</td>
					<!-- 
					<td><a href="/Users/UpdateForm?user_id=${user.userid}">수정</a></td>
					<td><a href="/Users/Delete?user_id=${user.userid}">삭제</a></td>
					 -->
				</tr>
			</c:forEach>
		</table>
	</main>
</body>
</html>