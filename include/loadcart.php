<?php 
	if($_SERVER['REQUEST_METHOD'] == "POST") {

		$connect_basket_test = new PDO("mysql:host=mysql.zzz.com.ua;dbname=siko503", "siko503", "Sikosikosiko123");
		$query_basket_test = $connect_basket_test->prepare(  "SELECT * FROM basket, tovary WHERE basket.ip_user = '".$_SERVER['REMOTE_ADDR']."' AND tovary.id = basket.id_tovary" );
		$query_basket_test->execute();
		$num_rows_basket = $query_basket_test->rowCount();

		if($num_rows_basket > 0) {
			$row = $query_basket_test->fetch(PDO::FETCH_ASSOC);

			do {
				$count = $count + $row['count_tovary'];
				$int = $int + ($row['price'] * $row['count_tovary']);
			} while ($row = $query_basket_test->fetch(PDO::FETCH_ASSOC));

			if($count == 1 or $count == 21) { $str = " товар "; }
			if($count == 2 or $count == 3 or $count == 4 or $count == 22 or $count == 23 or $count == 24 ) { $str = " товара "; }
			if($count == 5 or $count == 6 or $count == 7 or $count == 8 or $count == 9 or $count == 10 or $count == 11 or $count == 12 or $count == 13 or $count == 14 or $count == 15 or $count == 16 or $count == 17 or $count == 18 or $count == 19 or $count == 20 or $count == 25 or $count == 26 or $count == 27 or $count == 28 or $count == 29  or $count == 30 ) { $str = " товарів "; }
			if($count > 30){
				echo "<i class='large material-icons'>shopping_cart</i>Товарів забагато!";
				return;
			}

			echo "<i class='large material-icons'>shopping_cart</i><span>".$count.$str."</span> на суму  <span>".$int."</span>грн.";
		} else {
			echo "0";
		}
	}
	
?>