<?php
if ($Link->getData()):
    extract($Link->getData());
else:
    header('Location: ' . HOME . DIRECTORY_SEPARATOR . '404');
endif;
?>
<div class="row">
    <div class="col-md-12">
        <div class="vinVideo borderBottomBlue t18 grafite bold"><?= $evento; ?></div>
        <div class="videoPlayer">
            <div class="row">
                <?php
                $getPage = (!empty($Link->getLocal()[2]) ? $Link->getLocal()[2] : 1);
                $Pager = new Pager(HOME . '/evento/' . $url_name.'/');
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