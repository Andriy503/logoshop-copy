<?php
	$name_feedback = $_POST['name_feedback'];
	$surname_feedback = $_POST['surname_feedback'];
	$topic_feedback = $_POST['topic_feedback'];
	$textarea_feed = $_POST['textarea_feed'];

	if((count($name_feedback) > 2) && (count($surname_feedback) > 2) && (count($textarea_feed) > 5 )){
		send_mail(
			$surname_feedback,
			'andriy.sokolovskiy.97@mail.ru',
			$topic_feedback, 
			"від:  ".$name_feedback."<br>".$textarea_feed
		);
		echo "true";

	} else {
		echo "false";	
	}

?>