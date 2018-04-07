<?php 
// cart.php?id='.$row['id'].'&action=delete
	if(isset($_GET['action'])){

		// видалення товара із корзини (зробив асинхронно)
		// if($_GET['action'] == 'delete') {
		// 	$id = $_GET['id'];
		// 	$query = Connect::$connect->prepare(" DELETE FROM `basket` WHERE `ip_user` = '".$_SERVER['REMOTE_ADDR']."' AND `id` = $id ");
		// 	$query->execute();
		// }

		// видалення всіх товарів із корзини (зробив асинхронно)
		// if($_GET['action'] == 'clear') {
		// 	$query = Connect::$connect->prepare(" DELETE FROM `basket` WHERE `ip_user` = '".$_SERVER['REMOTE_ADDR']."' ");
		// 	$query->execute();
		// }

		$action = $_GET['action'];
		switch($action){
			case 'oneclick':
			// mini_nav
				echo '
					<div id="block_step">
						<div id="name_step">
							<ul>
								<li><a class="active" href="">1. Корзина товарів</a></li>
								<li><span>&rarr;</span></li>
								<li><a href="">2. Контактна інформація</a></li>
								<li><span>&rarr;</span></li>
								<li><a href="">3. Завершення</a></li>
							</ul>
						</div>
						<p>крок 1 із 3</p>
						<a href="" class="delete_all"> Видалити</a>
					</div>
				';
				// *mini_nav

				$query = Connect::$connect->prepare(" SELECT * FROM tovary, basket WHERE basket.ip_user = '".$_SERVER['REMOTE_ADDR']."' AND basket.id_tovary = tovary.id ");
				$query->execute();
				$num_rows = $query->rowCount();
				
				if($num_rows > 0) {

				echo '
					<div id="header_list_card">
						<div id="header_1">Зображення</div>
						<div id="header_2">Назва товару</div>
						<div id="header_3">Кількість</div>
						<div id="header_4">Ціна</div>
					</div>
				';

				while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
					$int = $row['price_tovary'] * $row['count_tovary'];
					$all_price = $all_price + $int;
					$_SESSION['all_sum_price'] = $all_price;

					if ($row['image_src'] != "" && file_exists('images/tovary/'.$row["image_src"])){
						$img_path = 'images/tovary/'.$row["image_src"];
						$max_width = 60;
						$max_height = 60;
						list($width, $heigth) = getimagesize($img_path);
						$ratioh = $max_height / $max_width;
						$ratiow = ($max_width / $width);
						$ratio = min($ratioh, $ratiow);
						$width = intval($ratio*$width);
						$heigth = intval($ratio*$heigth);
					} else {
						$img_path = "images/tovary/no_name.png";
						$width = 60;
						$height = 60;
					}

					echo '
						<div id="block_list_cart">
							<div class="img_cart">
								<p align="center"><img src="'.$img_path.'" width="'.$max_width.'" height="'.$max_height.'" /></p>
							</div>

						<div class="title_cart">
							<p><a href="">'.$row['name'].'</a></p>
							<p class="cart_mini_features">'.$row['mini_features'].'</p>
						</div>

						<div class="count_cart">
							<ul class="input_count_style">
								<li><p align="center" class="count_minus">-</p></li>
								<li><p align="center" class="count_input"><input type="text" maxlength="3" value="'.$row['count_tovary'].'"></p></li>
								<li><p align="center" class="count_plus">+</p></li>
							</ul>
						</div>

							<div class="price_product"><h5><span class="span_sount">'.$row['count_tovary'].'</span> x <span>'.$row['price_tovary'].' грн</span></h5><p>'.($row['price_tovary'] * $row['count_tovary']).' грн</p></div>
							<div class="delete_cart" tid_id='.$row['id'].'><a href=""><img src="images/delete_tov.png" width="30"/></a></div>

							<div id="bottom_cart_line"><img src="images/bottom_line.png"></div>
						</div>
					';
				}

				echo '
					<h2 class="itog_price" align="right">Разом: <strong>'.$all_price.'</strong> грн</h2>
					<p align="right" class="button_next"><a href="cart.php?action=confirm">Далі</a></p>
				';

				} else {
					echo "<center class='gloory_smile'><img src='images/ugrumyy-smaylik.jpg' width='250'></center>";
					echo '<h3 id="clear_cart" align="center">Корзина пуста</h3>';
				}

				break;

			case 'confirm':
			// mini_nav
				echo '
					<div id="block_step">
						<div id="name_step">
							<ul>
								<li><a href="cart.php?action=oneclick">1. Корзина товарів</a></li>
								<li><span>&rarr;</span></li>
								<li><a class="active">2. Контактна інформація</a></li>
								<li><span>&rarr;</span></li>
								<li><a>3. Завершення</a></li>
							</ul>
						</div>
						<p>крок 2 із 3</p>
					</div>
				';
				// *mini_nav
				if($_SESSION['order_delivery'] == 'Нова пошта') { $chck1 = "checked";}
				if($_SESSION['order_delivery'] == 'Укр пошта') { $chck2 = "checked";}

				echo '
					<h3 class="order_title">Спосіб доставки</h3>
					<form method="POST" id="form_order_delivery">
						<ul id="info_radio">
							<li>
								<label><input type="radio" name="order_delivery" class="order_delivery" id="order_delivery1" value="Нова пошта" '.$chck1.' > Нова пошта<label>
							</li>
							<li>
								<label><input type="radio" name="order_delivery" class="order_delivery" id="order_delivery2" value="Укр пошта" '.$chck2.'> Укр пошта<label>
							</li>
						</ul>
						<h3 class="title_info_order">Інформація для доставки</h3>
						<img src="images/bottom_line.png">
						<ul id="info_order">
				';			

					if($_SESSION['auth'] != "yes") {
						echo '
							<li><label for="order_fio"><span>*</span>ПІБ</label><input type="text" name="order_fio" id="order_fio" value="'.$_SESSION['order_fio'].'" /><span class="order_span_style">Приклад: Іванов Іван Іванович</span></li>
							<li><label for="order_phone"><span>*</span>Телефон</label><input type="text" name="order_phone" id="order_phone" value="'.$_SESSION['order_phone'].'" /><span class="order_span_style">Приклад: 0990066723</span></li>
							<li><label for="order_address"><span>*</span>Адрес</label><input type="text" name="order_address" id="order_address" value="'.$_SESSION['order_address'].'" /><span class="order_span_style">Приклад: Місце доставки</span></li>
						';
					}

					echo '
							<li><label class="order_label_style" for="order_note">Додаток: </label><textarea name="order_note">'.$_SESSION['order_note'].'</textarea><span>Додаткова інформація про заказ</span></li>
							</ul>
							<p align="right"><input type="submit" name="submitdata" id="confirm_button_next" value="Далі"></p>
							</form>
						';

				break;

			case 'completion':
			// mini_nav
				echo '
					<div id="block_step">
						<div id="name_step">
							<ul>
								<li><a href="cart.php?action=oneclick">1. Корзина товарів</a></li>
								<li><span>&rarr;</span></li>
								<li><a href="cart.php?action=confirm">2. Контактна інформація</a></li>
								<li><span>&rarr;</span></li>
								<li><a class="active" href="">3. Завершення</a></li>
							</ul>
						</div>
						<p>крок 3 із 3</p>
					</div>
				';
			// *mini_nav

			echo "<h3 class='end_title'>Кінцева інформація</h3>";
			if($_SESSION['auth'] == "yes") {
				echo '
					<ul id="info_list">
						<li><strong>Спосіб доставки: </strong>'.$_SESSION['order_delivery'].'</li>
						<li><strong>ПІБ: </strong>'.$_SESSION['auth_name'].' '.$_SESSION['auth_surname'].'</li>
						<li><strong>Номер телефону: </strong>'.$_SESSION['auth_phone'].'</li>
						<li><strong>Адрес доставки: </strong>'.$_SESSION['auth_address'].'</li>
						<li><strong>Додаток: </strong>'.$_SESSION['order_note'].'</li>
					</ul>
				';
			} else {
				echo '
					<ul id="info_list">
						<li><strong>Спосіб доставки: </strong>'.$_SESSION['order_delivery'].'</li>
						<li><strong>ПІБ: </strong>'.$_SESSION['order_fio'].'</li>
						<li><strong>Номер телефону: </strong>'.$_SESSION['order_phone'].'</li>
						<li><strong>Адрес доставки: </strong>'.$_SESSION['order_address'].'</li>
						<li><strong>Додаток: </strong>'.$_SESSION['order_note'].'</li>
					</ul>	
				';
			}

			echo '<h2 class="itog_price2" align="right">Разом: <strong>'.$_SESSION['all_sum_price'].'</strong> грн</h2>';
			echo '<p align="right"><input type="submit" name="paydata" id="confirm_button_pay" value="Оплатити"></p>';

			break;
		}
	}
?>