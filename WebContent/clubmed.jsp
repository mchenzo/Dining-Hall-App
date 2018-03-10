<% 
/*
* This file contains contains the HTML and Java for the Club Med
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
	<title>DORMDASH - Club Med</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
	<%@ include file = "header.jsp" %>
	
		
	<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/clubmed-logo.png" alt="Club Med Dining Options" >
			
			<div class = "dining-description">
				<h2>Club Med</h2>
				<p>Located in the heart of the School of Medicine, 
					Club Med offers made-to-order salads, sandwiches, 
					flatbread pizzas, soups, lunch combos, and tasty desserts.
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
			//menu entries for Club Med
			public String[][] menu = { 
					{"New England Clam Chowder - $3.95", "3.95"},
			        {"Buffalo Chicken Flatbread - $6.50", "6.50"},
			        {"Mediterranean Flatbread - $6.95", "6.95"},
			        {"Fall Harvest Salad - $5.25", "5.25"},
			        {"Green Toss Salad - $5.25", "5.25"},
			        {"Calfornia Caprese Sandwich - $5.25", "5.25"},
			        {"Chicken Banh Mi Turbo Sandwich - $7.25", "7.25"},
			        {"City Slicker Roast Beef Turbo Sandwich - $7.25", "7.25"},
			        {"Pulled Pork Sandwich - $7.25", "7.25"},
			        {"Santa Fe Chipotle Chicken Turbo Sandwich - $7.25", "7.25"},
			        {"South of the Border Turbo Sandwich - $7.25", "7.25"},
			        {"Turkey Bacon Avocado Turbo Sandwich - $7.25", "7.25"},
			        {"Mandarin Salad - $6.75", "6.75"}
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