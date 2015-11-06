<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="../uploads/<?= $userlogin['foto']; ?>" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p><?= $userlogin['nome']; ?></p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Buscar..."/>
                <span class="input-group-btn">
                    <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="active">
                <a href="painel.php">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
            </li>
            <?php
            //SQL Menu
            $menu = new Read;
            $menu->ExeRead('menu', "WHERE id_menu_tipo = :tm ORDER BY titulo ASC", "tm=1");
            if ($menu->getResult()):
                foreach ($menu->getResult() as $mn):
                    $idMenu = $mn['id_menu'];
                    ?>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa <?= $mn['ico_menu']; ?>"></i>
                            <span><?= $mn['titulo']; ?></span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <?php
                            //SQL Sub Menu
                            $subMenu = new Read;
                            $subMenu->ExeRead("menu_sub", "WHERE id_menu = :idmenu ORDER BY id_menu_sub ASC", "idmenu={$idMenu}");
                            if ($subMenu->getResult()):
                                foreach ($subMenu->getResult() as $sm):
                                    $idSubMenu = $sm['id_menu_sub'];

                                    //SQL Nav Sub Menu
                                    $navSubMenu = new Read;
                                    $navSubMenu->ExeRead("menu_sub_nav", "WHERE id_menu_sub = :idsubmenu ORDER BY id_menu_sub ASC", "idsubmenu={$idSubMenu}");
                                    if ($navSubMenu->getResult()):
                                        ?>
                                        <li>
                                            <a href="#"><i class="fa <?= $sm['ico_menu']; ?>"></i> <?= $sm['titulo']; ?> <i class="fa fa-angle-left pull-right"></i></a>
                                            <ul class="treeview-menu">
                                                <?php
                                                foreach ($navSubMenu->getResult() as $nsm):
                                                    ?>
                                                    <li><a href="painel.php?exe=<?= $nsm['case'] . '/' . $nsm['pagina'] ?>"><i class="fa <?= $nsm['ico_menu'] ?>"></i> <?= $nsm['titulo']; ?></a></li>
                                                    <?php
                                                endforeach;
                                                ?>
                                            </ul>
                                        </li>
                                        <?php
                                    else:
                                        ?>
                                        <li><a href="painel.php?exe=<?= $sm['case'] . '/' . $sm['pagina'] ?>"><i class="fa <?= $sm['ico_menu'] ?>"></i> <?= $sm['titulo']; ?></a></li>
                                        <?php
                                    endif;
                                endforeach;
                            endif;
                            ?>
                        </ul>
                    </li>
                    <?php
                endforeach;
            endif;
            ?>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>