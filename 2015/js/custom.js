$(document).ready(function () {
    //Cycle Efeito de Slide nos Banners
    $('.slide').cycle({
        fx: 'fade',
        speed: 1000
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
    $('aside').css("height", altura-30);
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

//ShandowBox 
Shadowbox.init({
    language: 'pt',
    player: ['img', 'html', 'swf']
});
