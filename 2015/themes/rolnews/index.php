<div class="centerlyt">
    <?php
    $news = new Read;
    $news->ExeRead("noticias", "WHERE destaque = :destaque ORDER BY id DESC LIMIT :limit OFFSET :offset", "destaque=sim&limit=1&offset=0");
    $newsDestBig = $news->getResult()[0];
    ?>
    <div class="capa">
        <div class="row marginBottom">
            <div class="col-md-8">
                <div class="blcDestaqueNews">
                    <div class="vinDestaqueNews t18 grafite bold">NOTICIAS EM DESTAQUE</div>
                    <div class="boxDestaqueNews borderTopRed radiusBottom shadowBottom">
                        <div class="destaqueNewsBig">
                            <a href="<?= HOME . '/noticia/' . $newsDestBig['url_name']; ?>" title="<?= $newsDestBig['titulo']; ?>">
                                <div class="destaqueNewsBigImg"><img alt="<?= $newsDestBig['titulo']; ?>" title="<?= $newsDestBig['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $newsDestBig['foto'] . '&w=326&h=200'; ?>" width="326" height="200"/></div>
                                <div class="destaqueNewsBigDados">
                                    <div class="destaqueNewsBigDadosCat t11 grafite"><?= strtoupper($newsDestBig['categoria']); ?></div>
                                    <div class="destaqueNewsBigDadosTit t16 grafite bold"><?= Check::Words($newsDestBig['titulo'], 15); ?></div>
                                </div>
                            </a>
                        </div>
                        <div class="destaqueNewsSmall">
                            <?php
                            $news->setPlaces("destaque=sim&limit=3&offset=1");
                            foreach ($news->getResult() as $newsDesSmall):
                                ?>
                                <div class="destaqueNewsSmallItem">
                                    <a href="<?= HOME . '/noticia/' . $newsDesSmall['url_name']; ?>" title="<?= $newsDesSmall['titulo']; ?>">
                                        <div class="destaqueNewsSmallItemImg"><img alt="<?= $newsDesSmall['titulo']; ?>" title="<?= $newsDesSmall['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $newsDesSmall['foto'] . '&w=115&h=85'; ?>" width="115" height="85"/></div>
                                        <div class="destaqueNewsSmallItemTit t14 grafite"><?= Check::Words($newsDesSmall['titulo'], 13); ?></div>
                                    </a>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="blcPublicidade radius shadowBottom">
                    <div class="vinPublicidade t11 grafite">Publicidade</div>
                    <div class="boxPublicidade slide">
                        <?php
                        $banners = new Read;
                        $banners->ExeRead("banners", "WHERE tipo = :idtipo", "idtipo=2");
                        if (!$banners->getResult()):
                            WSErro('Desculpe, ainda não há nenhum <br><b>Banner</b> cadastrado!', WS_INFOR);
                        else:
                            foreach ($banners->getResult() as $bnr):
                                echo "<a href=\"{$bnr['link']}\" title=\"{$bnr['titulo']}\" target=\"_blank\">";
                                echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=302&h=312\" />";
                                echo "</a>";
                            endforeach;
                        endif;
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-7">
                <div class="row marginBottom">
                    <div class="col-md-12">
                        <?php
                        $news->setPlaces("destaque=sim&limit=1&offset=4");
                        $newsBig = $news->getResult()[0];
                        ?>
                        <div class="boxMaisNews borderTopRed radius shadowBottom">
                            <div class="boxMaisNewsBigImg"><img alt="<?= $newsBig['titulo']; ?>" title="<?= $newsBig['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $newsBig['foto'] . '&w=143&h=108'; ?>" width="143" height="108"/></div>
                            <div class="boxMaisNewsBigDados">
                                <div class="boxMaisNewsCat t11 grafite"><?= strtoupper($newsBig['categoria']); ?></div>
                                <div class="boxMaisNewsTit t18 grafite"><?= Check::Words($newsBig['titulo'], 15); ?></div>
                                <div class="boxMaisNewsDateTime t11 grafite"><?= date('d/m/Y H:i', strtotime($newsBig['data'])); ?></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row marginBottom">
                    <?php
                    $news->setPlaces("destaque=sim&limit=2&offset=5");
                    foreach ($news->getResult() as $newsSmall):
                        ?>
                        <div class="col-md-6">
                            <div class="boxMaisNews borderTopRed radius shadowBottom">
                                <div class="boxMaisNewsSmallImg"><img alt="<?= $newsSmall['titulo']; ?>" title="<?= $newsSmall['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $newsSmall['foto'] . '&w=119&h=108'; ?>" width="119" height="108"/></div>
                                <div class="boxMaisNewsSmallDados">
                                    <div class="boxMaisNewsCat t11 grafite"><?= strtoupper($newsSmall['categoria']); ?></div>
                                    <div class="boxMaisNewsTit t13 bold grafite"><?= Check::Words($newsSmall['titulo'], 10); ?></div>
                                    <div class="boxMaisNewsDateTime t11 grafite"><?= date('d/m/Y H:i', strtotime($newsSmall['data'])); ?></div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-md-5">
                <?php
                $news->setPlaces("destaque=sim&limit=1&offset=7");
                $newsSingle = $news->getResult()[0];
                ?>
                <div class="boxMaisNews radius shadowBottom" style="background: url(<?= HOME . '/uploads/' . $newsSingle['foto']; ?>)">
                    <div class="boxMaisNewsFull" >
                        <div class="boxMaisNewsFullDados">
                            <div class="boxMaisNewsCat t11 branco"><?= strtoupper($newsSingle['categoria']); ?></div>
                            <div class="boxMaisNewsTit t20 branco"><?= Check::Words($newsSingle['titulo'], 12); ?></div>
                            <div class="boxMaisNewsDate t11 branco"><?= date('d/m/Y H:i', strtotime($newsSingle['data'])); ?></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p class="t18 grafite tcenter bold"><a href="#">TODAS AS NOTICIAS <i class="glyphicon glyphicon-circle-arrow-right"></i></a></p>
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
                                echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=978&h=150\" />";
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
                <div class="vinDestaqueNews borderBottomGreen t18 grafite bold">POLITICA</div>
                <div class="row marginBottom">
                    <div class="col-md-4">
                        <?php
                        $newsCat = new Read;
                        $newsCat->ExeRead("noticias", "WHERE categoria = :categoria ORDER BY id DESC LIMIT :limit OFFSET :offset", "categoria=politica&limit=3&offset=0");
                        foreach ($newsCat->getResult() as $catPolitica):
                            ?>
                            <div class="row marginBottom">
                                <div class="col-md-12">
                                    <div class="boxMaisNews radius shadowBottom">
                                        <div class="boxMaisNewsSmallImg"><img alt="<?= $catPolitica['titulo']; ?>" title="<?= $catPolitica['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPolitica['foto'] . '&w=138&h=108'; ?>" width="138" height="108"/></div>
                                        <div class="boxMaisNewsSmallDados">
                                            <div class="boxMaisNewsCat t11 grafite"><?= strtoupper($catPolitica['categoria']); ?></div>
                                            <div class="boxMaisNewsTit t13 bold grafite"><?= Check::Words($catPolitica['titulo'], 10); ?></div>
                                            <div class="boxMaisNewsDateTime t11 grafite"><?= date('d/m/Y H:i', strtotime($catPolitica['data'])); ?></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <?php
                    $newsCat->setPlaces("categoria=politica&limit=2&offset=3");
                    foreach ($newsCat->getResult() as $catPoliticaBig):
                        ?>
                        <div class="col-md-4">
                            <div class="boxMaisNews radius shadowBottom">
                                <div class="boxMaisNewImg"><img alt="<?= $catPoliticaBig['titulo']; ?>" title="<?= $catPoliticaBig['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPoliticaBig['foto'] . '&w=308&h=170'; ?>" width="308" height="170"/></div>
                                <div class="boxMaisNewsDados">
                                    <div class="boxMaisNewsDadosCat t11 grafite"><?= strtoupper($catPoliticaBig['categoria']); ?></div>
                                    <div class="boxMaisNewsDadosTit t18 grafite bold"><?= Check::Words($catPoliticaBig['titulo'], 10); ?></div>
                                    <div class="boxMaisNewsDateTime t11 grafite"><?= date('d/m/Y H:i', strtotime($catPoliticaBig['data'])); ?></div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-4">
                <div class="blcPublicidade radius shadowBottom">
                    <div class="vinPublicidade t11 grafite">Publicidade</div>
                    <div class="boxPublicidade slide" style="height: 285px;">
                        <?php
                        $banners->setPlaces("idtipo=4");
                        if (!$banners->getResult()):
                            WSErro('Desculpe, ainda não há nenhum <br><b>Banner</b> cadastrado!', WS_INFOR);
                        else:
                            foreach ($banners->getResult() as $bnr):
                                echo "<a href=\"{$bnr['link']}\" title=\"{$bnr['titulo']}\" target=\"_blank\">";
                                echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=302&h=285\" />";
                                echo "</a>";
                            endforeach;
                        endif;
                        ?>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="blcDestaqueNews">
                    <div class="boxDestaqueNews radius shadowBottom">
                        <?php
                        $newsCat->setPlaces("categoria=politica&limit=1&offset=5");
                        $catPoliticaSingle = $newsCat->getResult()[0];
                        ?>
                        <div class="destaqueNewsBig">
                            <div class="destaqueNewsBigImg"><img alt="<?= $catPoliticaSingle['titulo']; ?>" title="<?= $catPoliticaSingle['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPoliticaSingle['foto'] . '&w=326&h=200'; ?>" width="326" height="200"/></div>
                            <div class="destaqueNewsBigDados">
                                <div class="destaqueNewsBigDadosCat t11 grafite"><?= strtoupper($catPoliticaSingle['categoria']); ?></div>
                                <div class="destaqueNewsBigDadosTit t16 grafite bold"><?= Check::Words($catPoliticaSingle['titulo'], 10); ?></div>
                            </div>
                        </div>
                        <div class="destaqueNewsSmall">
                            <?php
                            $newsCat->setPlaces("categoria=politica&limit=3&offset=6");
                            foreach ($newsCat->getResult() as $catPoliticaSmall):
                                ?>
                                <div class="destaqueNewsSmallItem">
                                    <div class="destaqueNewsSmallItemImg"><img alt="<?= $catPoliticaSmall['titulo']; ?>" title="<?= $catPoliticaSmall['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPoliticaSmall['foto'] . '&w=115&h=85'; ?>" width="115" height="85"/></div>
                                    <div class="destaqueNewsSmallItemTit t14 grafite"><?= Check::Words($catPoliticaSmall['titulo'], 10); ?></div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-4">
                <div class="blcMaisNews ">
                    <div class="vinMaisNews borderBottomGreen t18 grafite bold">POLICIAL</div>
                    <?php
                    $newsCat->setPlaces("categoria=policial&limit=2&offset=0");
                    foreach ($newsCat->getResult() as $catPolicial):
                        ?>
                        <div class="row marginBottom">
                            <div class="col-md-12">
                                <div class="boxMaisNews radius shadowBottom">
                                    <div class="boxMaisNewsSmallImg"><img alt="<?= $catPolicial['titulo']; ?>" title="<?= $catPolicial['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catPolicial['foto'] . '&w=138&h=108'; ?>" width="138" height="108"/></div>
                                    <div class="boxMaisNewsSmallDados">
                                        <div class="boxMaisNewsCat t11 grafite"><?= strtoupper($catPolicial['categoria']); ?></div>
                                        <div class="boxMaisNewsTit t13 bold grafite"><?= Check::Words($catPolicial['titulo'], 10); ?></div>
                                        <div class="boxMaisNewsDateTime t11 grafite"><?= date('d/m/Y H:i', strtotime($catPolicial['data'])); ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-md-4">
                <div class="blcMaisNews">
                    <div class="vinMaisNews borderBottomPurple t18 grafite bold">CULTURA</div>
                    <?php
                    $newsCat->setPlaces("categoria=cultura&limit=2&offset=0");
                    foreach ($newsCat->getResult() as $catCultura):
                        ?>
                        <div class="row marginBottom">
                            <div class="col-md-12">
                                <div class="boxMaisNews radius shadowBottom">
                                    <div class="boxMaisNewsSmallImg"><img alt="<?= $catCultura['titulo']; ?>" title="<?= $catCultura['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catCultura['foto'] . '&w=138&h=108'; ?>" width="138" height="108"/></div>
                                    <div class="boxMaisNewsSmallDados">
                                        <div class="boxMaisNewsCat t11 grafite"><?= strtoupper($catCultura['categoria']); ?></div>
                                        <div class="boxMaisNewsTit t13 bold grafite"><?= Check::Words($catCultura['titulo'], 10); ?></div>
                                        <div class="boxMaisNewsDateTime t11 grafite"><?= date('d/m/Y H:i', strtotime($catCultura['data'])); ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-md-4">
                <div class="blcMaisNews">
                    <div class="vinMaisNews borderBottomBlue t18 grafite bold">ESPORTES</div>
                    <?php
                    $newsCat->setPlaces("categoria=esporte&limit=2&offset=0");
                    foreach ($newsCat->getResult() as $catEsporte):
                        ?>
                        <div class="row marginBottom">
                            <div class="col-md-12">
                                <div class="boxMaisNews radius shadowBottom">
                                    <div class="boxMaisNewsSmallImg"><img alt="<?= $catEsporte['titulo']; ?>" title="<?= $catEsporte['titulo']; ?>" src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $catEsporte['foto'] . '&w=138&h=108'; ?>" width="138" height="108"/></div>
                                    <div class="boxMaisNewsSmallDados">
                                        <div class="boxMaisNewsCat t11 grafite"><?= strtoupper($catEsporte['categoria']); ?></div>
                                        <div class="boxMaisNewsTit t13 bold grafite"><?= Check::Words($catEsporte['titulo'], 10); ?></div>
                                        <div class="boxMaisNewsDateTime t11 grafite"><?= date('d/m/Y H:i', strtotime($catEsporte['data'])); ?></div>
                                    </div>
                                </div>
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
                                echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=978&h=150\" />";
                                echo "</a>";
                            endforeach;
                        endif;
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-7">
                <div class="blcCoberturas">
                    <div class="vinCoberturas borderBottomYellow t18 grafite bold">COBERTURAS</div>
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
                                            <a href="#" title="<?= $eventos['evento']; ?>">
                                                <span><?= $eventos['evento']; ?></span>
                                                <img src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $eventos['foto'] . '&w=561&h=320'; ?>" width="561" height="320" title="<?= $eventos['evento']; ?>" alt="<?= $eventos['evento']; ?>">
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
            <div class="col-md-5">
                <div class="blcFlyers">
                    <div class="vinFlyers borderBottomPurple t18 grafite bold">DESTAQUES</div>
                    <div class="boxFlyers radius shadowBottom">
                        <div class="slide">
                            <?php
                            $banners->setPlaces("idtipo=7");
                            if ($banners->getResult()):
                                foreach ($banners->getResult() as $flyers):
                                    ?>
                                    <a href="#" title="<?= $flyers['titulo']; ?>">
                                        <img src="<?= HOME . '/tim.php?src=' . HOME . '/uploads/' . $flyers['banner'] . '&w=382&h=310'; ?>" width="382" height="310" title="<?= $flyers['titulo']; ?>" alt="<?= $flyers['titulo']; ?>">
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
                    <div class="vinVideo borderBottomBlue t18 grafite bold">VIDEOS</div>
                    <div class="row">
                        <?php
                        $videos = new Read;
                        $videos->ExeRead('videos', "WHERE destaque = :destaque ORDER BY id ASC LIMIT :limit OFFSET :offset", "destaque=sim&limit=4&offset=0");
                        foreach ($videos->getResult() as $videoCapa):
                            ?>
                            <div class="col-md-3">
                                <a href="#">
                                    <div class="boxVideo radius shadowBottom">
                                        <div class="boxVideoImg"><img src="<?= $videoCapa['foto']; ?>" width="215" height="110" alt="<?= $videoCapa['titulo']; ?>" title="<?= $videoCapa['titulo']; ?>"/></div>
                                        <div class="boxVideoTit preto"><?= Check::Words($videoCapa['titulo'], 10); ?></div>
                                    </div>
                                </a>
                            </div>
                            <?php
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
                                echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=978&h=150\" />";
                                echo "</a>";
                            endforeach;
                        endif;
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>