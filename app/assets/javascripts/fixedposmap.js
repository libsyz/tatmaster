var elementPosition = $('#map').offset();

$(window).scroll(function(){
        if($(window).scrollTop() > elementPosition.top){
              $('#map').css('position','fixed').css('top','10');
        }
});
