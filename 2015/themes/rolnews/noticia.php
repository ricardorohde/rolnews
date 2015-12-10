<?php
if ($Link->getData()):
    extract($Link->getData());
    $data = date('d/m/Y H:i', strtotime($data));
else:
    header('Location: ' . HOME . DIRECTORY_SEPARATOR . '404');
endif;
?>
<article class="news">
    <div class="headline">
        <h1><?= $titulo; ?></h1>
        <h2 class="italico"><?= $subtitulo; ?></h2>
        <h3>
            Postada em <span class="laranja"><?= $data; ?>hrs</span><br>
            Fonte: <span class="laranja"><?= $fonte; ?></span>
        </h3>
    </div>
    <figure class="noticiaImg">
        <img alt="<?= $titulo; ?>" class="img-responsive" title="<?= $titulo; ?>" src="<?= HOME . '/uploads/' . $foto; ?>" width="480"/>
    </figure>
    <div class="noticiaTxt tjustify"><?= $noticia; ?></div>
    <?php
    $OutrasFotos = new Read;
    $OutrasFotos->ExeRead("banco_fotos", "WHERE id_tipo = :idtipo AND tipo = :tipo", "idtipo={$id}&tipo=n");
    if ($OutrasFotos->getResult()):
        ?>
        <div class="noticiaMediaMais">
            <div class="vinheta t18 bold grafite">Outras Fotos</div>
            <div class="noticiaBlcMediaMais">
                <?php
                foreach ($OutrasFotos->getResult() as $fotos):
                    echo '<img alt="' . $titulo . '" title="' . $titulo . '" class="img-thumbnail" src="' . HOME . '/tim.php?src=' . HOME . '/uploads/' . $fotos['foto'] . '&w=180&h=100&q=90" width="180" height="100"/>';
                endforeach;
                ?>
            </div>
        </div>
        <?php
    endif;
    ?>
</article>
