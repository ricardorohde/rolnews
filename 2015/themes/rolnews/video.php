<?php
if ($Link->getData()):
    extract($Link->getData());
    $View = new View;
    $tpl_videos = $View->Load('videos');
else:
    header('Location: ' . HOME . DIRECTORY_SEPARATOR . '404');
endif;
?>
<div class="row">
    <div class="col-md-12">
        <div class="vinVideo borderBottomBlue t18 grafite bold"><?= $titulo;?></div>
        <div class="videoPlayer">
            <iframe width="480" height="310" src="https://www.youtube.com/embed/<?= $link; ?>?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
            <p><b>Autor:</b> <?= $autor; ?></p>
            <p><b>Postado em:</b> <?= date('d/m/Y H:i', strtotime($data)); ?>Hs</p>
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
        $videos->ExeRead('videos', "WHERE titulo != :titulo ORDER BY id ASC LIMIT :limit OFFSET :offset", "titulo=''&limit=4&offset=0");
        if (!$videos->getResult()):
            WSErro('Desculpe, ainda não há nenhum <br><b>VIDEO</b> cadastrado!', WS_INFOR);
        else:
            $View = new View;
            $tpl_videos = $View->Load('videos');

            foreach ($videos->getResult() as $v):
                $v['titulo'] = Check::Words($v['titulo'], 10);
                $View->Show($v, $tpl_videos);
            endforeach;
        endif;
        ?>
    </div>
</div>
