<% 
/* This file contains the HTML and Java for the order completed screen.
 * For simplicity's sake, we send a simple confirmation email once this
 * screen is reached. 
 * Contributors: Michael
 */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - Checkout</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
	<%@ page import="java.util.Properties,javax.mail.*,javax.mail.internet.*" %>
	<%@ include file = "header.jsp" %>
	
	<%! Properties props = new Properties(); %>
	<%! Session sess = Session.getDefaultInstance(props, null); %>
	<%
		//retrieve name from URL
		String name = request.getParameter("first") + " " + request.getParameter("last");
		try {
			Message msg = new MimeMessage(sess);
			//set sender address, recipient address from URL params, format confirmation message
			msg.setFrom(new InternetAddress("michael.chen880@gmail.com", "michael.chen880@gmail.com Admin"));
			msg.addRecipient(Message.RecipientType.TO,
			                   new InternetAddress(request.getParameter("email"), name));
			msg.setSubject("Your Dormdash order is is confirmed");
			msg.setText("Dear " + name + ", \r\n \r\n" + "Your dormdash order has been received! It should be ready in jiffy!"
							+ "\r\n \r\n Sincerely, your friends at Dormdash.");
			Transport.send(msg);
		} catch (AddressException e) {
			//invalid address provided error handling
			System.out.println("Error" + e);
		} 
	%>
	
	
	<div class = "container cart">
		
		<div class = "flex-column">
		
			<h1>Nice! Your order is on its way</h1>
			
			<p>
				You should receive a confirmation email shortly 
				notifying you when your food is ready. Enjoy!
			</p>
			
		</div>
		
	</div>
	
	<%@ include file = "footer.html" %>
	
</body>
</html>