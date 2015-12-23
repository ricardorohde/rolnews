$(document).ready(function () {
    //Mascára Inputs
    $(".cep").mask("99999-999");
    $(".cpf").mask("999.999.999-99");
    $(".cnpj").mask("99.999.999/9999-99");
    $(".fone").mask("(99) 9999-9999");
    $(".data").mask("99/99/9999");

    //Valida Formularios      
    $("#formContato").validationEngine('attach');

    //Cycle Efeito de Slide nos Banners
    $('.slide').cycle({
        fx: 'fade',
        speed: 1000
    });

    //ShandowBox 
    Shadowbox.init({
        language: 'pt',
        player: ['img', 'html', 'swf']
    });

    //Tooltip
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

    //Exibir POPUP
    $('.blcPopUp').show(function () {
        altura = ($(document).height());
        $('.blcPopUp').css("height", altura);
        $('.closePopUp').click(function () {
            $('.blcPopUp').fadeOut();
            $('.boxPopUp').fadeOut();
        });
    });

});

//Slider Carrosel
$("#flexisel").flexisel({
    visibleItems: 5,
    animationSpeed: 1000,
    autoPlay: true,
    autoPlaySpeed: 3000,
    pauseOnHover: true,
    enableResponsiveBreakpoints: true,
    responsiveBreakpoints: {
        portrait: {
            changePoint: 480,
            visibleItems: 1
        },
        landscape: {
            changePoint: 640,
            visibleItems: 2
        },
        tablet: {
            changePoint: 768,
            visibleItems: 3
        }
    }
});

//Twitter
!function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
    if (!d.getElementById(id)) {
        js = d.createElement(s);
        js.id = id;
        js.src = p + "://platform.twitter.com/widgets.js";
        fjs.parentNode.insertBefore(js, fjs);
    }
}(document, "script", "twitter-wjs");

//Facebook
(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id))
        return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.5&appId=193104280795065";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

//Exibir MENU
$('.menu').click(function () {
    altura = ($(window).height() - 74);
    $('#menu').css("height", altura);
    $('#menu').slideToggle(500);
});

//Campo de Busca
$('.busca input[type=search]').bind({
    focus: function () {
        $('.logo').hide(0, function () {
            $('.busca').css("width", '66%');
        });
    },
    blur: function () {
        $('.logo').show(0, function () {
            $('.busca').css("width", '26.9%');
        });
    }
});