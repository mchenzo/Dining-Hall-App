<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DORMDASH - Cafe Ventanas</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
</head>

<body>
	<%@ include file = "header.jsp" %>
	
	<div class = "container">
	
		<div class = "dining-header col-3-5">
			<img src="./images/cafev-logo.png" alt="Cafe Ventanas Dining Options" >
			
			<div class = "dining-description">
				<h2>Cafe Ventanas</h2>
				<p>Breathtaking architectural design includes 30-foot glass walls, 
				open natural wood beam ceilings, and a large outdoor dining patio 
				and amphitheater. Enjoy a rotation of made-to-order regional 
				cuisines including delicious poke bowls.
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
					{"Pan Blasted Stir-fry - $6.95", "6.95"},
			        {"City Dish Roasted Chicken - $4.75", "4.75"},
			        {"Grilled Salmon Kyoto - $7.95", "7.95"},
			        {"Grilled Tri-Tip - $6.75", "6.75"},
			        {"Cheeseburger - $4.95", "4.95"},
			        {"Chipotle Black Bean Burger - $5.25", "5.25"},
			        {"Double Burger - $6.25", "6.25"},
			        {"Buffalo Chicken Pizza - $2.50", "2.50"},
			        {"Seafood Chowder - $3.50", "3.50"},
			        {"Tomato Red Pepper Bisque - $3.50", "3.50"},
			        {"Hot Link Pasta Bake - $4.95", "4.95"},
			        {"Jasmine Rice - $1.50", "1.50"},
			        {"Poblano Au Gratin - $2.00", "2.00"}
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