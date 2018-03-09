<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - Pines</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
		<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/pines-logo.png" alt="Pines Dining Options" >
			
			<div class = "dining-description">
				<h2>Pines</h2>
				<p>Featuring made-to-order sushi, an expansive salad and deli bar,
				 grill and cantina specials, as well as, a decadent dessert station.
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
					{"Taco Salad - $3.95", "3.95"},
			        {"Coconut Farro - $6.50", "6.50"},
			        {"Mexican Poblano Chile and Corn - $6.95", "6.95"},
			        {"Cheese Pizza - $5.25", "5.25"},
			        {"The Works Pizza - $5.25", "5.25"},
			        {"Barbecue Chicken Pizza - $5.25", "5.25"},
			        {"Sweet Potato Fries - $2.75", "2.75"},
			        {"Potato Bacon Soup - $3.64", "3.64"},
			        {"Tomato Red Pepper Bisque - $3.64", "3.64"},
			        {"Pines Cantina Burrito - $3.64", "3.64"},
			        {"Cheese and Black Bean Enchiladas - $6.95", "6.95"},
			        {"Pines Stir Fry - $6.95", "6.95"},
			        {"Pines Hand-Rolled Sushi - $7.75", "7.75"}
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