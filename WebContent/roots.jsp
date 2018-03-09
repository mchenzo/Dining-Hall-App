<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - Roots</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
</head>

<body>
	<%@ include file = "header.jsp" %>
	
	<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/roots-logo.png" alt="Roots Dining Options" >
			
			<div class = "dining-description">
				<h2>Roots</h2>
				<p>Roots is the university's first exclusively vegan eatery
				 and lounge. Located on the Muir College campus below Pines 
				 Restaurant, Roots has a clean, modern feel that reflects 
				 its menu perfectly. Diners can choose from a delicious 
				 variety of hearty entrees, sides, and smoothies.
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
					{"Potato Gnocchi - $6.00", "6.00"},
			        {"Pacheco Pass Stacked Enchiladas - $6.50", "6.50"},
			        {"BBQ Jackfruit Sandwich - $6.95", "6.95"},
			        {"The Root Berger - $8.00", "8.00"},
			        {"Vegan Chiken Sandwich - $8.00", "8.00"},
			        {"Three Rivers Tacos - $8.00", "8.00"},
			        {"Grilled Romaine Heart - $6.00", "6.00"},
			        {"Ginger Tofu & Greens - $8.00", "8.00"},
			        {"Roots Vegan Hot Kettle Chili - $4.00", "4.00"},
			        {"Sweet Potato Chili Cheese Fries - $6.00", "6.00"},
			        {"Carrot-Apple-Ginger Juice - $5.00", "5.00"},
			        {"Island Flavor Smoothie - $5.00", "5.00"},
			        {"Strawberry Lemonade Chiller - $3.75", "3.75"}
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