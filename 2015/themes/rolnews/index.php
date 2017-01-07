<?php
$View = new View;
$tpl_videos = $View->Load('videos');

$news = new Read;
$news->ExeRead("noticias n", "WHERE n.destaque = :destaque ORDER BY n.id DESC LIMIT :limit OFFSET :offset", "destaque=sim&limit=1&offset=0");
$newsDestBig = $news->getResult()[0];

//Banners SWF Governo
$bannerSwf1 = null;
?>

<div class="row marginBottom hidden-xs">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull">
                <iframe width="100%" height="100%" style="overflow: none;" scrolling="no" src="<?= HOME . '/uploads/banners/swf/html5_aniversario_ro/1000x150.html'; ?>"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull slide">
                <?php
                $banners = new Read;
                $banners->ExeRead("banners", "WHERE tipo = :idtipo ORDER BY rand()", "idtipo=17");
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
<?php if (!empty($bannerSwf1)): ?>
    <div class = "row marginBottom hidden-xs">
        <div class = "col-md-12 col-sm-12 col-xs-12">
            <div class = "blcPublicidade radius shadowBottom">
                <div class = "boxPublicidadeFull">
                    <embed width = "100%" height = "100%" name = "plugin" id = "plugin" src = "<?= HOME . '/uploads/banners/swf/' . $bannerSwf1; ?>" type = "application/x-shockwave-flash" >
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>
<div class="row marginBottom">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull slide">
                <?php
                $banners = new Read;
                $banners->ExeRead("banners", "WHERE tipo = :idtipo ORDER BY rand()", "idtipo=8");
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
<?php
$LiveNews = new Read;
$LiveNews->ExeRead('noticias', "WHERE livenews = :lnews ORDER BY id DESC LIMIT 1", "lnews=S");
$live = $LiveNews->getResult();
if (!empty($live)):
    ?>
    <div class="row marginBottom">
        <div class="col-md-12">
            <a href="<?= HOME . '/noticia/' . $live[0]['url_name']; ?>">
                <div class="faixaNews"><b>AGORA:</b> <?= $live[0]['titulo']; ?></div>
            </a>
        </div>
    </div>
