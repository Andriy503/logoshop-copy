<?php 

	if($_SERVER['REQUEST_METHOD'] == "POST") {
		$id = $_POST['id'];

		$connect_db_basket_remove = new PDO("mysql:host=localhost;dbname=db_logoshop", "root", "");	
		$query_rm = $connect_db_basket_remove->prepare(" DELETE FROM `basket` WHERE `ip_user` = '".$_SERVER['REMOTE_ADDR']."' AND `id` = $id ");
		$query_rm->execute();

	}

?>