<?php
if ($Link->getData()):
    extract($Link->getData());
    $View = new View;
    $tpl_outros_eventos = $View->Load('evento-outros');
else:
    header('Location: ' . HOME . DIRECTORY_SEPARATOR . '404');
endif;
?>
<div class="container">
    <div class="center">
        <div class="rowCapa">
            <header>
                <div class="vinheta t18 bold branco"><?= $evento; ?></div>
            </header>
            <article>
                <div class="row">
                    <?php
                    $FotosGaleria = new Read;
                    $FotosGaleria->ExeRead("banco_fotos", "WHERE id_tipo = :idtipo AND tipo = 'E' ORDER BY ordem ASC", "idtipo={$id}");
                    if (!$FotosGaleria->getResult()):
                        WSErro('Desculpe, ainda não há nenhuma <br><b>FOTO PARA ESTA GALARIA</b>!', WS_INFOR);
                    else:
                        foreach ($FotosGaleria->getResult() as $fotos):
                        echo '<div class="col-md-6">';    
                        echo '<img alt="'.$evento.'" title="'.$evento.'" class="fotoGaleria img-thumbnail" src="'.HOME.'/tim.php?src='.HOME.'/uploads/'.$fotos['foto'].'&w=640" />';
                        echo '</div>';
                        endforeach;
                    endif;
                    ?>
                </div>
                
                <div class="noticiaOutras">
                    <div class="vinheta t18 bold branco">Outros Eventos</div>
                    <?php
                    $OutrosEventos = new Read;
                    $OutrosEventos->ExeRead("eventos", "WHERE id != :id ORDER BY RAND() DESC LIMIT :limit", "id={$id}&limit=3");
                    if (!$OutrosEventos->getResult()):
                        WSErro('Desculpe, ainda não há nenhum <br><b>EVENTO</b> cadastrado!', WS_INFOR);
                    else:
                        foreach ($OutrosEventos->getResult() as $eventos):
                            $eventos['evento'] = Check::Words($eventos['evento'], 20);
                            $eventos['data'] = date('d/m/Y H:i', strtotime($eventos['data']));
                            $View->Show($eventos, $tpl_outros_eventos);
                        endforeach;
                    endif;
                    ?>
                </div>
            </article>
        </div>
    </div>
</div>