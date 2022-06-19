<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Leads</title>
</head>
<body>
	<a href="viewCreateLead"> Create new Lead</a>
	<h2> Search Result...</h2>
	<table border=1>
		<tr>
			<th>ID</th>
			<th>first Name</th>
			<th>Last Name</th>
			<th>Lead Source</th>
			<th>Email</th>
			<th>Mobile</th>
		</tr>
	
	<c:forEach items="${leads}" var="lead">
	<tr>
		<td>${lead.id}</td>
		<td><a href="leadInfo?id=${lead.id}">${lead.firstName}</a></td>
		<%-- when i click on the link lead.id copied into id and give to leadinfo --%>
		<td>${lead.lastName}</td>
		<td>${lead.leadSource}</td>
		<td>${lead.email}</td>
		<td>${lead.mobile}</td>
		</tr>
		
	</c:forEach>
	</table>
</body>
</html>