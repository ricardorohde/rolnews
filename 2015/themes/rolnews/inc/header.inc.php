<header>
    <div class="navbar">
        <div class="container-fluid">
            <div id="topo ">
                <div class="menu"><i class="glyphicon glyphicon-menu-hamburger"></i> MENU</div>
                <div class="busca hidden-xs">
                    <?php
                    $search = filter_input(INPUT_POST, 's', FILTER_DEFAULT);
                    if (!empty($search)):
                        $search = strip_tags(trim(urlencode($search)));
                        header('Location: ' . HOME . '/busca/' . $search);
                    endif;
                    ?>
                    <form name="busca" action="" method="post">
                        <input type="search" name="s" class="form-control" placeholder=" Buscar Notícias...">
                        <button type="submit" name="sendsearch" class="btnBusca grafite2"><i class="glyphicon glyphicon-search"></i></button>
                    </form>
                </div>
                <a href="<?= HOME; ?>" title="<?= SITENAME; ?>"><h1 class="logo"><?= SITENAME; ?></h1></a>
                <div class="dataTopo t14 branco hidden-xs">
                    <script>dataCorrente();</script>
                    <div id="boxHr"></div>
                </div>
            </div>
        </div>
    </div>
</header>

<div id="menu">
    <aside>
        <ul>
            <li><a href="<?= HOME . '/noticias'; ?>">NOTÍCIAS</a></li>
            <?php
            $ReadMenu = new Read;
            $ReadMenu->ExeRead('noticias_categoria', "ORDER BY categoria ASC");
            foreach ($ReadMenu->getResult() as $menu):
                ?>
                <li><a href="<?= HOME . '/categoria/' . $menu['cat_url']; ?>">&raquo; <?= $menu['categoria']; ?></a></li>
            <?php endforeach; ?>
            <li><a href="<?= HOME . '/eventos'; ?>">EVENTOS</a></li>
            <li><a href="<?= HOME . '/videos'; ?>">VIDEOS</a></li>
            <li><a href="<?= HOME . '/rolnewstv'; ?>">ROLNEWS TV</a></li>
            <li><a href="<?= HOME . '/contato'; ?>">CONTATO</a></li>
        </ul>
    </aside>
</div>

