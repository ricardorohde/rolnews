<div class="blcPopUp hidden-sm hidden-xs"></div>
<div class="grpPoupUp hidden-sm hidden-xs">
    <div class="boxPopUp">
        <div class="closePopUp"><span class="btn btn-xs btn-danger"><b class="glyphicon glyphicon-off"></b> Fechar Publicidades</span></div>
        <?php
        foreach ($popUp->getResult() as $bnr):
            echo "<div class='popUp'>";
            echo "<a href=\"{$bnr['link']}\" title=\"{$bnr['titulo']}\" target=\"_blank\">";
            echo "<img alt=\"{$bnr['titulo']}\" title=\"{$bnr['titulo']}\" src=" . HOME . "/tim.php?src=" . HOME . "/uploads/{$bnr['banner']}&w=320\" />";
            echo "</a>";
            echo "</div>";
        endforeach;
        ?>
    </div>
</div>