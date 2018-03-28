<?php 
	if($_SERVER['REQUEST_METHOD'] == 'POST') {
		$search = trim(strtolower($_POST['text']));
		
		$connect = new PDO("mysql:host=localhost;dbname=db_logoshop", "root", "");
		$query = $connect->prepare( " SELECT * FROM `tovary` WHERE `name` LIKE '%$search%' AND `visible` = 1 " );
		$query->execute();

		$num_rows_query = $query->rowCount();
	
		if($num_rows_query > 0) {
			$query2 = $connect->prepare( " SELECT * FROM `tovary` WHERE `name` LIKE '%$search%' AND `visible` = 1 LIMIT 10" );
			$query2->execute();
		}

		while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
			$tt = "efef";
			echo '
				<li><a href="index.php?search_name='.$row['name'].'&send_search=Знайти ">'.$row['name'].'</a></li>
			';
		}
	}
?>