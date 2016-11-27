function indexMain(){
  smoothScroll();
}

function smoothScroll(){
    $('a[href*="#"]:not([href="#"])').click(function() {
      $('#menu li').removeClass('current_page_item');
      $(this).parents('li').addClass('current_page_item')
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html, body').animate({
            scrollTop: target.offset().top
          }, 1000);
          return false;
        }
      }
    });
}