<?php endif; ?>
<div class="row marginBottom">
    <div class="col-md-8">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <h4 class="vinNoticiasDest">NOTÍCIAS EM DESTAQUE</h4>
                <div class="boxDestaqueNews borderTopRed radiusBottom shadowBottom">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <a href="<?= HOME . '/noticia/' . $newsDestBig['url_name']; ?>" title="<?= $newsDestBig['titulo']; ?>">
                                <div class="destaqueNewsBigImg"><img alt="<?= $newsDestBig['titulo']; ?>" title="<?= $newsDestBig['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $newsDestBig['foto'] . '&w=570&h=285'; ?>"/></div>
                                <div class="destaqueNewsBigDados">
                                    <div class="destaqueNewsBigDadosCat grafite"><?= strtoupper($newsDestBig['categoria']); ?></div>
                                    <div class="destaqueNewsBigDadosTit grafite bold"><?= Check::Words($newsDestBig['titulo'], 15); ?></div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <?php
                            $news->setPlaces("destaque=sim&limit=3&offset=1");
                            foreach ($news->getResult() as $newsDesSmall):
                                ?>
                                <div class="destaqueNewsSmallItem">
                                    <a href="<?= HOME . '/noticia/' . $newsDesSmall['url_name']; ?>" title="<?= $newsDesSmall['titulo']; ?>">
                                        <div class="destaqueNewsSmallItemImg"><img alt="<?= $newsDesSmall['titulo']; ?>" title="<?= $newsDesSmall['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $newsDesSmall['foto'] . '&w=147&h=85'; ?>"/></div>
                                        <div class="destaqueNewsSmallItemTit grafite"><?= Check::Words($newsDesSmall['titulo'], 13); ?></div>
                                    </a>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4 hidden-sm hidden-xs">
        <div class="blcPublicidade radius shadowBottom">
            <div class="vinPublicidade grafite">Publicidade</div>
            <div class="boxPublicidade slide">
                <?php
                $banners->setPlaces("idtipo=2");
                if (!$banners->getResult()):
                    WSErro('Desculpe, ainda não há nenhum <br><b>Banner</b> cadastrado!', WS_INFOR);
                else:
                    foreach ($banners->getResult() as $bnr):
                        echo "<a href=\"{$bnr['link']}\" title=\"{$bnr['titulo']}\" target=\"_blank\">";
                        echo "<picture>";
                        echo "<source srcset=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=355&h=390\" media=\"(max-width:1200px)\" />";
                        echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=355&h=315\" />";
                        echo "</picture>";
                        echo "</a>";
                    endforeach;
                endif;
                ?>
            </div>
        </div>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-7 col-sm-12 col-xs-12">
        <div class="row">
            <div class="col-md-12 col-sm-4 col-xs-12 marginBottom">
                <?php
                $news->setPlaces("destaque=sim&limit=1&offset=4");
                $newsBig = $news->getResult()[0];
                ?>
                <a href="<?= HOME . '/noticia/' . $newsBig['url_name']; ?>" title="<?= $newsBig['titulo']; ?>">
                    <div class="boxMaisNews borderTopRed radius shadowBottom">
                        <div class="boxMaisNewsSmallImg"><img alt="<?= $newsBig['titulo']; ?>" title="<?= $newsBig['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $newsBig['foto'] . '&w=385&h=200'; ?>"/></div>
                        <div class="boxMaisNewsSmallDados">
                            <div class="boxMaisNewsCat grafite"><?= strtoupper($newsBig['categoria']); ?></div>
                            <div class="boxMaisNewsTit bold grafite"><?= Check::Words($newsBig['titulo'], 15); ?></div>
                            <div class="boxMaisNewsDateTime grafite hidden-sm"><?= date('d/m/Y H:i', strtotime($newsBig['data'])); ?></div>
                        </div>
                    </div>
                </a>
            </div>

            <?php
            $news->setPlaces("destaque=sim&limit=2&offset=5");
            foreach ($news->getResult() as $newsSmall):
                ?>
                <a href="<?= HOME . '/noticia/' . $newsSmall['url_name']; ?>" title="<?= $newsSmall['titulo']; ?>">
                    <div class="col-md-6 col-sm-4 col-xs-6 marginBottom">
                        <div class="boxMaisNews borderTopRed radius shadowBottom">
                            <div class="boxMaisNewsSmallImg"><img alt="<?= $newsSmall['titulo']; ?>" title="<?= $newsSmall['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $newsSmall['foto'] . '&w=320&h=245'; ?>"/></div>
                            <div class="boxMaisNewsSmallDados">
                                <div class="boxMaisNewsCat grafite"><?= strtoupper($newsSmall['categoria']); ?></div>
                                <div class="boxMaisNewsTit bold grafite"><?= Check::Words($newsSmall['titulo'], 8); ?></div>
                                <div class="boxMaisNewsDateTime grafite hidden-sm"><?= date('d/m/Y H:i', strtotime($newsSmall['data'])); ?></div>
                            </div>
                        </div>
                    </div>
                </a>
            <?php endforeach; ?>
        </div>

    </div>
    <div class="col-md-5">
        <?php
        $news->setPlaces("destaque=sim&limit=1&offset=7");
        $newsSingle = $news->getResult()[0];
        ?>
        <div class="boxMaisNews radius shadowBottom" style="background: url(<?= HOME . '/uploads/' . $newsSingle['foto']; ?>)">
            <a href="<?= HOME . '/noticia/' . $newsSingle['url_name']; ?>" title="<?= $newsSingle['titulo']; ?>">
                <div class="boxMaisNewsFull" >
                    <div class="boxMaisNewsFullDados fade80">
                        <div class="boxMaisNewsCat branco"><?= strtoupper($newsSingle['categoria']); ?></div>
                        <div class="boxMaisNewsTit branco"><?= Check::Words($newsSingle['titulo'], 12); ?></div>
                        <div class="boxMaisNewsDate branco"><?= date('d/m/Y H:i', strtotime($newsSingle['data'])); ?></div>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-12">
        <p class="btnTodasNews"><a href="<?= HOME . '/noticias'; ?>">TODAS AS NOTÍCIAS <i class="glyphicon glyphicon-circle-arrow-right"></i></a></p>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull slide">
                <?php
                $banners->setPlaces("idtipo=3");
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
<div class="row marginBottom">
    <div class="col-md-12">
        <div class="vinDestaqueNews borderBottomGreen t18 grafite bold">POLÍTICA</div>
        <div class="row marginBottom">
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="row">
                    <?php
                    $newsCat = new Read;
                    $newsCat->ExeRead("noticias n", "LEFT JOIN noticias_categoria nc ON nc.cat_url = n.categoria WHERE n.categoria = :categoria ORDER BY id DESC LIMIT :limit OFFSET :offset", "categoria=politica&limit=3&offset=0");
                    foreach ($newsCat->getResult() as $catPolitica):
                        ?>

                        <div class="col-md-12 col-sm-4 col-xs-12">
                            <a href="<?= HOME . '/noticia/' . $catPolitica['url_name']; ?>" title="<?= $catPolitica['titulo']; ?>">
                                <div class="boxMaisNews radius shadowBottom marginBottom">
                                    <div class="boxMaisNewsSmallImg"><img alt="<?= $catPolitica['titulo']; ?>" title="<?= $catPolitica['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPolitica['foto'] . '&w=385&h=245'; ?>" /></div>
                                    <div class="boxMaisNewsSmallDados">
                                        <div class="boxMaisNewsCat grafite"><?= strtoupper($catPolitica['categoria']); ?></div>
                                        <div class="boxMaisNewsTit grafite"><?= Check::Words($catPolitica['titulo'], 8); ?></div>
                                        <div class="boxMaisNewsDateTime grafite hidden-sm"><?= date('d/m/Y H:i', strtotime($catPolitica['data'])); ?></div>
                                    </div>
                                </div>
                            </a>
                        </div>

                    <?php endforeach; ?>
                </div>
            </div>
            <?php
            $newsCat->setPlaces("categoria=politica&limit=2&offset=3");
            foreach ($newsCat->getResult() as $catPoliticaBig):
                ?>
                <div class="col-md-4 col-sm-6 col-xs-6">
                    <a href="<?= HOME . '/noticia/' . $catPoliticaBig['url_name']; ?>" title="<?= $catPoliticaBig['titulo']; ?>">
                        <div class="boxMaisNews radius shadowBottom">
                            <div class="boxMaisNewImg"><img alt="<?= $catPoliticaBig['titulo']; ?>" title="<?= $catPoliticaBig['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPoliticaBig['foto'] . '&w=360&h=170'; ?>"/></div>
                            <div class="boxMaisNewsDados">
                                <div class="boxMaisNewsDadosCat grafite bold"><?= strtoupper($catPoliticaBig['categoria']); ?></div>
                                <div class="boxMaisNewsDadosTit grafite"><?= Check::Words($catPoliticaBig['titulo'], 10); ?></div>
                                <div class="boxMaisNewsDateTime grafite"><?= date('d/m/Y H:i', strtotime($catPoliticaBig['data'])); ?></div>
                            </div>
                        </div>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-4 hidden-sm hidden-xs">
        <div class="blcPublicidade radius shadowBottom">
            <div class="vinPublicidade grafite">Publicidade</div>
            <div class="boxPublicidade slide">
                <?php
                $banners->setPlaces("idtipo=4");
                if (!$banners->getResult()):
                    WSErro('Desculpe, ainda não há nenhum <br><b>Banner</b> cadastrado!', WS_INFOR);
                else:
                    foreach ($banners->getResult() as $bnr):
                        echo "<a href=\"{$bnr['link']}\" title=\"{$bnr['titulo']}\" target=\"_blank\">";
                        echo "<picture>";
                        echo "<source srcset=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=355&h=390\" media=\"(max-width:1200px)\" />";
                        echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=355&h=315\" />";
                        echo "</picture>";
                        echo "</a>";
                    endforeach;
                endif;
                ?>
            </div>
        </div>
    </div>

    <div class="col-md-8">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="vinNoticiasDest grafite bold bold">GERAL</div>
                <div class="boxDestaqueNews borderTopRed radiusBottom shadowBottom">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <?php
                            $newsCat->setPlaces("categoria=geral&limit=1&offset=0");
                            $catPoliticaSingle = $newsCat->getResult()[0];
                            ?>

                            <a href="<?= HOME . '/noticia/' . $catPoliticaSingle['url_name']; ?>" title="<?= $catPoliticaSingle['titulo']; ?>">
                                <div class="destaqueNewsBigImg"><img alt="<?= $catPoliticaSingle['titulo']; ?>" title="<?= $catPoliticaSingle['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPoliticaSingle['foto'] . '&w=570&h=285'; ?>"/></div>
                                <div class="destaqueNewsBigDados">
                                    <div class="destaqueNewsBigDadosCat grafite"><?= strtoupper($catPoliticaSingle['categoria']); ?></div>
                                    <div class="destaqueNewsBigDadosTit grafite"><?= Check::Words($catPoliticaSingle['titulo'], 10); ?></div>
                                </div>
                            </a>

                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">

                            <?php
                            $newsCat->setPlaces("categoria=geral&limit=3&offset=1");
                            foreach ($newsCat->getResult() as $catPoliticaSmall):
                                ?>
                                <a href="<?= HOME . '/noticia/' . $catPoliticaSmall['url_name']; ?>" title="<?= $catPoliticaSmall['titulo']; ?>">
                                    <div class="destaqueNewsSmallItem">
                                        <div class="destaqueNewsSmallItemImg"><img alt="<?= $catPoliticaSmall['titulo']; ?>" title="<?= $catPoliticaSmall['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPoliticaSmall['foto'] . '&w=147&h=85'; ?>"/></div>
                                        <div class="destaqueNewsSmallItemTit grafite"><?= Check::Words($catPoliticaSmall['titulo'], 10); ?></div>
                                    </div>
                                </a>
                            <?php endforeach; ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-4 col-sm-4 col-xs-6">
        <div class="blcMaisNews ">
            <div class="vinMaisNews borderBottomGreen grafite bold">POLICIAL</div>
            <?php
            $newsCat->setPlaces("categoria=policial&limit=2&offset=0");
            foreach ($newsCat->getResult() as $catPolicial):
                ?>
                <div class="row marginBottom">
                    <div class="col-md-12">
                        <a href="<?= HOME . '/noticia/' . $catPolicial['url_name']; ?>" title="<?= $catPolicial['titulo']; ?>">
                            <div class="boxMaisNews radius shadowBottom">
                                <div class="boxMaisNewsSmallImg"><img alt="<?= $catPolicial['titulo']; ?>" title="<?= $catPolicial['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPolicial['foto'] . '&w=320&h=200'; ?>"/></div>
                                <div class="boxMaisNewsSmallDados">
                                    <div class="boxMaisNewsCat grafite"><?= strtoupper($catPolicial['categoria']); ?></div>
                                    <div class="boxMaisNewsTit grafite"><?= Check::Words($catPolicial['titulo'], 10); ?></div>
                                    <div class="boxMaisNewsDateTime grafite hidden-sm"><?= date('d/m/Y H:i', strtotime($catPolicial['data'])); ?></div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-6">
        <div class="blcMaisNews">
            <div class="vinMaisNews borderBottomPurple grafite bold">CULTURA</div>
            <?php
            $newsCat->setPlaces("categoria=cultura&limit=2&offset=0");
            foreach ($newsCat->getResult() as $catCultura):
                ?>
                <div class="row marginBottom">
                    <div class="col-md-12">
                        <a href="<?= HOME . '/noticia/' . $catCultura['url_name']; ?>" title="<?= $catCultura['titulo']; ?>">
                            <div class="boxMaisNews radius shadowBottom">
                                <div class="boxMaisNewsSmallImg"><img alt="<?= $catCultura['titulo']; ?>" title="<?= $catCultura['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catCultura['foto'] . '&w=320&h=200'; ?>"/></div>
                                <div class="boxMaisNewsSmallDados">
                                    <div class="boxMaisNewsCat grafite"><?= strtoupper($catCultura['categoria']); ?></div>
                                    <div class="boxMaisNewsTit grafite"><?= Check::Words($catCultura['titulo'], 10); ?></div>
                                    <div class="boxMaisNewsDateTime grafite hidden-sm"><?= date('d/m/Y H:i', strtotime($catCultura['data'])); ?></div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-6 hidden-xs">
        <div class="blcMaisNews">
            <div class="vinMaisNews borderBottomBlue grafite bold">ESPORTES</div>
            <?php
            $newsCat->setPlaces("categoria=esporte&limit=2&offset=0");
            foreach ($newsCat->getResult() as $catEsporte):
                ?>
                <div class="row marginBottom">
                    <div class="col-md-12">
                        <a href="<?= HOME . '/noticia/' . $catEsporte['url_name']; ?>" title="<?= $catEsporte['titulo']; ?>">
                            <div class="boxMaisNews radius shadowBottom">
                                <div class="boxMaisNewsSmallImg"><img alt="<?= $catEsporte['titulo']; ?>" title="<?= $catEsporte['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catEsporte['foto'] . '&w=320&h=200'; ?>"/></div>
                                <div class="boxMaisNewsSmallDados">
                                    <div class="boxMaisNewsCat grafite"><?= strtoupper($catEsporte['categoria']); ?></div>
                                    <div class="boxMaisNewsTit grafite"><?= Check::Words($catEsporte['titulo'], 10); ?></div>
                                    <div class="boxMaisNewsDateTime grafite hidden-sm"><?= date('d/m/Y H:i', strtotime($catEsporte['data'])); ?></div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>

