<?php
$search = $Link->getLocal()[1];
$count = ($Link->getData()['count'] ? $Link->getData()['count'] : '0');
?>
<div class="news">
    <div class="vinPag  t18 grafite bold">&raquo; Pesquisa por: <?= $search; ?></div>
    <p class="tagline">Sua pesquisa por <b><?= $search; ?></b> retornou <?= $count; ?> resultados!</p>
    <div class="blcNews">
        <?php
        $getPage = (!empty($Link->getLocal()[2]) ? $Link->getLocal()[2] : 1);
        $Pager = new Pager(HOME . '/busca/' . $search . '/');
        $Pager->ExePager($getPage, 10);

        $ReadNewsAll = new Read;
        $ReadNewsAll->ExeRead('noticias', "WHERE titulo != :titulo AND (titulo LIKE '%' :link '%' OR noticia LIKE '%' :link '%') ORDER BY id DESC LIMIT :limit OFFSET :offset", "titulo=''&link={$search}&limit={$Pager->getLimit()}&offset={$Pager->getOffset()}");

        if (!$ReadNewsAll->getResult()):
            WSErro('Desculpe, sua pesquisa não retornou resultados. Você pode resumir sua pesquisa, ou tentar outros termos!', WS_INFOR);
        else:
            $View = new View;
            $tpl_noticias = $View->Load('noticias');

            foreach ($ReadNewsAll->getResult() as $n):
                $n['titulo'] = Check::Words($n['titulo'], 16);
                $n['noticia'] = strip_tags($n['noticia']);
                $n['noticia'] = Check::Words($n['noticia'], 36);
                $n['data'] = date('d/m/Y H:i', strtotime($n['data']));
                $View->Show($n, $tpl_noticias);
            endforeach;

            echo '<nav>';
            $Pager->ExePaginator('noticias', "WHERE titulo != :t AND (titulo LIKE '%' :link '%' OR noticia LIKE '%' :link '%') ORDER BY id DESC", "t=''&link={$search}");
            echo $Pager->getPaginator();
            echo '</nav>';
        endif;
        ?>
    </div>
</div>