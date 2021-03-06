<?php
if ($Link->getData()):
    extract($Link->getData());
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
                $banners->ExeRead("banners", "WHERE tipo = :idtipo ORDER BY rand()", "idtipo=11");
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
        <div class="vinVideo borderBottomBlue t18 grafite bold"><?= $evento; ?></div>
        <div class="videoPlayer">
            <div class="boxSocialTxt">
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
                        a2a_config.linkurl = "<?= HOME . '/evento/' . $url_name; ?>";
                        a2a_config.locale = "pt-BR";
                    </script>
                    <script type="text/javascript" src="//static.addtoany.com/menu/page.js"></script>
                    <!-- AddToAny END -->
                </div>
                <h4 class="laranja bold">*CLIQUE NA FOTO PARA AMPLIAR</h4>
            </div>
            <div class="row">
                <?php
                $getPage = (!empty($Link->getLocal()[2]) ? $Link->getLocal()[2] : 1);
                $Pager = new Pager(HOME . '/evento/' . $url_name . '/');
                $Pager->ExePager($getPage, 10);

                $FotosGaleria = new Read;
                $FotosGaleria->ExeRead("banco_fotos", "WHERE id_tipo = :idtipo AND tipo = 'E' ORDER BY id ASC LIMIT :limit OFFSET :offset", "idtipo={$id}&limit={$Pager->getLimit()}&offset={$Pager->getOffset()}");

                if (!$FotosGaleria->getResult()):
                    WSErro('Desculpe, ainda não há nenhuma <br><b>FOTO PARA ESTA GALARIA</b>!', WS_INFOR);
                else:
                    foreach ($FotosGaleria->getResult() as $fotos):
                        echo '<div class="col-md-6">';
                        echo '<a href="' . HOME . '/uploads/' . $fotos['foto'] . '" rel="shadowbox[vocation]">';
                        echo '<img alt="' . $evento . '" title="' . $evento . '" class="img-thumbnail" src="' . HOME . '/tim.php?src=' . HOME . '/uploads/' . $fotos['foto'] . '&w=640&h=480" />';
                        echo '</a>';
                        echo '</div>';
                    endforeach;
                endif;

                echo '<nav style="margin-left:15px;">';
                $Pager->ExePaginator("banco_fotos", "WHERE id_tipo = :idtipo AND tipo = 'E' ORDER BY id ASC", "idtipo={$id}");
                echo $Pager->getPaginator();
                echo '</nav>';
                ?>
            </div>
        </div>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull slide">
                <?php
                $banners->setPlaces("idtipo=12");
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