<div class="row marginBottom">
    <div class="col-md-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull slide">
                <?php
                $banners->setPlaces("idtipo=5");
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
<div class="row marginBottom">
    <div class="col-md-7 col-sm-6">
        <div class="blcCoberturas">
            <div class="vinCoberturas borderBottomYellow grafite bold">EVENTOS</div>
            <div class="boxCoberturas radius shadowBottom">
                <section id="slide">
                    <section id="buttons">
                        <a href="#" class="prev">&laquo;</a>
                        <a href="#" class="next">&raquo;</a>
                    </section>
                    <ul>
                        <?php
                        $capaNews = new Read;
                        $capaNews->ExeRead("eventos", "WHERE evento != :tit AND destaque = :dest ORDER BY id DESC LIMIT :limit", "tit=''&dest=sim&limit=5");
                        if ($capaNews->getResult()):
                            foreach ($capaNews->getResult() as $eventos):
                                ?>
                                <li>
                                    <a href="<?= HOME . '/evento/' . $eventos['url_name']; ?>" title="<?= $eventos['evento']; ?>">
                                        <span><?= $eventos['evento']; ?></span>
                                        <img src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $eventos['foto'] . '&w=561&h=320'; ?>" title="<?= $eventos['evento']; ?>" alt="<?= $eventos['evento']; ?>">
                                    </a>
                                </li>
                                <?php
                            endforeach;
                        endif;
                        ?>
                    </ul>
                </section>
            </div>
        </div>
    </div>
    <div class="col-md-5 col-sm-6">
        <div class="blcFlyers">
            <div class="vinFlyers borderBottomPurple grafite bold">DESTAQUES</div>
            <div class="boxFlyers radius shadowBottom">
                <div class="slide">
                    <?php
                    $banners->setPlaces("idtipo=7");
                    if (!$banners->getResult()):
                        WSErro('Desculpe, ainda não há nenhum <br><b>FLYER</b> cadastrado!', WS_INFOR);
                    else:
                        foreach ($banners->getResult() as $flyers):
                            ?>
                            <a href="#" title="<?= $flyers['titulo']; ?>">
                                <img src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $flyers['banner'] . '&w=450&h=310'; ?>" title="<?= $flyers['titulo']; ?>" alt="<?= $flyers['titulo']; ?>">
                            </a>
                            <?php
                        endforeach;
                    endif;
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-12">
        <div class="blcVideo">
            <div class="vinPag borderBottomBlue"><span class="grafite bold">VIDEOS</span> <span class="btnVertodos"><a href="<?= HOME . '/videos' ?>" class="btn btn-primary btn-xs t14"><b class="glyphicon glyphicon-play-circle"></b> VER TODOS</a></span></div>
            <div class="row">
                <?php
                $videos = new Read;
                $videos->ExeRead('videos', "WHERE destaque = :destaque ORDER BY id DESC LIMIT :limit OFFSET :offset", "destaque=sim&limit=8&offset=0");
                foreach ($videos->getResult() as $v):
                    $v['titulo'] = Check::Words($v['titulo'], 8);
                    $View->Show($v, $tpl_videos);
                endforeach;
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
                $banners->setPlaces("idtipo=6");
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
<div class="row marginBottom">
    <div class="col-md-12">
        <div class="blcVideo">
            <div class="vinPag borderBottomGreen grafite bold">COLUNISTAS</div>
            <div class="row">
                <?php
                $ReadColunista = new Read;
                $ReadColunista->ExeRead('usuarios', "WHERE foto != :foto AND nome != :nome AND colunista = :colunista", "foto=''&nome=''&colunista=sim");

                if (!$ReadColunista->getResult()):
                    WSErro('Desculpe, ainda não há nenhum <br><b>Colunista</b> cadastrado!', WS_INFOR);
                else:
                    foreach ($ReadColunista->getResult() as $colunista):
                        $ReadColuna = new Read;
                        $ReadColuna->ExeRead('noticias', "WHERE coluna = :coluna AND qm_cadastr = :colunista ORDER BY id DESC LIMIT 1", "coluna=sim&colunista={$colunista['id']}");
                        ?>

                        <div class="col-md-3 col-sm-4 col-xs-12">
                            <div class="panel panel-success">
                                <div class="panel-heading"><a href="#" title="Todas as colunas de <?= $colunista['nome']; ?>"><?= $colunista['nome']; ?></a></div>
                                <div class="panel-body">

                                    <div class="colunistaBox">
                                        <div class="colunistaImg">
                                            <a href="#" title="Todas as colunas de <?= $colunista['nome']; ?>">
                                                <img src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $colunista['foto'] . '&w=320&h=120'; ?>" title="<?= $colunista['nome']; ?>" alt="<?= $colunista['nome']; ?>">
                                            </a>
                                        </div>
                                        <div class="colunistaTxt">
                                            <?php
                                            if (!$ReadColuna->getResult()):
                                                ?>
                                                <p  class="media-heading bold">Nenhuma coluna cadastrada...</p>
                                                <?php
                                            else:
                                                $coluna = $ReadColuna->getResult()[0];
                                                ?>
                                                <p  class="media-heading bold"><?= Check::Words($coluna['titulo'], 5); ?></p>
                                                <?= Check::Words($coluna['noticia'], 7); ?>
                                                <a href="<?= HOME . '/noticia/' . $coluna['url_name']; ?>">ver mais</a>
                                            <?php
                                            endif;
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                    endforeach;
                endif;
                ?>
            </div>
        </div>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-6 col-sm-6">
        <div class="vinPag borderBottomPurple grafite bold">FACEBOOK</div>
        <div class="fbbox"><div class="fb-page" data-href="https://www.facebook.com/rolnews" data-width="500" data-height="500" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/rolnews"><a href="https://www.facebook.com/rolnews">Rolnews Informação Digital</a></blockquote></div></div></div>
    </div>
    <div class="col-md-6 col-sm-6">
        <div class="vinPag borderBottomYellow grafite bold">ROLNEWS TV</div>
        <div class="boxRolnewsTv"><a href="<?= HOME . '/rolnewstv'; ?>" title="Rolnews TV"><img src="<?= INCLUDE_PATH . '/images/img-rolnews-tv.jpg'; ?>" width="100%" alt="Rolnews TV" title="Rolnews TV"></a></div>
    </div>
