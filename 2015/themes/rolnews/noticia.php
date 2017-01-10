<?php
if ($Link->getData()):
    extract($Link->getData());
    $data = date('d/m/Y H:i', strtotime($data));
else:
    header('Location: ' . HOME . DIRECTORY_SEPARATOR . '404');
endif;

//Banners SWF Governo
$bannerSwf1 = 'detran_snt.swf';
?>

<div class="row marginBottom">
    <div class="col-md-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull slide">
                <?php
                $banners = new Read;
                $banners->ExeRead("banners", "WHERE tipo = :idtipo ORDER BY rand()", "idtipo=16");
                if (!$banners->getResult()):
                    WSErro('Desculpe, ainda não há nenhum <br><b>Banner</b> cadastrado!', WS_INFOR);
                else:
                    foreach ($banners->getResult() as $bnr):
                        echo "<a href=\"{$bnr['link']}\" title=\"{$bnr['titulo']}\" target=\"_blank\">";
                        echo "<picture>";
                        echo "<source srcset=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=1134&h=183\" media=\"(max-width:1200px)\" />";
                        echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=1134&h=150\" />";
                        echo "</picture>";
                        echo "</a>";
                    endforeach;
                endif;
                ?>
            </div>
        </div>
    </div>
</div>

<div class="row marginBottom hidden-xs">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull">
                <iframe width="100%" height="100%" style="overflow: none;" scrolling="no" src="<?= HOME . '/uploads/banners/swf/html5_aniversario_ro/1000x150.html'; ?>"></iframe>
            </div>
        </div>
    </div>
</div>
<!--
<div class="row marginBottom hidden-xs">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull">
                <embed width="100%"  height="100%" name="plugin" id="plugin" src="<?= HOME . '/uploads/banners/swf/' . $bannerSwf1; ?>" type="application/x-shockwave-flash" >
            </div>
        </div>
    </div>
</div>
-->
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
    <?php if (!empty($video)): ?>
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="videoPlayer">
                    <div class="ratio4">
                        <iframe class="ratio_element"  width="100%" height="100%" src="https://www.youtube.com/embed/<?= $video; ?>" frameborder="0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <div class="row marginBottom">
        <div class="col-md-12">
            <?php
            $OutrasFotos = new Read;
            $OutrasFotos->ExeRead("banco_fotos", "WHERE id_tipo = :idtipo AND tipo = :tipo", "idtipo={$id}&tipo=n");
            if ($OutrasFotos->getResult()):
                ?>
                <div class="noticiaMediaMais">
                    <div class="vinheta t18 bold grafite">Outras Fotos</div>
                    <div class="noticiaBlcMediaMais">
                        <div class="row">
                            <?php
                            foreach ($OutrasFotos->getResult() as $fotos):
                                echo '<div class="col-md-2 col-sm-3 col-xs-6">';
                                echo '<a href="' . HOME . '/uploads/' . $fotos['foto'] . '" rel="shadowbox[vocation]">';
                                echo '<img alt="' . $titulo . '" title="' . $titulo . '" class="img-thumbnail" src="' . HOME . '/tim.php?src=' . HOME . '/uploads/' . $fotos['foto'] . '&w=180&h=100&q=90"/>';
                                echo '</a>';
                                echo '</div>';
                            endforeach;
                            ?>
                        </div>
                    </div>
                </div>
                <?php
            endif;
            ?>
        </div>
    </div>
    <div class="row marginBottom">
        <div class="col-md-12">
            <div class="blcPublicidade radius shadowBottom">
                <div class="boxPublicidadeFull slide">
                    <?php
                    $banners = new Read;
                    $banners->ExeRead("banners", "WHERE tipo = :idtipo ORDER BY rand()", "idtipo=9");
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
</article>
