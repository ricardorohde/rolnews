<header class="shadowBottom">
    <div class="centerlyt">
        <div id="topo ">
            <div class="menu t18 branco"><a href="#"><span class="glyphicon glyphicon-menu-hamburger"></span> MENU</a></div>
            <div class="busca">
                <input type="search" class="form-control" placeholder="Buscar...">
                <button type="submit" class="btnBusca grafite2"><i class="glyphicon glyphicon-search"></i></button>
            </div>
            <div class="logo"><a href="<?= HOME; ?>"><img src="<?= INCLUDE_PATH; ?>/images/logo-topo.png"></a></div>
            <div class="dataTopo t14 branco">
                <script>dataCorrente();</script>
                <div id="boxHr"></div>
            </div>
        </div>
    </div>
</header>

<div id="menu">
    <aside>
        <ul>
            <?php
            $ReadMenu = new Read;
            $ReadMenu->ExeRead('noticias_categoria', "ORDER BY categoria ASC");
            foreach ($ReadMenu->getResult() as $menu):
                ?>
                <li><?= $menu['categoria']; ?></li>
            <?php endforeach; ?>
            <li>COBERTURAS</li>
            <li><a href="<?= HOME.'/videos';?>">VIDEOS</a></li>
        </ul>
    </aside>
</div>

