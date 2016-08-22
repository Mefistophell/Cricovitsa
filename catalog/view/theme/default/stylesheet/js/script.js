$(window).on('load', function () {
    var $preloader = $('#page-preloader'),
        $spinner   = $preloader.find('.spinner');
    $spinner.fadeOut();
    $preloader.delay(300).fadeOut('slow');
});

$(document).ready(function(){
    $(function($) {
        var allAccordions = $('.accordion div.data');
        var allAccordionItems = $('.accordion .accordion-item');
        $('.accordion > .accordion-item').click(function() {
            if($(this).hasClass('open'))
            {
                $(this).removeClass('open');
                $(this).next().slideUp('slow');

            }
            else
            {
                allAccordions.fadeOut("fast");
                allAccordionItems.removeClass('open');
                $(this).addClass('open');
                $(this).next().delay(300).slideDown('slow');
                return false;

            }
        });

    });

$('.button-menu').click(function(){
    $('.menu-list').slideToggle(600);                

});
    
$('.tab-activate').click(function(){
   if($(this).hasClass('open')){
       $(this).delay(600).queue(function() {
           $(this).removeClass("open");
           $(this).next().hide();
           $(this).dequeue();
       });
       $(this).next().hide();
       $(this).next().next().slideUp('slow');
       
   } 
    else{
        $(this).addClass('open');
        $(this).next().show();
        $(this).next().next().slideDown('slow');
        return false;
    }
});

    if(window.screen.width > 767) {    
    
    $('.togle_prints').click(function(){
        if($('.togle').not("[class='prints']")){
            $('.togle').addClass('prints');
            $('.togle_img').removeClass('original');
            $('.togle_img').addClass('prints_img'); 
        }
    });  
    
    }
    $('.togle_original').click(function(){
        if($('.togle').hasClass('prints')){
            $('.togle').removeClass('prints');
            $('.togle_img').removeClass('prints_img');
            $('.togle_img').addClass('original');
        } 
    }); 
    if(window.screen.width < 768) { 
        if($('.togle').hasClass('prints')){
            $('.togle').removeClass('prints');
            $('.togle_img').removeClass('prints_img');
            $('.togle_img').addClass('original');
        } 
    }
        

$('.comments > div > div > .comment:gt(2)').hide();
$('.comment_button').on('click', function(){
    $(this).hide();
    $('.comments > div > div > .comment:gt(2)').slideDown();
});

$('.review_button').on('click', function(){
    $('.box-review').toggle();
});
    
    
    //4 страница
    var slideIdnext = 0;
    var slideIdprev = 0;
    
    var allviewblock = $('.view-block');
    
    $('.but1 > a').click(function(){
        
        if(allviewblock.not("[class='view1']")){
            allviewblock.removeClass('col-md-10 col-md-offset-1 view2 view3').addClass('view1 col-md-4');
            $('.view-block').show();
            $('.slide-left').hide();
            $('.slide-right').hide();
            slideIdnext = 0;
            slideIdprev = 0;
            
    }

    });
        $('.but2 > a').click(function(){
        if(allviewblock.not("[class='view2']")){
            allviewblock.removeClass('col-md-4 view1 view3').addClass('col-md-10 col-md-offset-1 view2');
            $('.view-block').show();
            $('.slide-left').hide();
            $('.slide-right').hide();
            slideIdnext = 0;
            slideIdprev = 0;
            
    }
        
    });
    
    //нажатие по кнопке с классом .but3, отображение слайдера для картин
        $('.but3 > a').click(function(){
        if(allviewblock.not("[class='view3']")){
            allviewblock.removeClass('col-md-offset-1 col-md-10 col-md-4 view2 view1').addClass('col-md-10 view3')
            $('.slide-left').show();
            
            $('.slide-right').show();
            $('div.view-block:first').addClass('first-slide');
            $('div.view-block:last').addClass('last-slide');
            $('.view-block').not('[id="0"]').hide();
        //получение высоты картины и присвоение для переключателей
            var height = $('#0').height();
            $('.slide-left').height(height);
            $('.slide-right').height(height);
            if(slideIdnext == 0 ){
                $('.slide-left > i').hide();
            }
    }
            
    }); 
    

    
    
    //даем айди кадому элементу
    var elems = $(".view-block");
    var elemsTotal = elems.length;
    for(var i=0; i<elemsTotal; ++i){
        $(elems[i]).attr('id', i)
    }
    
    //переключение слайдов 
    if(slideIdnext == 0 ){
        $('.slide-left > i').hide();
    }
    $('.slide-right > i').click(function(){
        
        slideIdnext = slideIdnext + 1;
        slideIdprev = slideIdnext - 1;
        $('#'+slideIdprev).hide();
        $('#'+slideIdnext).show();
        if(slideIdnext > 0){
            $('.slide-left > i').show();
        }
        if(slideIdnext < (elemsTotal - 1)){
            $('.slide-right > i').show();
        } else {
            $('.slide-right > i').hide();
        }
    });
    
    
    if(slideIdprev < elemsTotal && $('.viev-block').hasClass('view3')){
        $('.slide-right').show();
    }
    
    $('.slide-left > i').click(function(){
        slideIdnext = slideIdnext - 1;
        slideIdprev = slideIdnext + 1;
        $('#'+slideIdprev).hide();
        $('#'+slideIdnext).show();
        if(slideIdprev < elemsTotal){
            $('.slide-right > i').show();
        } else {
            $('.slide-right > i').hide();
        }
        if(slideIdnext == 0){
            $('.slide-left > i').hide();
        }
    });
    
    

});


    
    