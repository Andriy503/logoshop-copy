<?php 
// перевірка на авторизацію користувача
	session_start();
	include("include/functions/db_connect.php");

// GET запит на вибірку по моделях
	    if(isset($_GET['brand']) && isset($_GET['type'])){
	    	$brand = $_GET['brand'];
	    	$type = $_GET['type'];
	    }

// GET запит на сортування
		if(isset($_GET['sort'])){
			$sorting = $_GET['sort'];

			switch ($sorting) {
				case 'price-asc':
					$sorting = "price ASC";
					$sort_name = "Від дешевих до дорогих";
					break;
				case 'price-desc':
					$sorting = "price DESC";
					$sort_name = "Від дорогих до дешевих";
					break;
				case 'popular':
					$sorting = "count DESC";
					$sort_name = "Популярні";
					break;
				case 'news':
					$sorting = "date_time ASC";
					$sort_name = "Новинки";
					break;
				case 'brand':
					$sorting = "brand";
					$sort_name = "Від А по Я";
					break;

				default:
					$sorting = "id DESC";
					break;
			}
	    }
// GET запит на пошук по параметрах
	    if(isset($_GET['send_filters_search'])){

	    	if(!empty($_GET['start_price']) || !empty($_GET['end_price'])){
	    		$start_price = $_GET['start_price'];
	    		$end_price = $_GET['end_price'];

	    		if (!empty($_GET['brand'])) {
	    			$check_brand = implode(",", $_GET['brand']);
	    		}

	    	}
	    }
// GET запит на пошук
	    if(isset($_GET['send_search'])) { 
	    	// echo strlen($_GET['search_name']);
	    	if(strlen($_GET['search_name']) > 50){
	    		$name_search = "";
	    	} else {
	    		$name_search = trim($_GET['search_name']);
	    	}
	    }
// nav силки новинки, в тренді, акції
	    if(isset($_GET['go'])){
	    	$go = trim($_GET['go']);
	    	switch ($go) {
	    		case 'news':
	    			$sql_nav_menu = " AND `news` = 1 ";
	    			break;

	    		case 'liders':
	    			$sql_nav_menu = " AND `leader` = 1 ";
	    			break;
	    		
	    		case 'sale':
	    			$sql_nav_menu = " AND `sale` = 1 ";
	    			break;
	    	}
	    }
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>LogoShop</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/content.css">
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
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
	
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
				<div class="back_feed">
					<div class="mini_bg_feed"></div>
					<h2 class="title_feedback">Зворотній зв'язок</h2>	
				</div>

				<div class="message_feedback">
					<center><span class="text_feed">Заповніть коректно форму!</span></center>
				</div>

<!--  -->
				<div class="popup" data-popup="popup-1">
					<div class="popup-inner">
						<h2>Добрий день! Ваша заявка відправлена! ;)</h2>
							<p>Буде розглянута найближчим часом! Інформація про дану заявку ви зможете переглянути по електроній пошті на яку буде відправленно SMS-повідомлення! <strong>Гарного дня козаче!</strong>.</p>
							<p><a data-popup-close="popup-1" href="#" class="two_close_feedback">Close</a></p>
						<a class="popup-close" data-popup-close="popup-1" id="close_feedback" href="#">x</a>
					</div>
				</div>
<!--  -->



				<div class="main_form_feed">
					<h2 class="cont_us_feed">Contact us</h2>

					<form method="POST" id="form_feedback">
						<label>Ваше Ім'я: <input type="text" name="name_feedback" id="name_feedback" placeholder="не менше 3 символів..."></label><br>
						<label>e-mail: <input type="text" name="surname_feedback" id="surname_feedback" placeholder="введіть e-mail..."></label><br>
						<label>Тема: <input type="text" name="topic_feedback" id="topic_feedback" placeholder="введыть тему..."></label><br>
						<label>Текст повідомлення: <textarea class="textarea_feed" name="textarea_feed" id="textarea_feed" placeholder="не менше 5 символів..."></textarea></label><br>
					</form>

					<input type="submit" data-popup-open="popup-1" name="send" value="Відправити" class="send_feedback">
				</div>
				
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