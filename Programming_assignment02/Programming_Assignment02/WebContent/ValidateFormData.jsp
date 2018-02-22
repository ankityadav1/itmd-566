<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validate user info</title>
</head>
<body>
 <jsp:useBean id="validate" class="pack.ValidateBean" />
 
  <jsp:setProperty name="validate" property="emailAddress" />
  <jsp:setProperty name="validate" property="zipcode" />
  <br>
  <% if(!validate.validateEmail()){
  	out.println("Entered email address is not valid!!! Please enter valid email address");
  }
	%> 
  <br>
  
  <%if(!validate.validateZip()){
	out.println("Entered zip code is invalid!!!");  
  }
	if(validate.validateEmail() && validate.validateZip()){	
		session.setAttribute("custname",request.getParameter("cname"));
		session.setAttribute("ssn",request.getParameter("ssn"));
		session.setAttribute("zip",request.getParameter("zipcode"));
		session.setAttribute("streetaddr",request.getParameter("street_address"));
		session.setAttribute("emailaddr",request.getParameter("emailAddress"));
		session.setAttribute("city",request.getParameter("city"));
		session.setAttribute("state", request.getParameter("state"));
		response.sendRedirect("location");

		
	}
  %> 
  </div>
  <br>
  <a href="GetFormData.jsp">Back</a>
   <br>
  <b>Thank You!!! Godd bye</b>
</body>
</html>