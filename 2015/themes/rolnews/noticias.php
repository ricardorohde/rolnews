<div class="news">
    <div class="vinPag  t18 grafite bold">TODAS AS NOTICIAS</div>
    <div class="blcNews">
        <?php
        $ReadNewsAll = new Read;
        $ReadNewsAll->ExeRead('noticias', "WHERE titulo != :titulo ORDER BY id DESC", "titulo=''");
        foreach ($ReadNewsAll->getResult() as $newsAll):
        ?>
        <div class="boxNews">
            <div class="boxNewsImg"></div>
            <div class="boxNewsDados">
                <div class="boxNewsDadosDtHr"><?= 'Postada em '. date('d/m/Y H:i', strtotime($newsAll['data']));?></div>
                <div class="boxNewsDadosTit"><?= $newsAll['titulo'];?></div>
                <div class="boxNewsDadosPrev"><?= Check::Words($newsAll['noticia'], 30);?></div>
            </div>
        </div>
        <?php endforeach;?>
    </div>
</div>