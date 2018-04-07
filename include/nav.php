<div id="block_user">
	<div class="corner"><img src="images/bulleticon.png"></div>
		<ul>
			<li><i class="material-icons">settings</i><span class="setting nav_seting">Налаштування</span></li>
			<li><i class="material-icons">exit_to_app</i><span class="logout nav_seting">Вийти</span></li>
		</ul>
</div>

<nav>
	<a href="/"><i class="large material-icons">home</i>Головна</a>
	<a href="index.php?go=news"><i class="large material-icons">sentiment_very_satisfied</i>Новинки</a>
	<a href="index.php?go=liders"><i class="large material-icons">insert_chart</i>В тренді</a>
	<a href="index.php?go=sale"><i class="large material-icons">local_mall</i>Акції</a>
 	<?php 
		if($_GET['action']){
			$class_action = "action_basket";
		}
   	 ?>
	
	<a href="cart.php?action=oneclick" class="basket_icon" id=<?php echo $class_action;?> >Корзина пуста</a>
	<!-- local_grocery_store // кошик -->
<div id="search">
	<form method="get" action="index.php" id="search_form">
		<input type="text" name="search_name" id="search_name" placeholder="Пошук..." value='<?php echo $_GET['search_name']; ?>'>
		<input type="submit" name="send_search" class="send_search" value="Знайти">
	</form>
		<ul id="result_search">
			
		</ul>
	</div>
</nav>