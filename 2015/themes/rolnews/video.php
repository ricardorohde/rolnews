<?php
if ($Link->getData()):
    extract($Link->getData());
    $View = new View;
    $tpl_videos = $View->Load('videos');
else:
    header('Location: ' . HOME . DIRECTORY_SEPARATOR . '404');
endif;
?>
<div class="row marginBottom">
    <div class="col-md-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull slide">
                <?php
                $banners = new Read;
                $banners->ExeRead("banners", "WHERE tipo = :idtipo ORDER BY rand()", "idtipo=15");
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

<div class="row">
    <div class="col-md-12">
        <div class="vinVideo borderBottomBlue t18 grafite bold"><?= $titulo; ?></div>
        <div class="videoPlayer">
            <div class="videoSocial"
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
                    a2a_config.linkurl = "<?= HOME . '/video/' . $url_name; ?>";
                    a2a_config.locale = "pt-BR";
                </script>
                <script type="text/javascript" src="//static.addtoany.com/menu/page.js"></script>
                <!-- AddToAny END -->
            </div>
            <div class="frameBox">
                <div class="ratio4">
                    <iframe class="ratio_element" width="100%" src="https://www.youtube.com/embed/<?= $link; ?>?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
                </div>
                <p><b>Autor:</b> <?= $autor; ?></p>
                <p><b>Postado em:</b> <?= date('d/m/Y H:i', strtotime($data)); ?>Hs</p>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="vinVideo borderBottomBlue t18 grafite bold">OUTROS VIDEOS</div>
        <?php
        $View = new View;
        $tpl_videos = $View->Load('videos');

        $videos = new Read;
        $videos->ExeRead('videos', "WHERE titulo != :titulo ORDER BY id DESC LIMIT :limit OFFSET :offset", "titulo=''&limit=4&offset=0");
        if (!$videos->getResult()):
            WSErro('Desculpe, ainda não há nenhum <br><b>VIDEO</b> cadastrado!', WS_INFOR);
        else:
            $View = new View;
            $tpl_videos = $View->Load('videos');

            foreach ($videos->getResult() as $v):
                $v['titulo'] = Check::Words($v['titulo'], 7);
                $View->Show($v, $tpl_videos);
            endforeach;
        endif;
        ?>
    </div>
</div>
