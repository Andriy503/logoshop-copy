<?php 
session_start();

if($_SERVER["REQUEST_METHOD"] == "POST") { 

	$login = $_POST['login'];
	$connect = new PDO("mysql:host=mysql.zzz.com.ua;dbname=siko503", "siko503", "Sikosikosiko123");
	$sql_num_rows = $connect->prepare(" SELECT COUNT(*) FROM `users` WHERE `login` = '".$login."' ");
	$sql_num_rows->execute();
	$num_rows = $sql_num_rows->fetchColumn();

	if($num_rows == 1) {
		if($_SESSION['auth_login'] == $login) {
			echo "true";
		} else {
			echo "false";
		}
	} else {
		echo "true";
	}
}
?>