</div>
<div class="row marginBottom">
    <div class="col-md-12">
        <div class="alert alert-warning" style="text-align:justify;">
            <B>Decisão Judicial</B><br>Juiz de Direito <b>Jeferson Cristi Tessila de Melo</b>, da 2ª Vara Cívil do Poder Judiciário de Rondônia, sob o processo ordinário 0003368-18.2011.8.22.0010 requerente ao <b>Sr. Eliazar Lisboa </b>// Segue em anexo a Sentença e Processo do mesmo.   <a href="http://www.rolnews.com.br/judicial.pdf" target="_blank">[[ Download ]]</a>
        </div>
    </div>
</div>

<!-- SUPER BANNER PNA - LeisDeRondonia 2 -->
<!--
<link rel="stylesheet" type="text/css" href="http://eucurtoro.com.br/banners/leisderondonia/superbannerpna.css">
<div id="banner-eucurtoro2">
    <div type="button" onclick="abreUm();" id="openbt">
        <img src="http://eucurtoro.com.br/banners/leisderondonia3/Up.png" style=" width: 100%;">
    </div>
</div>
<div id="banner-eucurtoro">
    <div type="button" onclick="fechaDois();" id="closebt"><img src="http://eucurtoro.com.br/banners/leisderondonia3/Up.png" style=" width: 100%;"></div>
    <div type="button" onclick="document.getElementById('banner-eucurtoro').style.bottom = '-1511px'" id="closebt2"><img src="http://eucurtoro.com.br/banners/leisderondonia/botaofechar.png" style=" width: 100%;"></div>
    <div id="preiframe">
        <img src="http://eucurtoro.com.br/banners/leisderondonia3/Banner-90x1280-4.png" id="iframebanner-90" onclick="abreUm();"></img>
        <img src="http://eucurtoro.com.br/banners/leisderondonia3/Base-4.png" id="iframebanner-base"></img>
        <div id="iframevideo"><iframe width="100%" class="ratio_element" src="https://www.youtube.com/embed/W0m_L8jNDkM" frameborder="0" allowfullscreen></iframe></div>
        <div id="tablet"><img src="http://eucurtoro.com.br/banners/leisderondonia3/tablet.png"></div>
        <div id="tabletslides"><iframe  src="http://eucurtoro.com.br/banners/leisderondonia3/tablet-slides/tablet-slides.html" id="iframeslides" style="width:438px; height:259px;"> </iframe></div>
    </div>
    <div id="botaosaibatudo"><a href="http://eucurtoro.com.br/leis-de-rondonia/" target="_blank"><img src="http://eucurtoro.com.br/banners/leisderondonia3/botaosaibatudo.png"></a></div>
</div>
<script type="text/javascript">
    function abreUm() {
        document.getElementById('banner-eucurtoro').style.bottom = '0px';
        document.getElementById('banner-eucurtoro2').style.bottom = '-50px';
    }
    function fechaDois() {
        document.getElementById('banner-eucurtoro').style.bottom = '-510px';
        document.getElementById('banner-eucurtoro2').style.bottom = '8px';
    }</script>
<!-- SUPER BANNER PNA - LeisDeRondonia 2 -->