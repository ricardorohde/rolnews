<div class="row marginBottom">
    <div class="col-md-12">
        <div class="blcPublicidade radius shadowBottom">
            <div class="boxPublicidadeFull slide">
                <?php
                $banners = new Read;
                $banners->ExeRead("banners", "WHERE tipo = :idtipo ORDER BY rand()", "idtipo=10");
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
        <div class="vinVideo borderBottomBlue t18 grafite bold">ROLNEWS EVENTOS</div>
        <div class="videoPlayer">
            <div class="row">
                <?php
                $getPage = (!empty($Link->getlocal()[1]) ? $Link->getlocal()[1] : 1);
                $Pager = new Pager(HOME . '/eventos/');
                $Pager->ExePager($getPage, 12);

                $eventos = new Read;
                $eventos->ExeRead("eventos", "WHERE evento != :e ORDER BY id DESC LIMIT :limit OFFSET :offset", "e=''&limit={$Pager->getLimit()}&offset={$Pager->getOffset()}");
                if (!$eventos->getResult()):
                    WSErro('Desculpe, ainda não há nenhum <b>EVENTO</b> cadastrado!', WS_INFOR);
                else:
                    $View = new View;
                    $tpl_eventos = $View->Load('eventos');
                    foreach ($eventos->getResult() as $e):
                        $e['evento'] = Check::Words($e['evento'], 5);
                        $e['data'] = date('d/m/Y', strtotime($e['data']));
                        $View->Show($e, $tpl_eventos);
                    endforeach;
                endif;

                echo '<nav>';
                $Pager->ExePaginator('eventos', "WHERE evento != :e ORDER BY id DESC", "e=''");
                echo $Pager->getPaginator();
                echo '</nav>';
                ?>
            </div>
        </div>
    </div>
</div>