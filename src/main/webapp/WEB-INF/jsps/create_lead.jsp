<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead | Create</title>
</head>
<body>
	<h2>Lead | Create</h2>
	<div>
		${emailError}
		</div>
	
	<form action="saveLead" method="post">
	<pre>
			First Name:<input type="text" name="firstName"/>
			 <%--name should match with the entity name --%>
			Last Name:<input type="text" name="lastName"/>
			Lead Source:<select name="leadSource">
						
						  <option value="radio">Radio Channel</option>
						  <option value="Newspaper">Newspaper</option>
						  <option value="T.V">TV</option>
						  <option value="online">online</option>
						</select>
			
			Email:<input type="email" name="email"/>  <%--using type = email will validate with unique email --%>
			Mobile:<input type="text" name="mobile"/>
			<input type="submit" value="save">
	</pre>
			
			
	</form>
</body>
</html>