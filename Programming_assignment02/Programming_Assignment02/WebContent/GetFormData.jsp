<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 -->
 <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Details</title>
<style type="text/css">

.input {
	width: 300px;
	border: 1px solid #ACACAC;
	margin: 0;
	padding: 2px;
}

</style>

</head>
<body>

<table border="1" cellspacing="1" cellpadding="3" bgcolor="grey" >
<tbody>
<form name='registrationform' action="ValidateFormData.jsp" >

<tr bgcolor="grey">
<td valign="top">
<label for="Customer Name"><strong>Customer Name</strong></label>
<input required type="text" name="cname" size="12" pattern=".{4,50}" title="Customer Name should have 4 to 50 characters"/><br></td>
</tr>

<tr bgcolor="grey">
<td valign="top">
<label for="SSN"><strong>Social Security Number:</strong></label>
<input required type="text" name="ssn" size="12" pattern="\d{3}-?\d{2}-?\d{4}" title="###-##-####"/><br>
</td></tr>

<tr bgcolor="grey">
<td valign="top">
<label for="Zip Code"><strong>Zip Code:</strong></label>
<input type="text" name="zipcode" size="15" /><br>
</td></tr>

<tr bgcolor="grey">
<td valign="top">
<label for="Email address"><strong>Email Address:</strong></label>
<input type="text" name="emailAddress" size="50" /><br>
</td></tr>

<tr bgcolor="grey">
<td valign="top">
<label for="Street Address"><strong>Street Address:</strong></label>
<input type="text" name="street_address" size="50" pattern=".{4,50}" title="Street address must be between 4 to 50 characters!!!"/><br>
</td></tr>

<tr bgcolor="grey">
<td valign="top">
<label for="City"><strong>City:</strong></label>
<input type="text" name="city" size="50" pattern=".{3,50}" title="City must be between 3 to 50 characters!!!"/><br>
</td></tr>


<tr bgcolor="grey">
<td valign="top">
<label for="state"><strong>State:</strong></label>
<select name="state">
<option selected="" value="Default">---------select one---------</option>
<option value="AL">AL</option>
	<option value="AK">AK</option>
	<option value="AR">AR</option>	
	<option value="AZ">AZ</option>
	<option value="CA">CA</option>
	<option value="CO">CO</option>
	<option value="CT">CT</option>
	<option value="DC">DC</option>
	<option value="DE">DE</option>
	<option value="FL">FL</option>
	<option value="GA">GA</option>
	<option value="HI">HI</option>
	<option value="IA">IA</option>	
	<option value="ID">ID</option>
	<option value="IL">IL</option>
	<option value="IN">IN</option>
	<option value="KS">KS</option>
	<option value="KY">KY</option>
	<option value="LA">LA</option>
	<option value="MA">MA</option>
	<option value="MD">MD</option>
	<option value="ME">ME</option>
	<option value="MI">MI</option>
	<option value="MN">MN</option>
	<option value="MO">MO</option>	
	<option value="MS">MS</option>
	<option value="MT">MT</option>
	<option value="NC">NC</option>	
	<option value="NE">NE</option>
	<option value="NH">NH</option>
	<option value="NJ">NJ</option>
	<option value="NM">NM</option>			
	<option value="NV">NV</option>
	<option value="NY">NY</option>
	<option value="ND">ND</option>
	<option value="OH">OH</option>
	<option value="OK">OK</option>
	<option value="OR">OR</option>
	<option value="PA">PA</option>
	<option value="RI">RI</option>
	<option value="SC">SC</option>
	<option value="SD">SD</option>
	<option value="TN">TN</option>
	<option value="TX">TX</option>
	<option value="UT">UT</option>
	<option value="VT">VT</option>
	<option value="VA">VA</option>
	<option value="WA">WA</option>
	<option value="WI">WI</option>	
	<option value="WV">WV</option>
	<option value="WY">WY</option>
</select>
</td></tr>

<tr bgcolor="grey">
<td valign="top">
<input type="submit" name="submit" value="Submit" /></td></tr>


</form>
</tbody>
</table>

</body>
</html>