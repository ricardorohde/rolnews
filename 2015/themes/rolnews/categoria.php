<?php
if ($Link->getData()):
    extract($Link->getData());
else:
    header('Location: ' . HOME . DIRECTORY_SEPARATOR . '404');
endif;
?>
<div class="news">
    <div class="vinPag  t18 grafite bold">&raquo; Notícias da Categoria: <?= $categoria; ?></div>
    <div class="blcNews">
        <?php
        $getPage = (!empty($Link->getLocal()[2]) ? $Link->getLocal()[2] : 1);
        $Pager = new Pager(HOME . '/categoria/' . $cat_url . '/');
        $Pager->ExePager($getPage, 12);

        $ReadNewsAll = new Read;
        $ReadNewsAll->ExeRead('noticias', "WHERE titulo != :titulo AND (categoria = :cat) ORDER BY id DESC LIMIT :limit OFFSET :offset", "titulo=''&cat={$cat_url}&limit={$Pager->getLimit()}&offset={$Pager->getOffset()}");

        if (!$ReadNewsAll->getResult()):
            WSErro("Desculpe, a categoria {$categoria} ainda não tem artigos publicados, favor volte mais tarde!", WS_INFOR);
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
            $Pager->ExePaginator('noticias', "WHERE titulo != :titulo AND (categoria = :cat) ORDER BY id DESC", "titulo=''&cat={$cat_url}");
            echo $Pager->getPaginator();
            echo '</nav>';
        endif;
        ?>
    </div>
</div>