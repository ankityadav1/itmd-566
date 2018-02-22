<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Data</title>
</head>
<body>

<table border="1" cellspacing="1" cellpadding="2" bgcolor="grey" >
<tr bgcolor="grey">
<td valign="top">
Customer Name is <%=session.getAttribute("custname") %><br>
</td></tr>
<tr bgcolor="grey">
<td valign="top">
SSN <%=session.getAttribute("ssn") %><br>
</td></tr>
<tr bgcolor="grey">
<td valign="top">
Zip Code <%=session.getAttribute("zipcode") %><br>
</td></tr>
<tr bgcolor="grey">
<td valign="top">
Email Address <%=session.getAttribute("emailaddr") %><br>
</td></tr>
<tr bgcolor="grey">
<td valign="top">
Street Address <%=session.getAttribute("streetaddr") %><br></td></tr>
<tr bgcolor="grey">
<td valign="top">
City <%=session.getAttribute("city") %><br>
</td></tr>
<tr bgcolor="grey">
<td valign="top">
State <%=session.getAttribute("state") %><br></td></tr>
<!-- <form action="/locate" method="post">
<input type="button"  value="Submit" /> -->
<tr bgcolor="grey">
<td valign="top">
Longitude : <%=session.getAttribute("longitude") %><br></td></tr>
<tr bgcolor="grey">
<td valign="top">
Latitude : <%=session.getAttribute("latitude") %><br></td></tr>

</table>
</form>

</body>
</html>