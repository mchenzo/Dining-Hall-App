<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - OceanView Terrace</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
</head>

<body>
	<%@ include file = "header.jsp" %>
	
		<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/ovt-logo.png" alt="OVT Dining Options" >
			
			<div class = "dining-description">
				<h2>OceanView Terrace</h2>
				<p>This newly renovated restaurant features stone hearth pizzas, 
				salads, fresh baked desserts, Halal-friendly and Certified Kosher 
				options, as well as, a 24/7 coffee and gelato bar.
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
					{"Mediterranean Rigatoni - $4.95", "4.95"},
			        {"Fire Roasted Torrey's Chicken Wings - $9.00", "9.00"},
			        {"Garlic Cuscinos - $2.95", "2.95"},
			        {"Artichoke and Spinach Pizza - $5.25", "5.25"},
			        {"Mergherita Pizza - $5.25", "5.25"},
			        {"Mushroom & Sausage Pizza - $5.25", "5.25"},
			        {"Southwest Pizza - $2.75", "2.75"},
			        {"The 4.0 Specialty Pizza - $3.64", "3.64"},
			        {"The Full Ride Specialty Pizza - $3.64", "3.64"},
			        {"Nutella Gone Bananas Spread - $3.64", "3.64"},
			        {"Apple Kale Smoothie - $6.95", "6.95"},
			        {"Pomegranate Blueberry Smoothie - $6.95", "6.95"},
			        {"Strawberry Mango Smoothie - $3.75", "3.75"}
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