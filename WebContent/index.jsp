<% 
/*
* This file contains contains the HTML and Java for the Dormdash
* home page. It is mainly comprised of HTML.
* Contributors: Michael
*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Dormdash</title>
	<link href = "./styles/style.css" rel="stylesheet" type = "text/css">
	<link rel = "stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700">
</head>

<body>

	<%@ include file = "header.jsp" %>

	<div class = "container">
	
		<section class = "category-header" >
			<h1>Dining Halls</h1>
		</section>
			
		<section class = "row">
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=64">
					<div class = "teaser">
						<img src="./images/64.jpg" alt="64 Degrees">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>64 Degrees</h2>
							</div>
							<div class = "description">
								<span>Revelle College</span>
								<p>Wok bowls, salads, burgers, tacos and more</p>
								<span class="eta">5 mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
			
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=cv">
					<div class = "teaser">
						<img src="./images/cv.jpg" alt="Canyon Vista">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>Canyon Vista</h2>
							</div>
							<div class = "description">
								<span>Earl Warren College</span>
								<p>Gyudon bowls, ramen, and overcooked pasta</p>
								<span class="eta">20+ mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
			
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=pines">
					<div class = "teaser">
						<img src="./images/pines.jpg" alt="Pines">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>Pines</h2>
							</div>
							<div class = "description">
								<span>John Muir College</span>
								<p>Custom stir fry, sushi, and Italian food a la carte</p>
								<span class="eta">11 mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
		</section>
		
		<div class = "divider"></div>
		
		<section class = "row">
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=cafev">
					<div class = "teaser">
						<img src="./images/cafev.jpg" alt="Cafe Ventanas">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>Cafe Ventanas</h2>
							</div>
							<div class = "description">
								<span>ERC</span>
								<p>Wok bowls, salads, burgers, tacos and more</p>
								<span class="eta">8 mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
			
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=ovt">
					<div class = "teaser">
						<img src="./images/ovt.jpg" alt="Ocean View Terrace">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>OceanView Terrace</h2>
							</div>
							<div class = "description">
								<span>Marshall College</span>
								<p>Hand made pizza, 24 hour dessert & beverage bar</p>
								<span class="eta">18 mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
		
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=foodworx">
					<div class = "teaser">
						<img src="./images/foodworx.jpg" alt="Food Worx">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>Food Worx</h2>
							</div>
							<div class = "description">
								<span>Sixth College</span>
								<p>Not entirely sure what they serve here</p>
								<span class="eta">ETA Unknown</span>
							</div>
						</div>
					</div>
				</a>
			</div>
		</section>
		
		<div class = "divider"></div>
		
		<section class = "category-header" >
			<h1>Specialty Dining</h1>
		</section>
		
		<section class = "row">
		
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=64north">
					<div class = "teaser">
						<img src="./images/64n.png" alt="64 North">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>Sixty-Four North</h2>
							</div>
							<div class = "description">
								<span>Revelle College</span>
								<p>Fancy food for fancy people</p>
								<span class="eta">17 mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
			
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=bistro">
					<div class = "teaser">
						<img src="./images/bistro.png" alt="The Bistro">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>The Bistro</h2>
							</div>
							<div class = "description">
								<span>The Village East</span>
								<p>Fancy food for fancy people</p>
								<span class="eta">18 mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
		
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=goodys">
					<div class = "teaser">
						<img src="./images/goodys.png" alt="Goody's Place">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>Goody's Place</h2>
							</div>
							<div class = "description">
								<span>Marshall College</span>
								<p>Fresh, hand-made burritos</p>
								<span class="eta">5 min</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
		</section>

		<div class = "divider"></div>

		<section class = "row">
		
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=roots">
					<div class = "teaser">
						<img src="./images/roots.png" alt="Roots">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>Roots</h2>
							</div>
							<div class = "description">
								<span>John Muir College</span>
								<p>Vegan and vegetarian cuisine</p>
								<span class="eta">12 mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=clubmed">
					<div class = "teaser">
						<img src="./images/clubmed.png" alt="Club Med">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>Club Med</h2>
							</div>
							<div class = "description">
								<span>School of Medicine</span>
								<p>Stuff they feed med students</p>
								<span class="eta">14 mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
			<div class = "col-1-3 diningHall">
				<a href = "/Controller?action=world">
					<div class = "teaser">
						<img src="./images/world.png" alt="Flavors of the World Food Truck">
						<div class = "flex-container">
							<div class = "dining-hall-logo">
								<h2>Flavors of the World</h2>
							</div>
							<div class = "description">
								<span>Food Truck</span>
								<p>New and exotic tastes</p>
								<span class="eta">7 mins</span>
							</div>
						</div>
					</div>
				</a>
			</div>
			
		</section>
		
	</div>
	
	<%@ include file = "footer.html" %>
	
	
</body>
</html>