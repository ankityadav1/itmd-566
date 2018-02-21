package com;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class ValidateBean {
	
		String emailAddress, zipcode;
		public ValidateBean(){}
		public String getEmailAddress() {
			return emailAddress;
		}
		public void setEmailAddress(String emailAddress) {
			this.emailAddress = emailAddress;
		}
		public String getZipcode() {
			return zipcode;
		}
		public void setZipcode(String zipcode) {
			this.zipcode = zipcode;
		}
		public boolean validateEmail(){
			final String EMAIL_PATTERN =
					"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
					+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
			Pattern pat = Pattern.compile(EMAIL_PATTERN);
			if (emailAddress == null || emailAddress.length() < 7)
	            return false;
	        return pat.matcher(emailAddress).matches();
		}
		
		public boolean validateZip(){
			String regex = "^[0-9]{5}(?:-[0-9]{4})?$";
			Pattern pattern = Pattern.compile(regex);
			return pattern.matcher(zipcode).matches();
			
		}
		
		


}
