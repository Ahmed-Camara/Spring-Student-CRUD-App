<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>


<html>
<head>
	<title>Access Denied Page</title>
</head>
<body>
	<h2>Access denied - you're not authorized to access this resource</h2>
	<a href="${pageContext.request.contextPath }/">Back to home page</a>
</body>
</html>