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

    //Menu SPC DropDown
    $(".select-services").click(function () {
        if ($(".select-services-itens").is(".active")) {
            $(".select-services-itens").removeClass("active");
            $(".select-services-itens").slideUp(100);
            $(".seta").removeClass("glyphicon-chevron-up");
            $(".seta").addClass("glyphicon-chevron-down");
        } else {
            $(".select-services-itens").addClass("active");
            $(".select-services-itens").slideDown(100);
            $(".seta").removeClass("glyphicon-chevron-down");
            $(".seta").addClass("glyphicon-chevron-up");
        }
    });

    //Modal 
    $('#agendaModal').modal('show');

    //tooltip
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
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
    js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.3";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

//Empregos
$(function () {
    //Exibi Form Candidato
    $('.j_cad_candidato').click(function () {
        $('.boxCadastroCandidato').fadeIn(300, function () {
            $('.boxCadastroEmpregador').fadeOut(100);
        });
    });
    //Exibi Form Empregador
    $('.j_cad_empregador').click(function () {
        $('.boxCadastroEmpregador').fadeIn(300, function () {
            $('.boxCadastroCandidato').fadeOut(100);
        });
    });

    //Validar Campos Senha Candidato
    $('.FCadCandidato').find('.checasenha').focusout(function () {
        if ($('.FCadCandidato').find('input[name="candidato_senha"]').val() !== $(this).val()) {
            $('.j_checasenha').fadeIn(500);
        } else {
            $('.j_checasenha').hide();
        }
    });

    //Validar Campos Senha Empregador
    $('.FCadEmpregador').find('.checasenha').focusout(function () {
        if ($('.FCadEmpregador').find('input[name="empregador_senha"]').val() !== $(this).val()) {
            $('.j_checasenha').fadeIn(500);
        } else {
            $('.j_checasenha').hide();
        }
    });

    //Exibir campos alterar senha;
    $('.alt_senha').click(function () {
        if ($('input[name="alt_senha"]').is(':checked')) {
            $('#senha_acesso').fadeIn(500);
        } else {
            $('#senha_acesso').fadeOut(500);
        }
    });

    //Ativa INPUT File pelo LINK
    $('.j_click_file').click(function () {
        $('.img_user').click();
    });
    
    //Exibir MENU
    $('.menu').click(function () {
        var altura = ($(window).height()-74);
        $('#menu').css("height",altura);        
        $('#menu').slideToggle(500);
    });
});