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
	<%@ include file = "header.jsp" %>

	<jsp:useBean id = "cart" class = "beans.Cart" scope = "session"></jsp:useBean>
	
	<div class = "container cart">
		
		<div class = "flex-column">
		
			<h1>Your Order</h1>
			
			<form action = "/Controller?action=complete" method = "post" >
			
				<input class = "orderForm" name = "first-name" type = "text" placeholder = "First Name" >
				<input class = "orderForm" name = "last-name" type = "text" placeholder = "Last Name" >
				<input class = "orderForm" name = "phone" type = "text" placeholder = "Phone Number" >
				<input class = "orderForm" name = "email" type = "text" placeholder = "Email" >
				<input class = "orderForm" name = "student-id" type = "text" placeholder = "Student ID" >
				<input class = "orderForm" name = "password" type = "password" placeholder = "Password" >
			
				<p style = "margin-top: 30px;" class = "pricing" >
				<% 
					double total = 0.0;
				
					for (int i = 0; i < 15; i++) {
						if (request.getParameter("order" + i) != null) {
							total += Double.parseDouble(request.getParameter("order" + i));
						}
					}
					
					total = Math.round(total * 100.0) / 100.0;
					
					out.println("Your order total is: $" + total);
				%>
				</p>
				
				<input style = "margin-top: 30px; width: 330px" class = "submit" type = "submit" value = "Place Order">
				
			</form>
			
		</div>
		
	</div>
	
	<%@ include file = "footer.html" %>
	
</body>
</html>