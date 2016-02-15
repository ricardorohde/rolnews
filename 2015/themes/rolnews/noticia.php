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
        <h3 class="borderBottomBlue bold"><?= $categoria; ?></h3>
        <h1><?= $titulo; ?></h1>
        <h2 class="italico"><?= $subtitulo; ?></h2>
        <h3>
            Postada em <span class="laranja"><?= $data; ?>hrs</span><br>
            Fonte: <span class="laranja"><?= $fonte; ?></span>
        </h3>
        <div class="socialNews">
            <!-- AddToAny BEGIN -->
            <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
                <a class="a2a_button_facebook"></a>
                <a class="a2a_button_twitter"></a>
                <a class="a2a_button_google_plus"></a>
                <a class="a2a_button_whatsapp"></a>
            </div>
            <script type="text/javascript">
                var a2a_config = a2a_config || {};
                a2a_config.linkname = "<?= $titulo; ?>";
                a2a_config.linkurl = "<?= HOME . '/noticia/' . $url_name; ?>";
                a2a_config.locale = "pt-BR";
            </script>
            <script type="text/javascript" src="//static.addtoany.com/menu/page.js"></script>
            <!-- AddToAny END -->
        </div>
    </div>
    <figure class="noticiaImg">
        <a href="<?= HOME . '/uploads/' . $foto; ?>" rel="shadowbox">
            <img alt="<?= $titulo; ?>" class="img-responsive" title="<?= $titulo; ?>" src="<?= HOME . '/uploads/' . $foto; ?>" width="480"/>
        </a>
    </figure>
    <div class="noticiaTxt tjustify">
        <?= $noticia; ?>
    </div>
    <div class="row marginBottom">
        <div class="col-md-12">
            <div class="blcPublicidade radius shadowBottom">
                <div class="boxPublicidadeFull slide">
                    <?php
                    $banners = new Read;
                    $banners->ExeRead("banners", "WHERE tipo = :idtipo", "idtipo=9");
                    if (!$banners->getResult()):
                        WSErro('Desculpe, ainda não há nenhum <br><b>Banner</b> cadastrado!', WS_INFOR);
                    else:
                        foreach ($banners->getResult() as $bnr):
                            echo "<a href=\"{$bnr['link']}\" title=\"{$bnr['titulo']}\" target=\"_blank\">";
                            echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=978&h=150\" />";
                            echo "</a>";
                        endforeach;
                    endif;
                    ?>
                </div>
            </div>
        </div>
    </div>
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
                    echo '<a href="' . HOME . '/uploads/' . $fotos['foto'] . '" rel="shadowbox[vocation]">';
                    echo '<img alt="' . $titulo . '" title="' . $titulo . '" class="img-thumbnail" src="' . HOME . '/tim.php?src=' . HOME . '/uploads/' . $fotos['foto'] . '&w=180&h=100&q=90" width="180" height="100"/>';
                    echo '</a>';
                endforeach;
                ?>
            </div>
        </div>
        <?php
    endif;
    ?>
</article>
