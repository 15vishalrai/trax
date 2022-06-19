<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing | Create</title>
</head>
<body>
	<h2>Lead | Create</h2>
	
	
	<form action="saveBill" method="post">
	<pre>
			First Name:<input type="text" name="firstName" value="${contact.firstName}"/>
			 <%--name should match with the entity name --%>
			Last Name:<input type="text" name="lastName" value="${contact.lastName}"/>
			
			Email:<input type="email" name="email" value="${contact.email}"/>  <%--using type = email will validate with unique email --%>
			Mobile:<input type="text" name="mobile"  value="${contact.mobile}" />
			Product Name <input type="text" name="product"/>
			Amount <input type="text" name="amount"/>
			<input type="submit" value="Generate Bill">
	</pre>
			
			
	</form>
</body>
</html>