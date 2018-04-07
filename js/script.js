$(document).scroll(function() {
	if($(document).scrollTop () > $('header').height () + 10)
	$('nav').addClass('fixed');
	else 
		$('nav').removeClass('fixed');
});

$(document).ready(function () {
	$(".new_sticker").jCarouselLite({
		vertical: true,
		hoverPause:true,
		btnPrev: ".drop_up",
		btnNext: ".drop_down",
		visible: 3,
		auto:3000,
		speed:500
	});

	loadcart();

	// Вигляд кнопок
	$("#icon_grid").click(function() {
		$("#block_tovar_list").hide();
		$("#block_tovar_grid").show();

		$("#icon_grid").attr("src", "images/icon_grid_active.png");
		$("#icon_list").attr("src", "images/icon_list.png");

		$.cookie('select_style', 'grid');
	});

	$("#icon_list").click(function() {
		$("#block_tovar_grid").hide();
		$("#block_tovar_list").show();

		$("#icon_list").attr("src", "images/icon_list_active.png");
		$("#icon_grid").attr("src", "images/icon_grid.png");

		$.cookie('select_style', 'list');
	});

	if($.cookie('select_style') == 'grid'){
		$("#block_tovar_list").hide();
		$("#block_tovar_grid").show();

		$("#icon_grid").attr("src", "images/icon_grid_active.png");
		$("#icon_list").attr("src", "images/icon_list.png");
	} else if($.cookie('select_style') == 'list') {
		$("#block_tovar_grid").hide();
		$("#block_tovar_list").show();

		$("#icon_list").attr("src", "images/icon_list_active.png");
		$("#icon_grid").attr("src", "images/icon_grid.png");
	} 

	if(!$.cookie('select_style')){
		$("#icon_grid").attr("src", "images/icon_grid_active.png");
	} 

	$('#select_sort').click(function() {
		$("#sorting_list").slideToggle(200);
	});

	//*********************Акардіон
	$('#block_category > ul > li > a').click(function() {
		if($(this).attr('class') != 'active') {
			$('#block_category > ul > li > ul').slideUp(400);
			$(this).next().slideToggle(400);

				$('#block_category > ul > li > a').removeClass('active');
				$(this).addClass('active');
				$.cookie('select_cat', $(this).attr('id'));
		} else {
			$('#block_category > ul > li > a').removeClass('active');
			$('#block_category > ul > li > ul').slideUp(400);
			$.cookie('select_cat', '');
		}
	});

	if($.cookie('select_cat') != '') {
		$('#block_category > ul > li > #'+$.cookie('select_cat')).addClass('active').next().show();
	}

	$("#auth_user_info").toggle(function() {
		$("#block_user").fadeIn(400);
	}, function() {
		$("#block_user").fadeOut(400);
	});

	// ajax запит на вихід із акаунта
	$(".logout").click(function() {
		$.ajax({
			type: "POST",
			url: "include/functions/sign_in_close_session.php",
			dataType: "html",
			cache: false,
			success: function(data) {
				if(data == "logout"){
					location.reload();
				}
			}
		});
	});
	
	$(".setting").click(function() {
		window.location.replace("http://logoshop.ua/setting.php");
	});

	$(".delete_cart").click(function() {
		var id = $(this).attr("tid_id");
		$.ajax({
			type: "POST",
			url: "/include/delete_tov_with_basket.php",
			data: "id="+id,
			dataType: "html",
			cache: false
		});
	});

	$(".delete_all").click(function() {
		$.ajax({
			type: "POST",
			url: "/include/delete_all_with_basket.php",
			dataType: "html",
			cache: false
		});
	});


	$("#search_form").validate({
		rules: {
			search_name: {
				maxlength: 50
			}
		},
		messages: {
			search_name: {
				maxlength: "<span class='mes_search'>поле задовге!</span>"
			}
		}
	});

	$("#search_name").bind('textchange', function() {
		var input_search = $("#search_name").val();

		if(input_search.length > 2) {
			$.ajax({
				type: "POST",
				url: "include/functions/search_api.php",
				data: "text="+input_search,
				dataType: "html",
				cache: false,
				success: function(data) {
					if(data > ''){
						$("#result_search").show().html(data);						
					} else {
						$("#result_search").hide();
					}
				}
			});
		} else {
			$("#result_search").hide();
		}
	});

	// Перевірка одресу доставки форми на валідацію
	$("#form_order_delivery").validate({
		rules: {
			order_fio: {
				required: true,
				minlength: 2,
				maxlength: 40
			},
			order_phone: {
				required: true,
				minlength: 4,
				maxlength: 14,
				digits: true
			},
			order_address: {
				required: true,
				minlength: 2,
				maxlength: 200,
			}
		},
		messages: {
			order_fio: {
				required: "<span class='order_delivery'>Заповніть поле</span>",
				maxlength: "<span class='order_delivery'>Поле задовге</span>",
				minlength: "<span class='order_delivery'>Поле закоротке</span>"
			},
			order_phone: {
				required: "<span class='order_delivery'>Заповніть поле</span>",
				maxlength: "<span class='order_delivery'>Поле задовге</span>",
				minlength: "<span class='order_delivery'>Поле закоротке</span>",
				digits: "<span class='order_delivery'>Введіть коректно номер<span>"
			},
			order_address: {
				required: "<span class='order_delivery'>Заповніть поле</span>",
				maxlength: "<span class='order_delivery'>Поле задовге</span>",
				minlength: "<span class='order_delivery'>Поле закоротке</span>"
			}
		}
	});

	// Асинхронне додавання товарів до корзини
	$(".add_basket_list, .add_basket").click(function() {
		var tid = $(this).attr("tid");
		// alert(tid);
		$.ajax({
			type: "POST",
			url: "/include/addtocart.php",
			data: "id="+tid,
			dataType: "html",
			cache: false,
			success: function(data) {
				loadcart();
			}
		});
	});

	// Оновлеття тексту корзини nav
	function loadcart() {
		$.ajax({
			type: "POST",
			url: "/include/loadcart.php",
			dataType: "html",
			cache: false,
			success: function(data) {
				if(data == "error"){
					$(".basket_icon").html(data);
				}

				if(data == "0") {
					$(".basket_icon").html("<i class='large material-icons'>shopping_cart</i>Корзина пуста");
				} else {
					$(".basket_icon").html(data);
				}
				
			}
		});
	}

});

// <i class="large material-icons">shopping_cart</i>
