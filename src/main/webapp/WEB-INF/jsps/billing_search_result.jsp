<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="Menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing Result</title>
</head>
<body>
		
	<h2> Billing Result...</h2>
	<table border=1>
		<tr>
			
			<th>first Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Product</th>
			<th>Price</th>
			</tr>
	 <c:forEach items="${bills}" var="bill">
	<tr>
		<tr>
			<td>${bill.firstName}</td>
			<td>${bill.lastName}</td>
			<td>${bill.email}</td>
			<td>${bill.mobile}</td>
			<td>${bill.product}</td>
			<td>${bill.amount}</td>
			
		</tr>
		
	</c:forEach>		
			
		
		</table>
</body>
</html>