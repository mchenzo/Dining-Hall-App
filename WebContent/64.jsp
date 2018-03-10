<% 
/*
* This file contains contains the HTML and Java for the 64 Degrees
* menu page. 
* Contributors: Michael, Saar
*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - 64 Degrees</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
	<%@ include file = "header.jsp" %>
	
		
	<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/64-logo.png" alt="64 Degrees Dining Options" >
			
			<div class = "dining-description">
				<h2>Sixty-Four Degrees</h2>
				<p>Offering a modern vibe, choose from five stations featuring burgers, 
					shakes, salads, sandwiches, as well as, rotisserie and wok specials.
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
			//menu entries for 64
			public String[][] menu = { 
					{"Bobcat Breakfast Sandwich - $3.95", "3.95"},
			        {"Buffalo Chicken Oozer - $6.50", "6.50"},
			        {"Grilled Pastrami Reuben Sandwich - $6.95", "6.95"},
			        {"Chipotle Black Bean Burger - $5.25", "5.25"},
			        {"Gardein Burger - $5.25", "5.25"},
			        {"Herbed Chicken Sandwich - $5.25", "5.25"},
			        {"Sweet Potato Fries - $2.75", "2.75"},
			        {"Chocolate Milkshake - $3.64", "3.64"},
			        {"Strawberry Milkshake - $3.64", "3.64"},
			        {"Vanilla Milkshake - $3.64", "3.64"},
			        {"Crunchy Orange Chicken - $6.95", "6.95"},
			        {"Spicy Dragon Shrimp Bowl - $6.95", "6.95"},
			        {"Pork Postickers - $3.75", "3.75"}
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