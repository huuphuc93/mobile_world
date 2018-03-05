$(function() {
  var mobile_id = "";
  function setCookie(name, arr){
     document.cookie = name +"="+ arr + ";" + "expires="+ "; path=/";
  }

  function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return "";
  }
  var add_quantity_array = "";

  add_to_cart = function(link){
    var this_id = link.id;
    var mobile_array = mobile_id.split(" ");
    if(mobile_array.includes(this_id) == false) {
      alert("add to cart");
      mobile_id += " " + this_id;
      add_quantity_array += " " + "1";
      setCookie("mobile_id", mobile_id);
      setCookie("quantity_array", add_quantity_array);
    } else {
      alert("this in cart");
    }
  }

  mobile_id = readCookie("mobile_id");

  quantity_array = readCookie("quantity_array").split(" ");

  function set_quantity (quantity_array){
    var mobile_array = mobile_id.split(" ");
    for (i = 0; i < mobile_array.length; i++ ) {
      $(".order-quantity-"+ mobile_array[i]).val(quantity_array[i]);
    }
  }

  set_quantity(quantity_array);

  if (window.location.href == "/orders") {
    load_total_money();
  }

  $('li input').on("change", function(){
    load_total_money();
  })

  function load_total_money() {
    var mobile_array = mobile_id.split(" ");
    var total_price = 0;
    var quantity_array = " ";
    for(i= 0; i< mobile_array.length; i++ ) {
      var quantity = $(".order-quantity-"+ mobile_array[i]).val();
      var price = $(".order-mobile-price-"+ mobile_array[i]).text();
      quantity_array += " "+ quantity;
      total_price += parseInt(quantity)*parseFloat(price);
      total_price = isNaN(total_price) ? 0 : total_price;
    }
    $('.total_price').text(total_price + " $");
    setCookie("quantity_array", quantity_array);
  }

  remove_item = function (link) {
    var mobile_array = mobile_id.split(" ");
    mobile_id = "";
    for(i= 0; i< mobile_array.length; i++ ) {
     if(mobile_array[i] != link.id) {
       mobile_id += " " + mobile_array[i];
     }
    }
    setCookie("mobile_id", mobile_id);
    $('.order-mobile-'+ link.id).fadeOut('slow', function(c){
      $('.order-mobile-'+ link.id).remove();
    });
    load_total_money();
  }
})
