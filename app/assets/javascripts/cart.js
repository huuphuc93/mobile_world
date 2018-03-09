$(function(){
  load_total_money()
  $('li input').on("change", function(){
    var quantity = $('.order-quantity-'+ this.id).val();
    var price = $('.order-mobile-price'+ this.id).val();
    $.ajax({
      method: 'PATCH',
      url: '/order_details/'+ this.id,
      data: {order_detail: {mobile_id: this.id, quantity: quantity, price: price}}
    }).done(function(data){
      load_total_money();
    })
  })
  
   function load_total_money() {
    var total_price = 0;
    var quantity = $(".quantity");
    var price = $(".price");
    for(i= 0; i< price.length; i++ ) {
      total_price += parseInt(quantity[i].value)*parseFloat(price[i].innerText);
      total_price = isNaN(total_price) ? 0 : total_price;
    }
    $('.total_price').text(total_price + " $");
  }
  
  remove_item = function (link) {
    $.ajax({
      method: 'DELETE',
      url: '/order_details/' + link.id
    }).done(function(data){
      $('.order-mobile-'+ link.id).fadeOut('slow', function(c){
        $('.order-mobile-'+ link.id).remove();
        load_total_money();
      });
    })
  }
});