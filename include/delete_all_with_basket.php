<?php 

	if($_SERVER['REQUEST_METHOD'] == "POST") {
		$connect_all_rm= new PDO("mysql:host=localhost;dbname=db_logoshop", "root", "");	
		$query = $connect_all_rm->prepare(" DELETE FROM `basket` WHERE `ip_user` = '".$_SERVER['REMOTE_ADDR']."' ");
		$query->execute();
	}

?>