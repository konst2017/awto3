/*price range*/

/*
jQuery('#form').submit(function (e) {
    e.preventDefault();
    var peopleData=$(this).serialize();
    $.ajax({
        type: "GET",
        url: '/towar/index',
       
        timeout: 20000,
        dataType: datatype,
        data: peopleData,
        success: function(result){console.log(result);},
        error: function(err){console.log(err);}
    });
});

*/


 /*
	$(document).ready(function() {
    $('#form').on('beforeSubmit', function() {
        // Получаем объект формы
        var $testform = $(this);
        // отправляем данные на сервер
        $.ajax({
            // Метод отправки данных (тип запроса)
            type : $testform.attr('method'),
            // URL для отправки запроса
            url : $testform.attr('action'),
            // Данные формы
            data : $testform.serializeArray()
        }).done(function(data) {
                if (data.error == null) {
                    // Если ответ сервера успешно получен
                    $("#output").text(data.data.text)
                } else {
                    // Если при обработке данных на сервере произошла ошибка
                    $("#output").text(data.error)
                }
        }).fail(function() {
            // Если произошла ошибка при отправке запроса
            $("#output").text("error3");
        })
        // Запрещаем прямую отправку данных из формы
        return false;
    })
})
*/

 $('#sl2').slider();

    $('.catalog').dcAccordion({
        speed: 300
    });

    function showCart(cart){
        $('#cart .modal-body').html(cart);
        $('#cart').modal();
    }

    function getCart(){
        $.ajax({
            url: '/awto/cart/show',
            type: 'GET',
            success: function(res){
                if(!res) alert('Ошибка!');
                showCart(res);
            },
            error: function(){
                alert('Error!');
            }
        });
        return false;
    }

    $('#cart .modal-body').on('click', '.del-item', function(){
        var id = $(this).data('id');
        $.ajax({
            url: '/awto/cart/del-item',
            data: {id: id},
            type: 'GET',
            success: function(res){
                if(!res) alert('Ошибка!');
                showCart(res);
            },
            error: function(){
                alert('Error!');
            }
        });
    });

    function clearCart(){
        $.ajax({
            url: '/awto/cart/clear',
            type: 'GET',
            success: function(res){
                if(!res) alert('Ошибка!');
                showCart(res);
            },
            error: function(){
                alert('Error!');
            }
        });
    }

    $('.add-to-cart').on('click', function (e) {
        e.preventDefault();
        var id = $(this).data('id'),
            qty = $('#qty').val();
        $.ajax({
            url: '/awto/cart/add',
            data: {id: id, qty: qty},
            type: 'GET',
            success: function(res){
                if(!res) alert('Ошибка!');
                showCart(res);
            },
            error: function(){
                alert('Error2!');
            }
        });
    });

	var RGBChange = function() {
	  $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
	};	
		
/*scroll to top*/

$(document).ready(function(){
	$(function () {
		$.scrollUp({
	        scrollName: 'scrollUp', // Element ID
	        scrollDistance: 300, // Distance from top/bottom before showing element (px)
	        scrollFrom: 'top', // 'top' or 'bottom'
	        scrollSpeed: 300, // Speed back to top (ms)
	        easingType: 'linear', // Scroll to top easing (see http://easings.net/)
	        animation: 'fade', // Fade, slide, none
	        animationSpeed: 200, // Animation in speed (ms)
	        scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
					//scrollTarget: false, // Set a custom target element for scrolling to the top
	        scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
	        scrollTitle: false, // Set a custom <a> title if required.
	        scrollImg: false, // Set true to use image
	        activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
	        zIndex: 2147483647 // Z-Index for the overlay
		});
	});
});
