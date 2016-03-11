<div class="row marginBottom">
    <div class="col-md-12">
        <div class="blcVideo">
            <div class="vinVideo borderBottomBlue t18 grafite bold">VIDEOS</div>
            <div class="row">
                <?php
                $getPage = (!empty($Link->getlocal()[1]) ? $Link->getlocal()[1] : 1);
                $Pager = new Pager(HOME . '/videos/');
                $Pager->ExePager($getPage, 12);

                $videos = new Read;
                $videos->ExeRead('videos', "WHERE titulo != :t ORDER BY id DESC LIMIT :limit OFFSET :offset", "t=''&limit={$Pager->getLimit()}&offset={$Pager->getOffset()}");
                if (!$videos->getResult()):
                    WSErro('Desculpe, ainda não há nenhum <br><b>VIDEO</b> cadastrado!', WS_INFOR);
                else:
                    $View = new View;
                    $tpl_videos = $View->Load('videos');

                    foreach ($videos->getResult() as $v):
                        $v['titulo'] = Check::Words($v['titulo'], 9);
                        $View->Show($v, $tpl_videos);
                    endforeach;

                    echo '<nav>';
                    $Pager->ExePaginator('videos', "WHERE titulo != :t ORDER BY id DESC", "t=''");
                    echo $Pager->getPaginator();
                    echo '</nav>';
                endif;
                ?>
            </div>
        </div>
    </div>
</div>
