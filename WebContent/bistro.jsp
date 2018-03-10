<% 
/*
* This file contains contains the HTML and Java for the The Bistro
* menu page. 
* Contributors: Michael
*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - The Bistro</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
	<%@ include file = "header.jsp" %>
	
		
	<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/bistro-logo.png" alt="The Bistro Dining Options" >
			
			<div class = "dining-description">
				<h2>The Bistro</h2>
				<p>A modern eatery featuring an open kitchen, sushi bar, 
					and a Pacific Rim-inspired menu. Chefs draw from various 
					Asian cultures to serve up the freshest seafood, crisp greens, 
					local produce inspired vegetarian fare, and noodle dishes. 
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
			//menu entries for The Bistro
			public String[][] menu = { 
					{"Bistro Salad w/ Hoisin Chicken - $9.00", "9.00"},
			        {"Chicken Potstickers - $9.00", "9.00"},
			        {"Fresh Spring Rolls - $6.95", "6.95"},
			        {"Steamed Pork Belly Buns - $8.00", "8.00"},
			        {"Asian BBQ Pork Loin - $12.00", "12.00"},
			        {"Beef Tenderloin w/ Miso Butter and Chimichuri - $19.00", "19.00"},
			        {"Pork Char Sui Ramen Soup Bowl - $10.00", "10.00"},
			        {"Spicy Yellow Curry Seared Tofu - $9.00", "9.00"},
			        {"Dragon Roll - $13.00", "13.00"},
			        {"Eel Nigiri Plate - $4.00", "4.00"},
			        {"Hamachi Nigiri Plate - $4.00", "4.00"},
			        {"The Sun God Roll - $13.00", "13.00"},
			        {"Lemongrass Ginger Brulee - $5.00", "5.00"}
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