<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Read Share</title>
</head>
<body>
	<div class="container">
		<div style="margin-bottom:40px" class="navbar d-flex justify-content between">
			<h1 style="font-style:italic"><c:out value="${book.title}"/></h1>
			<a href="/books">back to the shelves</a>
		</div>
		<div>
			<h5><c:out value="${book.user.name}"/> read <c:out value="${book.title}"/> by <c:out value="${book.author}"/>.</h5>
			<h5>Here are <c:out value="${book.user.name}"/>'s thoughts: </h5>
			<div style="margin: 40px;" class="d-flex justify-content-center">
				<p style="padding: 20px"class="border border-2 border-dark border-start-0 border-end-0 col-10"><c:out value="${book.thoughts}"/></p>
			</div>
		</div>
	</div>
</body>
</html>