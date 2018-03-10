<% 
/*
* This file contains contains the HTML and Java for the Food Worx
* menu page. 
* Contributors: Michael, Jonathan
*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - FoodWorx</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
</head>

<body>
	<%@ include file = "header.jsp" %>
	
		
	<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/foodworx-logo.png" alt="Food Worx Dining Options" >
			
			<div class = "dining-description">
				<h2>Food Worx</h2>
				<p>Famous for their personal pizzas, Foodworx also carries fresh salads, 
				sandwiches, and grill specials. Soak up the sun on the patio, or get your 
				food to-go.
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
			//menu entries for Food Worx
			public String[][] menu = { 
					{"Grilled Cheese Sandwich - $2.95", "2.95"},
			        {"Ham Sandwich - $6.75", "6.75"},
			        {"Roast Beef Sandwich - $6.75", "6.75"},
			        {"Tuna Sandwich - $6.75", "6.75"},
			        {"Turkey Sandwich - $6.75", "6.75"},
			        {"Veggie Sandwich - $6.75", "6.75"},
			        {"BYO Salad - $6.50", "6.50"},
			        {"BYO Wrap - $6.75", "6.75"},
			        {"Buffalo Blue Salad - $6.50", "6.50"},
			        {"Casear Chicken Salad - $6.50", "6.50"},
			        {"California Wrap - $6.75", "6.75"},
			        {"Mandarin Salad - $6.50", "6.50"},
			        {"Sesame Chicken Wrap - $6.75", "6.75"}
			};

			/**
			* position method, returns the price of the desired menu entry
			* @param int r, the row of the desired entry
			* @param int c, the col of the desired entry
			* @result String representing the price of the retrieved entry
			*/
			public String position(int r, int c) {
				return menu[r][c];
			}
			%>
			
			<% 
			//for loop to render menu entries in html
			for (i = 0; i < menu.length; i++) {
			%>
			
			
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