<?php 

	class singleton {
		// захищаємо від створення екземплярів класу
		private function __construct(){}

		// захищаємо від клонування класу
		private function __clone(){}

		// змінна екземпляру даного класу
		private static $instance;

		private static $connect_feed;
		private static $sql_feed;
		private static $quey_feed;

		public $name_feedback = "1";
		public $surname_feedback = "1";
		public $topic_feedback = "1";
		public $textarea_feed = "1";

		public function variable_test($name_feedback="", $surname_feedback="",  $topic_feedback="", $textarea_feed="") {
			$this->name_feedback = $name_feedback;
			$this->surname_feedback = $surname_feedback;
			$this->topic_feedback = $topic_feedback;	
			$this->textarea_feed = $textarea_feed;
		}

		public function getValue() {
			echo "name = ".$this->name_feedback.", mail = ".$this->surname_feedback.", topic = ".$this->topic_feedback.", message = ".$this->textarea_feed;
		}

		public static function getInstance() {
			if(empty(self::$instance)){
				self::$instance = new self();
			}
				return self::$instance;
		}

		public function setConnect() {
			self::$connect_feed = new PDO("mysql:host=mysql.zzz.com.ua;dbname=siko503", "siko503", "Sikosikosiko123");
			self::$sql_feed = ("INSERT INTO `feedback_message` (`name`, `mail`, `topic`, `message`, `datatime`) VALUES ('".$this->name_feedback."','".$this->surname_feedback."','".$this->topic_feedback."','".$this->textarea_feed."',NOW() )");
			self::$quey_feed = self::$connect_feed->prepare(self::$sql_feed);
			self::$quey_feed->execute();
			// $ttt = __CLASS__;

		}
	}

$one_class = singleton::getInstance();

$name_feedback = $_POST['name_feedback'];
$surname_feedback = $_POST['surname_feedback'];
$topic_feedback = $_POST['topic_feedback'];
$textarea_feed = $_POST['textarea_feed'];

$one_class->variable_test($name_feedback, $surname_feedback, $topic_feedback, $textarea_feed);
$one_class->getValue();
$one_class->setConnect();

?>