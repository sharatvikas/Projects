<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title> Gameshop - Home </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/gs_styles.css" /> 
	<link rel="stylesheet" href="css/iview.css" />
	<link rel="stylesheet" href="css/skin 3/styles.css" />
	<script src="js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/raphael-min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.js"></script>
	<script src="js/iview.js"></script>
	<script>
		$(document).ready(function(){
		$('#iview').iView({
				pauseTime: 7000,
				pauseOnHover: true,
				directionNav: false,
				directionNavHide: false,
				controlNav: true,
				controlNavNextPrev: false,
				controlNavThumbs: true,
				timer: "Pie",
				timerDiameter: 40,
				timerPadding: 4,
				timerStroke: 4,
				timerBarStroke: 0,
				timerColor: "#0F0",
				timerPosition: "bottom-right",
				timerX: 20,
				timerY: 70
			});
		});
	</script>	

</style>
</head>
<body>
	<header>
		<a href="index.html" id="logo"><p>Game Shop</p></a>
		<nav>
		<a href="#" id="menu-icon"></a>
		<input type="text"  id="search"  placeholder="What are you Searching for ?">
		<ul>
			<li> <a href="index.php" class="current">Home</a></li>
			<li> <a href="about.php" class="current">About</a></li>
			<li> <a href="login.php" class="current">Login/Register</a></li>
			<li> <a href="cart.php" class="current">Cart</a></li>
			<li> <a href="contact.php" class="current">Contact Us</a></li>
		</ul>
		</nav>
	</header>
		<div class="container">
			<div id="iview">
			<div data-iview:thumbnail="photos/uncharted_4.jpg" data-iview:image="photos/uncharted_4.jpg">
				<div class="iview-caption caption1" data-x="30" data-y="300" data-transition="expandDown" data-iview:pausetime="4000"> The Most Popular Game of the Year! </div>
			</div>
			<div data-iview:thumbnail="photos/halo_wars.jpg" data-iview:image="photos/halo_wars.jpg" data-iview:transition="block-drop-random" data-iview:pausetime="4000">
				<div class="iview-caption caption2" data-x="50" data-y="30" data-transition="expandRight"> An exciting new strategy packed with fast-paced action & an all-new Story! </div>
			</div>
			<div data-iview:thumbnail="photos/Counter_Strike_Global_Offensive.jpg" data-iview:image="photos/Counter_Strike_Global_Offensive.jpg">
				<div class="iview-caption caption1" data-x="570" data-y="50" data-transition="expandLeft" data-iview:pausetime="4000"> The All Time Favorite Game is going Strong! </div>
			</div>
			<div data-iview:thumbnail="photos/street_fighter.jpg" data-iview:image="photos/street_fighter.jpg"><div class="iview-caption caption1" data-x="20" data-y="300" data-transition="fade" data-iview:pausetime="4000"> Street Fighter V gives you Charaters with Mad Skills and Moves! </div>
			</div>
		</div>
	</div>
	<section>
		<img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\rent.jpg">
		<h1> Rent </h1>
		<p> Rent your favorite games for the best price you can get anywhere!</p>
	</section>
	<section>
		<img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\buy.png">
		<h1> Buy </h1>
		<p> Buy your favorite games for the best price you can get anywhere!</p>
	</section>
	<section>
		<img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\sell.jpg">
		<h1> Sell </h1>
		<p> Sell your favorite games for the best price you can get anywhere!</p>
	</section>
	<article>
	<img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\article1.jpg">
	</article>
	<aside>
		<h2> Gaming Center: </h2>
		<ul class="game">
			<li><h3> Counter Stike: Warzone - $5/Hour </h3></li>
			<li><h3> Counter Stike: Global Offensive - $8/Hour </h3></li>
			<li><h3> FIFA 2016 - $8/Hour </h3></li>
			<li><h3> Battlefield - $8/Hour </h3></li>
			<li><h3> Call of Duty - $5/Hour </h3></li>
		</ul>
	</aside>
	<div class="clear"></div>
	<section> <h1> New Consoles </h1>
		<img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\consoles.jpg"> 
		<p> Order the Latest of Consoles to your Door Step! Come Down to Check outsome Exchange Offers your Old Gaming Consoles. </p>
	</section>
	<section> <h1> Accessories </h1>
		<img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\accessories.png">
		<p> Order the Latest of Accessories to make the coolest gaming experience! Visit Us to get some Special Discount. </p>
	</section>
	<section> <h1> Recycle </h1>
		<img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\recycle.jpg"> 
		<p> Order the Latest of Accessories to make the coolest gaming experience! Visit Us to get some Special Discount. </p>
	</section>
	<footer>
		<section>
			<h3><b> Game Shop</b></h3>
			<p><b>(361)-720-7959</b><br><br>
				1100 W Corral Ave <br><br>
				Kingsville, TX 78363 <br><br>
				tamuk.computersciencesociety@tamuk.edu </p>
		</section>
		<section>
			<h3> Connect with Us! </h3>
			<ul class="social">
				<li> <img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\fb_connect.jpg"> </li>
				<li> <img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\insta_connect.jpg"> </li>
				<li> <img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\youtube_connect.png"> </li>
			</ul>
		</section>
		<section>
			<img src="D:\Content Backup (Sharat Vikas)\TAMUK\Spring 2016\Database Systems\Project\Phase 4\images\logo.png">
		</section>
	</footer>
	<footer class="second">
		<p> Copyright - Gameshop,2016. </p>
	</footer>
</body>
</html>