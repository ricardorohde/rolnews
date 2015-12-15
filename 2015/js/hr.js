function Tempo() {
    horario = new Date();
    hora = horario.getHours();
    minuto = horario.getMinutes();
    segundo = horario.getSeconds();
    if (hora < 10) {
        hora = "0" + hora;
    }
    if (minuto < 10) {
        minuto = "0" + minuto;
    }
    if (segundo < 10) {
        segundo = "0" + segundo;
    }
    document.getElementById("boxHr").innerHTML = 'Hora: ' + hora + ":" + minuto + ':' + segundo;
}
window.setInterval("Tempo()", 1000);

function dataCorrente() {
    now = new Date();
    hours = now.getHours();
    myday = now.getDay();
    mymonth = now.getMonth();
    myweekday = now.getDate();
    weekday = myweekday;
    myyear = now.getYear();
    if (myyear < 1000) {
        myyear += 1900;
    }
    year = myyear;

    if (myday === 0)
        day = " Domingo, ";
    else if (myday === 1)
        day = " Segunda-feira, ";
    else if (myday === 2)
        day = " Terça-feira, ";
    else if (myday === 3)
        day = " Quarta-feira, ";
    else if (myday === 4)
        day = " Quinta-feira, ";
    else if (myday === 5)
        day = " Sexta-feira, ";
    else if (myday === 6)
        day = " Sábado, ";

    if (mymonth === 0)
        month = " de Janeiro de ";
    else if (mymonth === 1)
        month = " de Fevereiro de ";
    else if (mymonth === 2)
        month = " de Março de ";
    else if (mymonth === 3)
        month = " de Abril de ";
    else if (mymonth === 4)
        month = " de Maio de ";
    else if (mymonth === 5)
        month = " de Junho de ";
    else if (mymonth === 6)
        month = " de Julho de ";
    else if (mymonth === 7)
        month = " de agosto de ";
    else if (mymonth === 8)
        month = " de Setembro de ";
    else if (mymonth === 9)
        month = " de Outubro de ";
    else if (mymonth === 10)
        month = " de Novembro de ";
    else if (mymonth === 11)
        month = " de Dezembro de ";

    if ((hours >= 6) && (hours <= 11))
        saudacao = "Bom dia!, ";
    else if ((hours >= 12) && (hours <= 17))
        saudacao = "Boa tarde!, ";
    else if ((hours >= 18) && (hours <= 23))
        saudacao = "Boa noite!, ";
    else if ((hours >= 0) && (hours <= 3))
        saudacao = "Boa noite!, ";
    else if ((hours >= 4) && (hours <= 5))
        saudacao = "Boa madrugada!, ";
    else
        saudacao = "Ocorreu um erro!";

    return document.write(saudacao + myweekday + month + year);
}