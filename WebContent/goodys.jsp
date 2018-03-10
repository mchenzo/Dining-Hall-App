<% 
/*
* This file contains contains the HTML and Java for the Goodys
* menu page. 
* Contributors: Michael, Esther
*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - Goody's Place</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
</head>

<body>
	<%@ include file = "header.jsp" %>
	
	<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/goodys-logo.png" alt="Goody's Place" >
			
			<div class = "dining-description">
				<h2>Goody's Place</h2>
				<p>Serving signature burritos and bowls all day long, 
				Goody’s offers a variety of proteins to choose from. 
				Options include a breakfast burrito to-go and fully 
				customized burrito bowls.
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
			//menu entries for Goody's
			public String[][] menu = { 
					{"Achiote Chicken Bowl - $7.25", "7.25"},
			        {"Achiote Chicken Burrito - $7.25", "7.25"},
			        {"Carne Asada Bowl - $6.95", "6.95"},
			        {"Carne Asada Burrito - $5.25", "5.25"},
			        {"Carne Asada Salad - $5.25", "5.25"},
			        {"Tofu Fajita Bowl - $5.25", "5.25"},
			        {"Tofu Fajita Burrito - $2.75", "2.75"},
			        {"Carnitas Bowl - $3.64", "3.64"},
			        {"Carnitas Burrito - $3.64", "3.64"},
			        {"Carnitas Salad - $3.64", "3.64"},
			        {"Tortilla Chips - $1.00", "1.00"},
			        {"Churros - $2.50", "2.50"},
			        {"Goody's Guacamole - $3.00", "3.00"}
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