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