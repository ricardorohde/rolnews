$(function(){
    var liWidth = $("#slide ul li").outerWidth(),
        speed = 10000,
        rotate = setInterval(auto, speed);
    
    //Mostra os Botões
    $("section#slide").hover(function(){
        $("section#buttons").fadeIn();
        clearInterval(rotate);
    },function(){
        $("section#buttons").fadeOut();
        rotate = setInterval(auto, speed);
    });
    
    //Próximo
    $(".next").click(function(e){
        e.preventDefault();
        $("section#slide ul").css({'width':'99999%'}).animate({left: -liWidth}, function(){
            $("#slide ul li").last().after($("#slide ul li").first());
            $(this).css({'left': '0', 'width': 'auto'});
        });
    });
    
    //Voltar
    $(".prev").click(function(e){
        e.preventDefault();
        $("#slide ul li").first().before($("#slide ul li").last().css({'margin-left':-liWidth}));
        $("section#slide ul").css({'width':'99999%'}).animate({left:liWidth}, function(){
            $("#slide ul li").first().css({'margin-left':'0'});
            $(this).css({'left':'0', 'width':'auto'});
        });
    });
    
    function auto(){
        $(".next").click();
    }
});
    
