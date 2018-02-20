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





$(document).ready(function(){

    var msg=$('#alert');

    function validate(form) {
        var res =false;
        form.find('.form-control').each(function(){
            if($(this).val() != ''){
                $(this).parent('.form-group').removeClass('has-error');
                res=true;
            } else {
                res=false;
                $(this).parent('.form-group').addClass('has-error');
            }
        });

        (res)?msg.hide():msg.show();
        return res;
    }


    //Validate form Feedback
    $(".nifty_form").submit(function(event) {
        event.preventDefault();
        if(!validate($(this))) return;
        $.ajax({
            type: "POST",
            url: '/index/create_request',
            data: $(this).serialize(), // serializes the form elements.
            success: function(data)
            {
                if(data.success){
                    location.reload();
                }
                else {
                    msg.show();
                }
            }
        });
    });




});
