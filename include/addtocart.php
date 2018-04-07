<?php 
	if($_SERVER['REQUEST_METHOD'] == "POST") {
		$id = $_POST['id'];
		$connect_basket = new PDO("mysql:host=localhost;dbname=db_logoshop", "root", "");


		$query_basket = $connect_basket->prepare("SELECT * FROM `basket` WHERE `ip_user` = '".$_SERVER['REMOTE_ADDR']."' AND `id_tovary` = '".$id."' ");
		$query_basket->execute();
		$row_result = $query_basket->fetch(PDO::FETCH_ASSOC);
		$num_rows = $query_basket->rowCount();


		if($num_rows > 0) {
			$new_count = ($row_result['count_tovary'] + 1);

			$query_basket = $connect_basket->prepare(" UPDATE `basket` SET `count_tovary` = '".$new_count."' WHERE `ip_user` = '".$_SERVER['REMOTE_ADDR']."' AND `id_tovary` = $id ");
			$query_basket->execute();
			
			echo "update_tov_count_plus_one";
		} else {
			$query_basket = $connect_basket->prepare( " SELECT * FROM `tovary` WHERE `id` = $id " );
			$query_basket->execute();
			$row_result = $query_basket->fetch(PDO::FETCH_ASSOC);

			$query_all_tovary = $connect_basket->prepare( " INSERT INTO `basket` (`id_tovary`, `price_tovary`, `basket_datatime`, `ip_user`) VALUES ('".$row_result['id']."', '".$row_result['price']."', NOW(), '".$_SERVER['REMOTE_ADDR']."' )" );
			$query_all_tovary->execute();

			echo "add_to_basket";
		}
	}

?>