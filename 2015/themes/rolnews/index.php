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
                                    <div class="destaqueNewsBigDadosCat t11 grafite">POLITICA</div>
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
                    <div class="boxPublicidade"></div>
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
                                <div class="boxMaisNewsCat t11 grafite">TV</div>
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
                                    <div class="boxMaisNewsCat t11 grafite">TV</div>
                                    <div class="boxMaisNewsTit t13 bold grafite"><?= Check::Words($newsSmall['titulo'], 15); ?></div>
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
                            <div class="boxMaisNewsCat t11 branco">ESPAÇO</div>
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
                    <div class="boxPublicidadeFull"></div>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-12">
                <div class="vinDestaqueNews borderBottomGreen t18 grafite bold">POLITICA</div>
                <div class="row marginBottom">
                    <div class="col-md-4">
                        <?php
                        for ($s = 1; $s <= 3; $s++):
                            ?>
                            <div class="row marginBottom">
                                <div class="col-md-12">
                                    <div class="boxMaisNews radius shadowBottom">
                                        <div class="boxMaisNewsSmallImg">[imagem]</div>
                                        <div class="boxMaisNewsSmallDados">
                                            <div class="boxMaisNewsCat t11 grafite">TV</div>
                                            <div class="boxMaisNewsTit t13 bold grafite">TV acusada de sexismo cancela propaganda de ...</div>
                                            <div class="boxMaisNewsDateTime t11 grafite">12/11/2015 ás 18:17</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endfor; ?>
                    </div>
                    <?php
                    for ($s = 1; $s <= 2; $s++):
                        ?>
                        <div class="col-md-4">
                            <div class="boxMaisNews radius shadowBottom">
                                <div class="boxMaisNewImg">[imagem]</div>
                                <div class="boxMaisNewsDados">
                                    <div class="boxMaisNewsDadosCat t11 grafite">POLITICA</div>
                                    <div class="boxMaisNewsDadosTit t18 grafite bold">Grupo protesta contra Dilma em SP e pede impeachment  Dilma em SP e pede impeachment</div>
                                    <div class="boxMaisNewsDateTime t11 grafite">12/11/2015 ás 18:17</div>
                                </div>
                            </div>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-4">
                <div class="blcPublicidade radius shadowBottom">
                    <div class="vinPublicidade t11 grafite">Publicidade</div>
                    <div class="boxPublicidade" style="height: 285px;"></div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="blcDestaqueNews">
                    <div class="boxDestaqueNews radius shadowBottom">
                        <div class="destaqueNewsBig">
                            <div class="destaqueNewsBigImg">[Imagem]</div>
                            <div class="destaqueNewsBigDados">
                                <div class="destaqueNewsBigDadosCat t11 grafite">POLITICA</div>
                                <div class="destaqueNewsBigDadosTit t16 grafite bold">Grupo protesta contra Dilma em SP e pede impeachment</div>
                            </div>
                        </div>
                        <div class="destaqueNewsSmall">
                            <?php
                            for ($s = 1; $s <= 3; $s++):
                                ?>
                                <div class="destaqueNewsSmallItem">
                                    <div class="destaqueNewsSmallItemImg">[Imagem]</div>
                                    <div class="destaqueNewsSmallItemTit t14 grafite"> Animale faz um inverno poderoso, leve e com transparencia</div>
                                </div>
                            <?php endfor; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-4">
                <div class="blcMaisNews ">
                    <div class="vinMaisNews borderBottomGreen t18 grafite bold">POLITICA</div>
                    <?php
                    for ($s = 1; $s <= 2; $s++):
                        ?>
                        <div class="row marginBottom">
                            <div class="col-md-12">
                                <div class="boxMaisNews radius shadowBottom">
                                    <div class="boxMaisNewsSmallImg">[imagem]</div>
                                    <div class="boxMaisNewsSmallDados">
                                        <div class="boxMaisNewsCat t11 grafite">TV</div>
                                        <div class="boxMaisNewsTit t13 bold grafite">TV acusada de sexismo cancela propaganda de ...</div>
                                        <div class="boxMaisNewsDateTime t11 grafite">12/11/2015 ás 18:17</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endfor; ?>

                </div>
            </div>
            <div class="col-md-4">
                <div class="blcMaisNews">
                    <div class="vinMaisNews borderBottomPurple t18 grafite bold">CULTURA</div>
                    <?php
                    for ($s = 1; $s <= 2; $s++):
                        ?>
                        <div class="row marginBottom">
                            <div class="col-md-12">
                                <div class="boxMaisNews radius shadowBottom">
                                    <div class="boxMaisNewsSmallImg">[imagem]</div>
                                    <div class="boxMaisNewsSmallDados">
                                        <div class="boxMaisNewsCat t11 grafite">TV</div>
                                        <div class="boxMaisNewsTit t13 bold grafite">TV acusada de sexismo cancela propaganda de ...</div>
                                        <div class="boxMaisNewsDateTime t11 grafite">12/11/2015 ás 18:17</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
            <div class="col-md-4">
                <div class="blcMaisNews">
                    <div class="vinMaisNews borderBottomBlue t18 grafite bold">ESPORTES</div>
                    <?php
                    for ($s = 1; $s <= 2; $s++):
                        ?>
                        <div class="row marginBottom">
                            <div class="col-md-12">
                                <div class="boxMaisNews radius shadowBottom">
                                    <div class="boxMaisNewsSmallImg">[imagem]</div>
                                    <div class="boxMaisNewsSmallDados">
                                        <div class="boxMaisNewsCat t11 grafite">TV</div>
                                        <div class="boxMaisNewsTit t13 bold grafite">TV acusada de sexismo cancela propaganda de ...</div>
                                        <div class="boxMaisNewsDateTime t11 grafite">12/11/2015 ás 18:17</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-12">
                <div class="blcPublicidade radius shadowBottom">
                    <div class="boxPublicidadeFull"></div>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-7">
                <div class="blcCoberturas">
                    <div class="vinCoberturas borderBottomYellow t18 grafite bold">COBERTURAS</div>
                    <div class="boxCoberturas radius shadowBottom"></div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="blcFlyers">
                    <div class="vinFlyers borderBottomPurple t18 grafite bold">DESTAQUES</div>
                    <div class="boxFlyers radius shadowBottom"></div>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-12">
                <div class="blcVideo">
                    <div class="vinVideo borderBottomBlue t18 grafite bold">VIDEOS</div>
                    <div class="row">
                        <div class="col-md-3"><div class="boxVideo radius shadowBottom"></div></div>
                        <div class="col-md-3"><div class="boxVideo radius shadowBottom"></div></div>
                        <div class="col-md-3"><div class="boxVideo radius shadowBottom"></div></div>
                        <div class="col-md-3"><div class="boxVideo radius shadowBottom"></div></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row marginBottom">
            <div class="col-md-12">
                <div class="blcPublicidade radius shadowBottom">
                    <div class="boxPublicidadeFull"></div>
                </div>
            </div>
        </div>
    </div>
</div>