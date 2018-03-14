addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
$(document).ready(function(){$(".memenu").memenu();});
$(function () {
  $("#slider4").responsiveSlides({
    auto: true,
    pager: true,
    nav: true,
    speed: 500,
    namespace: "callbacks",
    before: function () {
      $('.events').append("<li>before event fired.</li>");
    },
    after: function () {
      $('.events').append("<li>after event fired.</li>");
    }
  });
});

$(function() {
  var menu_ul = $('.menu_drop > li > ul'),
  menu_a  = $('.menu_drop > li > a');
  menu_ul.hide();
  menu_a.click(function(e) {
    e.preventDefault();
    if(!$(this).hasClass('active')) {
      menu_a.removeClass('active');
      menu_ul.filter(':visible').slideUp('normal');
      $(this).addClass('active').next().stop(true,true).slideDown('normal');
    } else {
      $(this).removeClass('active');
      $(this).next().stop(true,true).slideUp('normal');
    }
  });
});

$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
  
  $('.locale').on('change', function() {
    var selected = $('.selected')[0].outerText;
    if(selected == "ENGLISH" || selected == "TIẾNG ANH") {
      document.cookie = "locale=en; expires=; path=/";
      location.reload();
    } else {
      document.cookie = "locale=vi; expires=; path=/";
      location.reload();
    }
  })
  
  $('.language_user').on('change', function() {
    var selected = $('.selected')[0].outerText;
    if(selected == "ENGLISH" || selected == "TIẾNG ANH") {
      document.cookie = "language=en; expires=; path=/";
      location.reload();
    } else {
      document.cookie = "language=vi; expires=; path=/";
      location.reload();
    }
  })
});
