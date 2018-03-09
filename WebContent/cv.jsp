<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - Canyon Vista</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
</head>

<body>
<%@ include file = "header.jsp" %>
	
		
	<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/cv-logo.png" alt="Canyon Vista Dining Options" >
			
			<div class = "dining-description">
				<h2>Canyon Vista</h2>
				<p>Dine on a breezy outdoor terrace overlooking the canyon, or next to a roaring fireplace. 
				Canyon Vista’s menu includes sushi, pizza, made-to-order sandwiches, hot grill items and 
				international cuisine. Stop by for breakfast and enjoy a wide range of breakfast items 
				including Moco Loco and alumni favorite Bobcat Sandwich.
				</p>
			</div>
		</div>
	
		<form action = "/Controller?action=checkout" method = "post" class="col-2-5" >
		
			<div class = "meal">
 				<input type = "radio" id="dinner" />
				<label for="dinner"><h2>DINNER SELECTIONS</h2></label>
			</div>
	
			<%! 
			public int i = 0;
			public String[][] menu = { 
					{"Swedish Meatballs with Egg Noodles - $5.95", "5.95"},
			        {"Teriyaki Salmon - $7.95", "7.95"},
			        {"Crispy Baja Fish Tacos - $4.95", "4.95"},
			        {"Double Cheeseburger - $7.75", "7.75"},
			        {"Fried Chicken Fritters - $4.50", "4.50"},
			        {"Chicken Breast Sandwich - $5.25", "5.25"},
			        {"Crispy Onion Rings - $3.50", "3.50"},
			        {"Chipotle Black Bean Burger - $5.25", "5.25"},
			        {"Grilled Turkey Burger - $5.25", "5.25"},
			        {"Gardein Burger - $5.25", "5.25"},
			        {"Crispy French Fries - $1.75", "1.75"},
			        {"Jicama Salad with Pineapple & Mint - $6.95", "6.95"},
			        {"Hot Turkey Swiss Sandwhich - $6.50", "6.50"}
			};
			public String position(int r, int c) {
				return menu[r][c];
			}
			%>
			
			<% for (i = 0; i < menu.length; i++) { %>
			
			
			<div class="item">
			  	<div class="round">
			    		<input type="checkbox" id=<%= i %> name = <%= "order" + i %> value = <%= position(i, 1) %>/>
			    		<label for=<%= i %>><p><% out.println(position(i,0)); %></p></label>
			  	</div>
			</div>

			<% } %>
			
			<div class = "divider"></div>
			<input class = "submit" type = "submit" value = "CHECKOUT">
			<div class = "divider"></div>
	
		</form>
		

			
	</div>
	
</body>

</html>