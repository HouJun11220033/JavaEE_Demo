<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>Home</title>


</head>

<body>
	<div align="center">
		<h1>Users List</h1>
		<h2>
			<a href="/new">New User</a>
		</h2>
		<table border="2">
			<th>No</th>
			<th>Username</th>
			<th>Email</th>
			<th>Actions</th>
			<c:forEach var="user" items="${userList}" varStatus="status">
				<tr>
					<td>${status.index+1}</td>
					<td>${user.username}</td>
					<td>${user.email}</td>
					<td><a href="/edit?id=${user.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a href="/delete?id=${user.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>

	</div>


</body>
</html>
