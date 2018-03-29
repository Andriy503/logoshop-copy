<?php 
// перевірка на авторизацію користувача
	session_start();
	include("include/functions/db_connect.php");
	
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Корзина</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/content.css">
	<link rel="stylesheet" type="text/css" href="css/style_cart.css">
	<link rel="stylesheet" type="text/css" href="js/library/track/jQuery/trackbar.css">
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.png">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!-- icons -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- JS -->
	<script src="js/library/jquery.js"></script>
	<script type="text/javascript" src="js/library/jcarousellite_1.0.1.js"></script>
	<script type="text/javascript" src="js/library/jquery.cookie-1.4.1.min.js"></script>
	<script type="text/javascript" src="js/library/track/jQuery/jquery.trackbar.js"></script>
	<script type="text/javascript" src="js/script.js"></script>

	<script type="text/javascript" src="js/library/jquery.form.js"></script>
	<script type="text/javascript" src="js/library/jquery.validate.js"></script>
	<script type="text/javascript" src="js/library/textchange.js"></script>
	
</head>
<body>
	<div class="wrapper">
		<div class="content">
			<!-- header  -->
			<?php include("include/header.php"); ?>

			<!-- nav -->
			<?php include("include/nav.php"); ?>

			<!-- Контент -->

			<div id="block_content">
				<?php include("include/block_content_cart.php"); ?>
			</div>

			<div id="block_category_filter">
				<?php include("include/filters.php");
					  include("include/params_filters.php");
					  include("include/news.php");
				?>
			</div>
		</div>		

			<?php include("include/footer.php"); ?>
	</div>

</body>
</html>

