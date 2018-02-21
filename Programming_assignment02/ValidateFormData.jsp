<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validate</title>
</head>
<body>
 <jsp:useBean id="vb" class="pack.ValidateBean" />
 
  <jsp:setProperty name="vb" property="emailAddress" />
  <jsp:setProperty name="vb" property="zipcode" />
 
  
 
  <br>
  <% if(!vb.validateEmail()){
  	out.println("Your email address is less than 7 characters or invalid");
  }
	%> 
  <br>
  
  <%if(!vb.validateZip()){
	out.println("Your Zip code is invalid");  
  }
	if(vb.validateEmail() && vb.validateZip()){	
		session.setAttribute("custname",request.getParameter("cname"));
		session.setAttribute("ssn",request.getParameter("ssn"));
		session.setAttribute("zip",request.getParameter("zipcode"));
		session.setAttribute("streetaddr",request.getParameter("street_address"));
		session.setAttribute("emailaddr",request.getParameter("emailAddress"));
		session.setAttribute("city",request.getParameter("city"));
		session.setAttribute("state", request.getParameter("state"));	
		response.sendRedirect("location");
		//response.sendRedirect("ProcessCustomerDataRequest.jsp");
	}
  %>
  <br>
  <a href="GetFormData.jsp">Back</a>
  
  <br>
  <b>Thank You</b>

</body>
</html>