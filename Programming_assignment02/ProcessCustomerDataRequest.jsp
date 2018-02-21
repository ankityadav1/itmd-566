<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Data</title>
</head>
<body>
Customer Name is <%=session.getAttribute("custname") %><br>
SSN <%=session.getAttribute("ssn") %><br>
Zip Code <%=session.getAttribute("zipcode") %><br>
Email Address <%=session.getAttribute("emailaddr") %><br>
Street Address <%=session.getAttribute("streetaddr") %><br>
City <%=session.getAttribute("city") %><br>
State <%=session.getAttribute("state") %><br>
Longitude : <%=session.getAttribute("longitude") %><br>
Latitude : <%=session.getAttribute("latitude") %><br>
<% out.println(request.getAttribute("Location")); %><br>


</body>
</html>