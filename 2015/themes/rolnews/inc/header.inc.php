<header class="shadowBottom">
    <div class="centerlyt">
        <div id="topo ">
            <div class="menu t18 branco"><a href="#"><span class="glyphicon glyphicon-menu-hamburger"></span> MENU</a></div>
            <div class="busca">
                <input type="search" class="form-control" placeholder=" Buscar Notícias...">
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
            <li><a href="<?= HOME . '/noticias'; ?>">NOTICIAS</a></li>
            <?php
            $ReadMenu = new Read;
            $ReadMenu->ExeRead('noticias_categoria', "ORDER BY categoria ASC");
            foreach ($ReadMenu->getResult() as $menu):
            ?>
                <li><a href="<?= HOME . '/noticias/' . $menu['cat_url']; ?>">&raquo; <?= $menu['categoria']; ?></a></li>
            <?php endforeach; ?>
            <li><a href="<?= HOME . '/eventos'; ?>">EVENTOS</a></li>
            <li><a href="<?= HOME . '/videos'; ?>">VIDEOS</a></li>
            <li><a href="<?= HOME . '/contato'; ?>">CONTATO</a></li>
        </ul>
    </aside>
</div>

