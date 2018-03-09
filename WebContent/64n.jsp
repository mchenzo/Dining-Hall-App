<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - 64 North</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
</head>

<body>
	<%@ include file = "header.jsp" %>
	
	<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/64n-logo.png" alt="Sixty-Four North Dining Options" >
			
			<div class = "dining-description">
				<h2>Sixty-Four North</h2>
				<p>Sixty-Four's very own sit-down dining location offers a mix of 
					California cuisine featuring local vegetables and 
					trending international dishes.
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
					{"Ahi Poke Salad - $10.00", "10.00"},
			        {"Chipotle Shrimp Linguini - $12.00", "12.00"},
			        {"Penne Pasta Primavera - $10.00", "10.00"},
			        {"Roasted Mushroom Risotto - $10.00", "10.00"},
			        {"Turkey Cauliflower Meatball & Soft Polenta - $8.00", "8.00"},
			        {"Green Chile Cheddar Meatloaf - $10.00", "10.00"},
			        {"Brussel Sprouts with Pancetta - $2.75", "2.75"},
			        {"Garlic Mashed Potatos - $3.64", "3.64"},
			        {"Grilled Baby Bok Choy - $3.64", "3.64"},
			        {"Coconut Cardamom Panna Cotta Plate - $7.00", "7.00"},
			        {"Mocha Mousse Cheesecake Plate - $6.95", "6.95"},
			        {"Orange Almond Cake & Cream Cheese Frosting - $6.95", "6.95"},
			        {"Skillet Peach & Blueberry Cobbler - $7.00", "7.00"}
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