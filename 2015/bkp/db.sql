-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.6.14 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.3.0.5005
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela _rolnews_2015.banco_fotos
DROP TABLE IF EXISTS `banco_fotos`;
CREATE TABLE IF NOT EXISTS `banco_fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ordem` int(11) DEFAULT NULL COMMENT 'Ordem das Fotos',
  PRIMARY KEY (`id`),
  KEY `id_tipo` (`id_tipo`),
  KEY `tipo` (`tipo`),
  KEY `nome` (`foto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Armazena as fotos selecionadas na opção mais fotos, dependendo do tipo.';

-- Copiando dados para a tabela _rolnews_2015.banco_fotos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `banco_fotos` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco_fotos` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.banners
DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `data_inicial` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `data_atual` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qm_cadastr` int(9) DEFAULT NULL,
  `qm_alterou` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banner` (`banner`),
  KEY `titulo` (`titulo`),
  KEY `fk_banners_tipo` (`tipo`),
  CONSTRAINT `fk_banners_tipo` FOREIGN KEY (`tipo`) REFERENCES `banners_tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Armazena informações sobre banners de publicidade';

-- Copiando dados para a tabela _rolnews_2015.banners: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
REPLACE INTO `banners` (`id`, `titulo`, `banner`, `tipo`, `link`, `data_inicial`, `data_final`, `data_atual`, `qm_cadastr`, `qm_alterou`) VALUES
	(11, 'Centro de Treinamento', 'banners/2015/05/centro-de-treinamento.jpg', 1, 'http://www.acirmro.com.br/cursos', '2015-05-12', '2016-01-01', '2015-05-12 23:08:13', 1, NULL),
	(12, 'Agentes Locais de Inovação', 'banners/2015/07/sebrae.jpg', 2, 'http://www.sebrae.com.br/sites/PortalSebrae/Programas/Agentes-Locais-de-Inova%C3%A7%C3%A3o:-receba-o-Sebrae-na-sua-empresa', '2015-05-12', '2016-01-01', '2015-05-12 23:08:42', 1, 53),
	(14, 'Ano Novo Premiado', 'banners/2015/07/ano-novo-premiado.jpg', 4, 'http://www.acirmro.com.br/noticia/ano-novo-premiado-senhas-disponiveis-na-sede-da-acirm', '2015-05-12', '2016-01-01', '2015-05-12 23:09:32', 1, 53),
	(15, 'CURSO GESTÃO EMPRESARIAL E ESTRTURA ORGANIZACIONAL CRC RO', 'banners/2015/08/curso-gestao-empresarial-e-estrtura-organizacional-crc-ro.jpg', 5, 'http://www2.cfc.org.br/sisweb/sgewebsgi/view/user/login.aspx', '2015-08-24', '2016-01-01', '2015-05-12 23:09:51', 1, 53),
	(21, 'LIQUIDA ROLIM 2015', 'banners/2015/07/liquida-rolim-2015.jpg', 3, 'http://www.acirmro.com.br/noticia/conheca-as-empresas-participantes-do-liquida-rolim-2015', '2015-05-14', '2015-05-21', '2015-05-14 14:56:14', 53, 53);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.banners_tipo
DROP TABLE IF EXISTS `banners_tipo`;
CREATE TABLE IF NOT EXISTS `banners_tipo` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  `dimens_w` varchar(50) NOT NULL,
  `dimens_h` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tipos de banners';

-- Copiando dados para a tabela _rolnews_2015.banners_tipo: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `banners_tipo` DISABLE KEYS */;
REPLACE INTO `banners_tipo` (`id_tipo`, `tipo`, `dimens_w`, `dimens_h`) VALUES
	(1, 'Banner Capa Grande', '418', '358'),
	(2, 'Banner Capa Pequeno', '418', '132'),
	(3, 'Banner Lateral 1', '228', '159'),
	(4, 'Banner Lateral 2', '228', '159'),
	(5, 'Banner Lateral 3', '228', '159');
/*!40000 ALTER TABLE `banners_tipo` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.eventos
DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_name` varchar(255) NOT NULL,
  `evento` varchar(50) DEFAULT NULL,
  `data` timestamp NULL DEFAULT NULL,
  `local` varchar(150) DEFAULT NULL,
  `cidadeuf` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `marca_foto` int(11) DEFAULT NULL,
  `destaque` varchar(3) DEFAULT 'nao',
  `fotografo` varchar(250) DEFAULT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evento` (`evento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Armazena informações de cadastro de galerias';

-- Copiando dados para a tabela _rolnews_2015.eventos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
REPLACE INTO `eventos` (`id`, `url_name`, `evento`, `data`, `local`, `cidadeuf`, `foto`, `marca_foto`, `destaque`, `fotografo`, `qm_cadastr`, `qm_alterou`) VALUES
	(4, 'trofeu-acirm-2014', 'Troféu ACIRM 2014 -', '2015-05-12 08:22:44', 'CTG - Centro de Tradições Gaúchas - 20:00 horas', 'Rolim de Moura RO', 'eventos/2015/05/trofeu-acirm-2014-1431433364.jpg', NULL, 'sim', 'Acirm', NULL, NULL),
	(5, 'acirm-na-expoagro-2015', 'ACIRM na Expoagro 2015', '2015-05-10 08:56:23', 'Parque de Exposição Jorge Teixeira', 'Rolim de Moura RO', 'eventos/2015/08/acirm-na-expoagro-2015.jpg', NULL, 'sim', 'Acirm', NULL, NULL);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.galerias
DROP TABLE IF EXISTS `galerias`;
CREATE TABLE IF NOT EXISTS `galerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evento` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  `cidadeuf` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `marca_foto` int(11) DEFAULT NULL,
  `destaque` varchar(1) DEFAULT 'n',
  `fotografo` varchar(250) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkgalerias_qm_cadastr` (`qm_cadastr`),
  KEY `evento` (`evento`),
  KEY `fkgalerias_categoria` (`categoria`),
  CONSTRAINT `fkgalerias_qm_cadastr` FOREIGN KEY (`qm_cadastr`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Armazena informações de cadastro de galerias';

-- Copiando dados para a tabela _rolnews_2015.galerias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `galerias` DISABLE KEYS */;
/*!40000 ALTER TABLE `galerias` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.institucional
DROP TABLE IF EXISTS `institucional`;
CREATE TABLE IF NOT EXISTS `institucional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instituicao` varchar(100) NOT NULL,
  `fanpage` varchar(50) DEFAULT NULL,
  `sobre` text,
  `missao` text,
  `visao` text,
  `valores` text,
  `id_presidente` int(11) DEFAULT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Armazena informações institucional do site.';

-- Copiando dados para a tabela _rolnews_2015.institucional: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `institucional` DISABLE KEYS */;
REPLACE INTO `institucional` (`id`, `instituicao`, `fanpage`, `sobre`, `missao`, `visao`, `valores`, `id_presidente`, `qm_cadastr`, `qm_alterou`) VALUES
	(1, 'ACIRM - ASSOCIAÇÃO EMPRESARIAL DE ROLIM DE MOURA', 'https://www.facebook.com/groupcreativewebsites', '<p>A Associa&ccedil;&atilde;o Empresarial de Rolim de Moura &ndash; ACIRM &eacute; uma entidade associativa, civil, sem&nbsp;fins lucrativos, fundada em 22 de novembro 1983, desde ent&atilde;o n&atilde;o cessou o exerc&iacute;cio da&nbsp;representatividade e as a&ccedil;&otilde;es que beneficiam e contribuem para a melhoria das condi&ccedil;&otilde;es de&nbsp;neg&oacute;cios das empresas rolimourenses. Atua diretamente na classe empresarial, apoiando suas&nbsp;iniciativas, ajudando e orientando seus associados perante poderes P&uacute;blicos/Municipais,&nbsp;Estaduais e Federais, dando-lhes suporte legal e assessoramento t&eacute;cnico na solu&ccedil;&atilde;o de&nbsp;problemas e, na defesa de seus direitos sempre que necess&aacute;rios.</p>\r\n\r\n<p>O prop&oacute;sito da ACIRM &eacute; atuar no desenvolvimento da popula&ccedil;&atilde;o e toda a comunidade&nbsp;empresarial de Rolim de Moura, tendo como compromisso n&atilde;o s&oacute; criar riqueza na nossa&nbsp;cidade, mas, acima de tudo, fazer com que essa riqueza fique na nossa comunidade, de&nbsp;maneira que esta possa ser melhor distribu&iacute;da e alavancar o progresso.</p>\r\n\r\n<p>A ACIRM trabalha em parceria com v&aacute;rias outras entidades para melhor atender as empresas,&nbsp;seus colaboradores e a popula&ccedil;&atilde;o em geral, melhorando a capacidade de neg&oacute;cios das&nbsp;empresas e a efici&ecirc;ncia de seus colaboradores na presta&ccedil;&atilde;o de servi&ccedil;os.</p>\r\n', '<p>Desenvolvimento econ&ocirc;mico e social dos empreendedores e da cidade de Rolim de&nbsp;Moura, de maneira a estimular o desenvolvimento cont&iacute;nuo e sustent&aacute;vel da regi&atilde;o.</p>\r\n', '<p>Consolidar o reconhecimento da entidade pela excel&ecirc;ncia em produtos e servi&ccedil;os oferecidos&nbsp;aos associados e atuar como &oacute;rg&atilde;o representativo nas discuss&otilde;es pol&iacute;ticas, econ&ocirc;micas e&nbsp;sociais em prol do empresariado Rolimourense.</p>\r\n', '<p>1. Lideran&ccedil;a e defesa do empresariado;</p>\r\n\r\n<p>2. Fomento ao empreendedorismo;</p>\r\n\r\n<p>3. Cria&ccedil;&atilde;o de valor aos associados e &agrave; sociedade;</p>\r\n\r\n<p>4. Respeito &agrave; tradi&ccedil;&atilde;o empresarial e social;</p>\r\n\r\n<p>5. Excel&ecirc;ncia na conduta das atividades;</p>\r\n\r\n<p>6. Criatividade e inova&ccedil;&atilde;o nas realiza&ccedil;&otilde;es;</p>\r\n\r\n<p>7. Integridade, Seriedade, &Eacute;tica;</p>\r\n\r\n<p>8. Responsabilidade socioambiental;</p>\r\n\r\n<p>9. Solidariedade e respeito &agrave; diversidade humana.</p>\r\n', 1, 1, 1);
/*!40000 ALTER TABLE `institucional` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu_tipo` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `case` varchar(100) NOT NULL,
  `pagina` varchar(150) NOT NULL,
  `ico_menu` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_menu`),
  KEY `fk_menu_id_menutipo` (`id_menu_tipo`),
  CONSTRAINT `fkmenu_id_menu_tipo` FOREIGN KEY (`id_menu_tipo`) REFERENCES `menu_tipo` (`id_menu_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Menu';

-- Copiando dados para a tabela _rolnews_2015.menu: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
REPLACE INTO `menu` (`id_menu`, `id_menu_tipo`, `titulo`, `case`, `pagina`, `ico_menu`) VALUES
	(1, 1, 'Usuários', 'usuarios', '#', 'fa-users'),
	(2, 1, 'Eventos', 'eventos', '#', 'fa-camera'),
	(5, 1, 'Videos', 'videos', '#', 'fa-video-camera'),
	(6, 1, 'Notícias', 'noticias', '#', 'fa-bullhorn'),
	(14, 1, 'Banners', 'banners', '#', 'fa-photo');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.menu_sub
DROP TABLE IF EXISTS `menu_sub`;
CREATE TABLE IF NOT EXISTS `menu_sub` (
  `id_menu_sub` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `case` varchar(100) NOT NULL,
  `pagina` varchar(150) NOT NULL,
  `ico_menu` varchar(50) NOT NULL DEFAULT 'fa-angle-double-right',
  PRIMARY KEY (`id_menu_sub`),
  KEY `fkmenu_sub_id_menu` (`id_menu`),
  KEY `idx_menu_sub_titulo` (`titulo`),
  CONSTRAINT `fkmenu_sub_id_menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='Menu Sub';

-- Copiando dados para a tabela _rolnews_2015.menu_sub: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_sub` DISABLE KEYS */;
REPLACE INTO `menu_sub` (`id_menu_sub`, `id_menu`, `titulo`, `case`, `pagina`, `ico_menu`) VALUES
	(1, 1, 'Novo Cadastro', 'usuarios', 'cadastrar', 'fa-angle-double-right'),
	(2, 1, 'Listar Cadastros', 'usuarios', 'listar', 'fa-angle-double-right'),
	(3, 2, 'Novo Cadastro', 'eventos', 'cadastrar', 'fa-angle-double-right'),
	(4, 2, 'Listar Cadastros', 'eventos', 'listar', 'fa-angle-double-right'),
	(10, 6, 'Novo Cadastro', 'noticias', 'cadastrar', 'fa-angle-double-right'),
	(11, 6, 'Listar Cadastros', 'noticias', 'listar', 'fa-angle-double-right'),
	(16, 5, 'Novo Cadastro', 'videos', 'cadastrar', 'fa-angle-double-right'),
	(17, 5, 'Listar Cadastros', 'videos', 'listar', 'fa-angle-double-right'),
	(30, 14, 'Novo Cadastro', 'banners', 'cadastrar', 'fa-angle-double-right'),
	(31, 14, 'Listar Cadastros', 'banners', 'listar', 'fa-angle-double-right');
/*!40000 ALTER TABLE `menu_sub` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.menu_sub_nav
DROP TABLE IF EXISTS `menu_sub_nav`;
CREATE TABLE IF NOT EXISTS `menu_sub_nav` (
  `id_menu_sub_nav` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu_sub` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `case` varchar(100) NOT NULL,
  `pagina` varchar(150) NOT NULL,
  `ico_menu` varchar(50) NOT NULL DEFAULT 'fa-angle-double-right',
  PRIMARY KEY (`id_menu_sub_nav`),
  KEY `fkmenu_sub_id_menu_sub` (`id_menu_sub`),
  CONSTRAINT `fkmenu_sub_id_menu_sub` FOREIGN KEY (`id_menu_sub`) REFERENCES `menu_sub` (`id_menu_sub`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Menu Sub Nav';

-- Copiando dados para a tabela _rolnews_2015.menu_sub_nav: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_sub_nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_sub_nav` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.menu_tipo
DROP TABLE IF EXISTS `menu_tipo`;
CREATE TABLE IF NOT EXISTS `menu_tipo` (
  `id_menu_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_menu_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Menu Tipo';

-- Copiando dados para a tabela _rolnews_2015.menu_tipo: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_tipo` DISABLE KEYS */;
REPLACE INTO `menu_tipo` (`id_menu_tipo`, `tipo`) VALUES
	(1, 'painel_adm_sidebar'),
	(2, 'painel_est_sidebar');
/*!40000 ALTER TABLE `menu_tipo` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.noticias
DROP TABLE IF EXISTS `noticias`;
CREATE TABLE IF NOT EXISTS `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_name` varchar(255) NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `subtitulo` varchar(250) DEFAULT NULL,
  `colunista` varchar(50) DEFAULT NULL,
  `fonte` varchar(100) DEFAULT NULL,
  `destaque` varchar(3) DEFAULT NULL,
  `noticia` text NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `video` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `marca_foto` int(11) NOT NULL DEFAULT '0' COMMENT 'Decide se vai MarcaDAgua Ou Nao',
  `categoria` varchar(50) NOT NULL,
  `contador` int(11) DEFAULT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='Armazena informações de cadastros de noticias';

-- Copiando dados para a tabela _rolnews_2015.noticias: ~40 rows (aproximadamente)
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
REPLACE INTO `noticias` (`id`, `url_name`, `titulo`, `subtitulo`, `colunista`, `fonte`, `destaque`, `noticia`, `data`, `video`, `foto`, `marca_foto`, `categoria`, `contador`, `qm_cadastr`, `qm_alterou`) VALUES
	(10, 'acirm-associacao-empresarial-de-rolim-de-moura-convoca-todos-os-socios-para-eleicao-da-nova-diretoria-da-entidade-bienio-2015-2017', 'ACIRM - Associação Empresarial de Rolim de Moura convoca todos os sócios para eleição da nova Diretoria da entidade, biênio 2015/2017', 'Eleição da nova Diretoria da entidade, biênio 2015/2017', 'Assessoria', 'www.acirmro.com.br', 'nao', '<p>A ACIRM - Associa&ccedil;&atilde;o Empresarial de Rolim de Moura, convoca todos os s&oacute;cios em pleno gozo dos direitos estatut&aacute;rio, para elei&ccedil;&atilde;o da nova Diretoria da entidade, bi&ecirc;nio 2015/2017, que se realizar&aacute; no dia 24 de mar&ccedil;o de 2015 das 8:00 &agrave;s 12:00 hs no audit&oacute;rio Acirm.</p>\r\n\r\n<p>Este comunicado &eacute; feito para coloca-lo a par do assunto e, ainda, para que exer&ccedil;am o direito de voto neste dia.</p>\r\n\r\n<p>Cordiais sauda&ccedil;&otilde;es,</p>\r\n', '2015-03-28 18:01:18', '', 'noticias/2015/03/acirm-associacao-empresarial-de-rolim-de-moura-convoca-todos-os-socios-para-eleicao-da-nova-diretoria-da-entidade-bienio-2015-2017.png', 0, '', NULL, NULL, NULL),
	(11, 'acirm-presta-homenagem-ao-tenente-marcos-fra', 'ACIRM presta homenagem ao Tenente Marcos Frá', 'ACIRM presta homenagem na troca de comando do batalhão da polícia militar de Rolim de Moura', 'ACIRM', 'ACIRM', 'nao', '<p>Aconteceu hoje dia 27 de mar&ccedil;o, em frente ao batalh&atilde;o da Pol&iacute;cia Militar de Rolim de Moura, solenidade de homenagens e troca de comando da 4&ordf; Companhia de Fronteira. A solenidade se deu in&iacute;cio com a forma&ccedil;&atilde;o da tropa e desfile de com a bandeira nacional. Com a forma&ccedil;&atilde;o espetacular da pol&iacute;cia militar deu-se in&iacute;cio a troca de comando com a presen&ccedil;a do Comandante geral da Pol&iacute;cia Militar de Rond&ocirc;nia, coronel Fernando Luis Brum Prettz. Ap&oacute;s ocorreu a leitura de elogios concedidos pelo tenente Marcos Vandrey Fr&aacute; a toda tropa que esteve sob seu comando, aos convidados, aos colaborados e a Associa&ccedil;&atilde;o Empresarial de Rolim de Moura, representada pela atual presidente Kelly Naahmara Rodrigues Jorge, que prestou homenagem ao tenente comentando o trabalho por ele efetuado em nosso munic&iacute;pio e as parcerias firmadas entre a ACIRM e a Policia Militar ao longo desses anos sob o seu comando. Ao t&eacute;rmino a presidente fez a entrega de uma placa de honras e um certificado pelos servi&ccedil;os prestados a Rolim de Moura. Em seguida, deu-se a homenagem da Guarda mirim e dos jovens recrutas de Rolim de Moura, pudemos presenciar tamb&eacute;m a maravilhosa apresenta&ccedil;&atilde;o da orquestra da Guarda mirim coordenada pelo cabo A&eacute;cio, a mesma prestou homenagem ao ent&atilde;o comandante do batalh&atilde;o, com a entrega de um quadro com fotos da tropa mirim. A tropa feminina da pol&iacute;cia militar tamb&eacute;m prestou homenagem ao tenente Marcos Vandrey Fr&aacute;, homenageando-o com uma placa de honra pelos servi&ccedil;os prestados a 4&ordf; Companhia de Fronteira de Pol&iacute;cia Militar de Rond&ocirc;nia. In&uacute;meras foram &agrave;s homenagens prestadas ao Tenente, toda a popula&ccedil;&atilde;o o reconhecia como parte da fam&iacute;lia rolimourense. Como momento especial, aconteceu a passagem de comando da 4&ordf; Companhia de Fronteira de Pol&iacute;cia Militar, do tenente Marcos Vandrey Fr&aacute; ao Tenente Clodomar Rodrigues. Presidiu o ato, o comandante geral da Pol&iacute;cia Militar, coronel Fernando Luis Brum Prettz.</p>\r\n', '2015-03-30 21:15:12', '', 'noticias/2015/03/acirm-presta-homenagem-ao-tenente-marcos-fra.JPG', 0, '', NULL, NULL, NULL),
	(12, 'eleicao-da-nova-diretoria-para-o-bienio-2015-2017-encerrada', 'Eleição da nova diretoria para o biênio 2015/ 2017 encerrada', 'Eleição da nova diretoria da ACIRM biênio 2015/ 2017', 'ACIRM', 'ACIRM', 'nao', '<p>A empres&aacute;ria KELLY NAAHMARA RODRIGUES JORGE foi eleita nesta quarta-feira (24) presidente da Associa&ccedil;&atilde;o Empresarial de Rolim de Moura (ACIRM), encabe&ccedil;ando chapa &uacute;nica O ASSOCIATIVISMO EM A&Ccedil;&Atilde;O, de consenso para dirigir a entidade no bi&ecirc;nio 2015-2017. KELLY NAAHMARA RODRIGUES JORGE, concorreu &agrave; reelei&ccedil;&atilde;o da entidade, tendo como vice-presidente na nova diretoria EZEQUIEL PEREIRA GON&Ccedil;ALVES. A elei&ccedil;&atilde;o ocorreu na sede da entidade, das 08h00 &agrave;s 12h00.</p>\r\n\r\n<p>&ldquo;Nos dois anos que permanecemos &agrave; frente da gest&atilde;o da entidade vimos um acentuado crescimento em rela&ccedil;&atilde;o &agrave; hist&oacute;ria da Associa&ccedil;&atilde;o Empresarial. No entanto, temos opini&atilde;o que a altern&acirc;ncia de poder &eacute; fundamental para que a entidade siga c&eacute;lere em seu processo de fortalecimento de representatividade junto ao setor p&uacute;blico e &agrave; sociedade em geral&rdquo;, comentou KELLY NAAHMARA RODRIGUES JORGE. Para ela, essa oxigena&ccedil;&atilde;o &eacute; importante para que novas ideias e novas propostas sejam colocadas em pr&aacute;tica.</p>\r\n\r\n<p>&ldquo;O EZEQUIEL&rdquo; (LUA NOVA) empres&aacute;rio que far&aacute; parte da presid&ecirc;ncia na nova diretoria nos acompanha desde o in&iacute;cio da primeira gest&atilde;o, em 2014, tendo participado das grandes decis&otilde;es que levaram a entidade ao patamar em que est&aacute; hoje, inclusive atuando firmemente na gest&atilde;o do planejamento estrat&eacute;gico que implantamos na Associa&ccedil;&atilde;o.</p>\r\n\r\n<p>Empres&aacute;ria atuando no setor comercial h&aacute; muitos anos, KELLY NAAHMARA RODRIGUES JORGE &eacute; propriet&aacute;ria da Gr&aacute;fica KL, localizada na Av S&atilde;o Luiz. Ela ter&aacute; a incumb&ecirc;ncia de manter e ampliar a representatividade institucional da ACIRM, refor&ccedil;ando os la&ccedil;os com o empresariado local nos pr&oacute;ximos dois anos.</p>\r\n\r\n<p>&ldquo;&Eacute; incontest&aacute;vel a for&ccedil;a representativa que a Associa&ccedil;&atilde;o Empresarial tem atualmente gra&ccedil;as a um trabalho s&eacute;rio que esse grupo de gest&atilde;o realizou nos &uacute;ltimos dois anos. Nossa proposta &eacute; continuar crescendo e ocupando novos espa&ccedil;os, fazendo com que a ACIRM seja cada dia mais a voz do empresariado de Rolim de Moura&rdquo;, afirma KELLY.</p>\r\n\r\n<p>Conforme A presidente que toma posse novamente nos pr&oacute;ximos dias, um dos maiores desafios da sua gest&atilde;o ser&aacute; dar suporte ao pequeno empreendedor para que este esteja fortalecido no in&iacute;cio da atividade empresarial.</p>\r\n\r\n<p>&ldquo;Pretendo fazer uma cartilha alertando os novos empreendedores, n&atilde;o o caminho do sucesso, mas a n&atilde;o cometer aquilo que ser&aacute; prejudicial&rdquo;, comenta KELLY a respeito de uma pesquisa que aponta que grande parte dos novos neg&oacute;cios encerram suas atividades no primeiro ano de vida.</p>\r\n\r\n<p>Outra postura da nova presidente da ACIRM ser&aacute; fortalecer os cursos e palestras de capacita&ccedil;&atilde;o t&eacute;cnica desenvolvidos em parceria com o SEBRAE, para o fortalecimento e melhoria da m&atilde;o de obra em nosso munic&iacute;pio. &ldquo;Temos a necessidade de qualificar os trabalhadores para chegar ao mercado de forma adequada&rdquo;, concluiu KELLY NAAHMARA RODRIGUES JORGE.</p>\r\n', '2015-03-30 21:44:16', '', 'noticias/2015/03/eleicao-da-nova-diretoria-para-o-bienio-2015-2017-encerrada.jpg', 0, '', NULL, NULL, NULL),
	(13, 'posse-da-nova-diretoria-da-acirm', 'POSSE DA NOVA DIRETORIA DA ACIRM', 'Posse da nova diretoria da ACIRM biênio 2015 - 2017', 'ACIRM', 'ACIRM', 'nao', '<p>Posse da nova diretoria da ACIRM, bi&ecirc;nio 2015/ 2017.</p>\r\n', '2015-04-29 23:29:01', '', 'noticias/2015/04/posse-da-nova-diretoria-da-acirm.JPG', 0, '', NULL, NULL, NULL),
	(14, 'bem-vindo-ao-novo-site-da-acirm', 'BEM VINDO AO NOVO SITE DA ACIRM', 'Bem vindo ao novo web site da Acirm.', 'ACIRM', 'ACIRM', 'nao', '<p>Bem vindo ao novo site da ACIRM.</p>\r\n\r\n<p>Repaginamos nosso site com o objetivo de torn&aacute;-lo mais interativo e funcional.</p>\r\n\r\n<p>Para a utiliza&ccedil;&atilde;o desta nova ferramenta, algumas dicas:</p>\r\n\r\n<p>Na home do site, os banners levam com apenas um click ao servi&ccedil;o correspondente.</p>\r\n\r\n<p>As logomarcas de nossos servi&ccedil;os s&atilde;o links para a descri&ccedil;&atilde;o da linha de acesso. Na p&aacute;gina correspondente, voc&ecirc; encontra as linhas de servi&ccedil;os disponibilizadas pela ACIRM. Disponibilizamos em alguns servi&ccedil;os cat&aacute;logos e em breve v&iacute;deos explicativos.</p>\r\n\r\n<p>Al&eacute;m disso, disponibilizamos links na home para consulta dos servi&ccedil;os, agenda dos eventos, agenda do dia, cursos, conv&ecirc;nios, tudo o que a ACIRM oferece ao seu associado estar&aacute; dispon&iacute;vel em nosso novo site, informativos, comunicados, convites, tudo que aquilo que acreditamos ser &uacute;til aos nossos associados.</p>\r\n\r\n<p>Para facilitar o seu contato com a ACIRM, criaremos o chat on-line para cada departamento, desta forma esperamos prestar sempre o melhor atendimento.</p>\r\n\r\n<p>No menu empregos, disponibilizaremos um novo sistema para cadastro de vagas de empregos e cadastro de curr&iacute;culo para os interessados. Disponibilizaremos as informa&ccedil;&otilde;es a toda a popula&ccedil;&atilde;o.</p>\r\n\r\n<p>O menu cursos, a ACIRM implantou um novo sistema de cursos totalmente gratuitos a toda a popula&ccedil;&atilde;o, o Integra CACB, Confedera&ccedil;&atilde;o Nacional das Associa&ccedil;&otilde;es Comerciais disponibiliza gratuitamente aos seus associados. Esperemos colaborar para a capacita&ccedil;&atilde;o e melhor forma&ccedil;&atilde;o dos nossos associados e funcion&aacute;rios.</p>\r\n\r\n<p>Aproveite tamb&eacute;m para visitar o conte&uacute;do institucional da empresa.</p>\r\n\r\n<p>Assim voc&ecirc; vai conhecer nossa estrutura, vis&atilde;o, miss&atilde;o e valores.</p>\r\n', '2015-04-30 10:07:04', '', 'noticias/2015/04/bem-vindo-ao-novo-site-da-acirm.jpg', 0, '', NULL, NULL, NULL),
	(15, 'ibpt-lanca-manual-sobre-a-nova-lei-de-discriminacao-do-imposto-na-nota-fiscal', 'IBPT lança manual sobre a nova lei de discriminação do imposto na nota fiscal', 'Manual de integração de olho no imposto', 'IBPT', 'IBPT - Instituto Brasileiro de Planejamento Tributário', 'nao', '<p>O Instituto Brasileiro de Planejamento e Tributa&ccedil;&atilde;o (IBPT) disponibilizou o Manual de Integra&ccedil;&atilde;o &ldquo;De Olho no Imposto&quot; para ajudar os empres&aacute;rios a se adaptarem&nbsp;&agrave; nova lei que determina a discrimina&ccedil;&atilde;o do valor dos tributos nas notas fiscais. Nele &eacute; poss&iacute;vel obter orienta&ccedil;&otilde;es, esclarecimentos, informa&ccedil;&otilde;es e dicas para que as empresas varejistas exibam a carga tribut&aacute;ria em cupons e notas fiscais emitidas aos clientes.<br />\r\n<br />\r\nO manual cont&eacute;m padr&otilde;es t&eacute;cnicos de comunica&ccedil;&atilde;o entre sistemas empresariais de emiss&atilde;o de cupons e notas fiscais. O documento tamb&eacute;m inclui o arquivo IBPTax do Movimento De Olho no Imposto, que cont&eacute;m a planilha com carga tribut&aacute;ria m&eacute;dia aproximada de todos os produtos e servi&ccedil;os, baseados na Nomenclatura Comum do Mercosul (NCM) e Nomenclatura Brasileira de Servi&ccedil;os (NBS), em atendimento ao artigo 2&ordm; da lei 12.741/2012</p>\r\n\r\n<p><a href="http://www.sindivarejistacampinas.org.br/painel/dbarquivos/dbanexos/manualdeolhonoimpostov006p.pdf" target="_blank"><strong><em>Clique aqui para ter acesso ao manual &ldquo;De Olho no Imposto&rdquo;</em></strong></a></p>\r\n\r\n<p>A lei que determina a discrimina&ccedil;&atilde;o do valor dos tributos nas notas fiscais &ndash; n&ordm; 12.741, de dezembro de 2012 &ndash; entrou em vigor no come&ccedil;o de junho, mas o com&eacute;rcio ter&aacute; prazo de um ano para se adaptar &agrave;s regras e, ao longo desse per&iacute;odo, n&atilde;o ser&aacute; autuado.</p>\r\n\r\n<p><a href="http://www.sindivarejistacampinas.org.br/noticia.php?id=1112" target="_blank"><strong><em>Clique aqui para ler mais sobre o assunto</em></strong></a></p>\r\n\r\n<p><a href="https://www.ibpt.org.br/" target="_blank">https://www.ibpt.org.br/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-05-04 11:12:03', 'http://www.youtube.com/watch?v=Rg13C8NcT6Y', 'noticias/2015/05/confira-aqui-a-versao-atualizada-do-manual-de-olho-no-imposto.jpg', 0, '', NULL, NULL, NULL),
	(17, 'impostometro-atinge-r-600-bilhoes', 'Impostômetro atinge R$ 600 bilhões', 'Em 2014, o valor foi alcançado 12 dias depois, no dia 6 de maio.', 'IBPT', 'IBPT - Instituto Brasileiro de Planejamento Tributário', 'nao', '<p>O total de impostos, taxas e contribui&ccedil;&otilde;es que os brasileiros j&aacute; pagaram &agrave; Uni&atilde;o, Estados e munic&iacute;pios neste ano atingiu a marca de R$ 600 bilh&otilde;es nesta sexta-feira, 24, por volta das 13h50, de acordo com o Impost&ocirc;metro da Associa&ccedil;&atilde;o Comercial de S&atilde;o Paulo (ACSP). Em 2014, o valor foi alcan&ccedil;ado 12 dias depois, no dia 6 de maio.</p>\r\n\r\n<p>Para o presidente da ACSP, Alencar Burti, essa antecipa&ccedil;&atilde;o deixa claro o aumento da carga tribut&aacute;ria de um ano para o outro. &quot;Isso significa que, no Brasil, a arrecada&ccedil;&atilde;o cresceu mais do que a economia. Ou seja, aumentou a contribui&ccedil;&atilde;o compuls&oacute;ria de cada cidad&atilde;o para os governos&quot;, afirmou, em nota.</p>\r\n\r\n<p>De acordo com as estimativas da entidade, 2015 deve bater recorde na arrecada&ccedil;&atilde;o de tributos, com um total de R$ 2 trilh&otilde;es. No ano passado, o total arrecadado foi de pouco mais de R$ 1,8 trilh&atilde;o.</p>\r\n\r\n<p>Nos dez anos de exist&ecirc;ncia do painel, os brasileiros j&aacute; pagaram mais de R$ 12,878 trilh&otilde;es em tributos.&nbsp;</p>\r\n\r\n<p><a href="http://www.impostometro.com.br/" target="_blank">http://www.impostometro.com.br/</a></p>\r\n', '2015-05-04 11:40:32', '', 'noticias/2015/05/impostometro-atinge-r-600-bilhoes.jpg', 0, '', NULL, NULL, NULL),
	(19, 'cooperativismo-historico', 'COOPERATIVISMO HISTÓRICO', 'História do Cooperativismo', 'mdic', 'http://www.mdic.gov.br/sistemas_web/aprendex/cooperativismo/index/conteudo/id/297', 'nao', '<p>O cooperativismo surgiu formalmente em 1844, na Inglaterra, com a experi&ecirc;ncia daqueles que passaram &agrave; hist&oacute;ria como os &quot;Pioneiros de Rochdale&quot;. Nessa pequena cidade - hoje um bairro de Manchester - 28 trabalhadores (tecel&otilde;es, em sua maioria), criaram um armaz&eacute;m que fornecia produtos a eles mesmos com pre&ccedil;os abaixo dos praticados no mercado. A id&eacute;ia espalhou-se rapidamente: em 1881, j&aacute; existiam aproximadamente mil cooperativas de consumo no mundo, com cerca de 550 mil associados.</p>\r\n\r\n<p>As primeiras iniciativas cooperativistas no Brasil surgiram pouco tempo depois. Em 1889, foi criada a Sociedade Cooperativa Econ&ocirc;mica dos Funcion&aacute;rios P&uacute;blicos de Ouro Preto, em Minas Gerais. A exemplo da experi&ecirc;ncia inglesa pioneira, a primeira cooperativa brasileira tamb&eacute;m era do ramo de consumo.<br />\r\n<br />\r\nAinda no s&eacute;culo XIX, foram criadas as primeiras organiza&ccedil;&otilde;es integrantes do ramo que se tornaria destaque no &acirc;mbito do cooperativismo brasileiro: o agropecu&aacute;rio. A primeira experi&ecirc;ncia foi a Societ&agrave; Cooperativa delle Convenzioni Agricoli, fundada em Veran&oacute;polis, Rio Grande do Sul, em 1892. De fato, como consequ&ecirc;ncia da onda migrat&oacute;ria europ&eacute;ia, o cooperativismo brasileiro desenvolveu-se muito fortemente na regi&atilde;o sul do pa&iacute;s, principalmente a partir do in&iacute;cio do s&eacute;culo XX, com forte influ&ecirc;ncia do &quot;modelo alem&atilde;o&quot; que, entre outras caracter&iacute;sticas, defendia a educa&ccedil;&atilde;o direcionada a estimular a solidariedade e a uni&atilde;o de todos para a defesa de interesses comuns.<br />\r\n<br />\r\nA Lei do Cooperativismo (Lei n&ordm; 5.764), em vigor, foi aprovada em 16 de dezembro de 1971, e detalha a classifica&ccedil;&atilde;o, a constitui&ccedil;&atilde;o e o funcionamento das empresas cooperativas. Essa legisla&ccedil;&atilde;o caracteriza as cooperativas como &quot;sociedades de pessoas, com forma e natureza jur&iacute;dica pr&oacute;prias, de natureza civil, n&atilde;o sujeitas &agrave; fal&ecirc;ncia, constitu&iacute;das para prestar servi&ccedil;os aos associados&quot;. Em 1988, pela primeira vez a Constitui&ccedil;&atilde;o Federal abordou o tema do cooperativismo, vedando a interfer&ecirc;ncia estatal no funcionamento das cooperativas, assegurando &ldquo;adequado tratamento tribut&aacute;rio ao ato cooperativo&rdquo; e determinando ao Estado apoiar e estimular o cooperativismo e outras formas de associativismo.</p>\r\n', '2015-05-06 11:03:09', '', 'noticias/2015/05/cooperativismo-historico.jpg', 0, '', NULL, NULL, NULL),
	(20, 'eu-nao-sei', 'Eu não sei', 'Bom dia Associado', 'Jeff Schmitt', 'Patriani', 'nao', '<p>&ldquo;Eu n&atilde;o sei&rdquo;.</p>\r\n\r\n<p>Ningu&eacute;m tem todas as respostas. E isso pode assustar muitos profissionais. Esse &eacute; um ponto perfeito para come&ccedil;ar um di&aacute;logo. Enfrentar o desconhecido - e buscando garantias de respostas. Tudo o que voc&ecirc; tem a fazer &eacute;, primeiramente, admitir que voc&ecirc; n&atilde;o sabe.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-05-06 11:39:37', '', 'noticias/2015/05/eu-confio-em-seu-julgamento.jpg', 0, '', NULL, NULL, NULL),
	(22, 'locais-de-vacinacao-contra-gripe-influenza', 'LOCAIS DE VACINAÇÃO CONTRA GRIPE (Influenza)', 'DIA 09 DE MAIO VACINAÇÃO CONTRA GRIPE (Influenza)', 'ACIRM', 'Semusa', 'nao', '<p>A abertura oficial da 17&ordf; Campanha Nacional de Vacina&ccedil;&atilde;o contra a Influenza, com o Dia D da Vacina&ccedil;&atilde;o ocorre neste s&aacute;bado (9) no munic&iacute;pio de Rolim de Moura, a partir das 8h, na Unidade de Sa&uacute;de da Cidade Alta, Albert Sabin e na Faculdade FSP.</p>\r\n\r\n<p>A vacina&ccedil;&atilde;o contra a gripe &eacute; para reduzir as complica&ccedil;&otilde;es, interna&ccedil;&otilde;es e mortalidade por consequ&ecirc;ncia da doen&ccedil;a. Os tr&ecirc;s pontos de vacina&ccedil;&atilde;o estar&atilde; abertos a popula&ccedil;&atilde;o na abertutra no Dia D da Vacina&ccedil;&atilde;o. Almejamos que todos fa&ccedil;am a busca ativa da popula&ccedil;&atilde;o alvo, disponibilizando as doses em locais distantes e de dif&iacute;cil acesso como na zona rural. Os idosos e pessoas com dificuldade de locomo&ccedil;&atilde;o podem solicitar a aplica&ccedil;&atilde;o da dose em casa&rdquo;, que &eacute; de direito do cidad&ccedil;&atilde;o e dever do estado.</p>\r\n\r\n<p>As pessoas n&atilde;o podem perder tempo e devem procurar os postos de vacina&ccedil;&atilde;o mais pr&oacute;ximos. O papel da Uni&atilde;o &eacute; fazer a distribui&ccedil;&atilde;o a todos os munic&iacute;pios para que cada um fique plenamente abastecido. Orientamos cada vez mais os munic&iacute;pios para que intensifiquem as a&ccedil;&otilde;es de conscientiza&ccedil;&atilde;o e convidem seus moradores para que levem seus pais, av&oacute;s, tios, esposas e filhos at&eacute; os postos. &Eacute; preciso cada vez mais conversar com a comunidade sobre a import&acirc;ncia da vacina&ccedil;&atilde;o.</p>\r\n\r\n<p>Com essa mudan&ccedil;a de esta&ccedil;&atilde;o e de condi&ccedil;&otilde;es clim&aacute;ticas, &eacute; preciso que todos fiquem protegidos. Aqueles que t&ecirc;m doen&ccedil;as cr&ocirc;nicas devem apresentar tamb&eacute;m prescri&ccedil;&atilde;o m&eacute;dica no ato da vacina&ccedil;&atilde;o e os que j&aacute; fazem parte de programas de controle das doen&ccedil;as cr&ocirc;nicas do SUS, devem se dirigir aos postos em que est&atilde;o cadastrados para receber a vacina, que &eacute; uma a&ccedil;&atilde;o preventiva e gratuita.</p>\r\n\r\n<p>Abertura:</p>\r\n\r\n<p>Data: 09/05/2015</p>\r\n\r\n<p>Hor&aacute;rio: das 08:00 &agrave;s 12:00 e das 14:00 &agrave;s 17:00 horas</p>\r\n\r\n<p>Locais de vacina&ccedil;&atilde;o:</p>\r\n\r\n<ul>\r\n	<li>Posto de S&aacute;ude Cidade Alta;</li>\r\n	<li>Posto de Sa&uacute;de Albert Sabin;</li>\r\n	<li>Faculdade FSP.</li>\r\n</ul>\r\n\r\n<p>&nbsp;Quem pode tomar:</p>\r\n\r\n<ul>\r\n	<li>Idosos;</li>\r\n	<li>Gestantes;</li>\r\n	<li>Crian&ccedil;as de 06 meses a 04 anos 11 meses e 29 dias.</li>\r\n</ul>\r\n\r\n<p>VOC&Ecirc; N&Atilde;O PODE FALTAR.</p>\r\n', '2015-05-08 14:34:34', '', 'noticias/2015/05/locais-de-vacinacao-contra-gripe-influenza.jpg', 0, '', NULL, NULL, NULL),
	(23, 'comemoracao-do-dia-das-maes', 'Comemoração do dia das Mães', 'Feliz Dia das Mães', 'ACIRM', 'ACIRM', 'nao', '<p>No Brasil, o Dia das m&atilde;es &eacute; comemorado sempre no segundo domingo de maio (de acordo com decreto assinado em 1932 pelo presidente Get&uacute;lio Vargas). &Eacute; uma data especial, pois as m&atilde;es recebem presentes e lembran&ccedil;as de seus filhos. J&aacute; se tornou uma tradi&ccedil;&atilde;o esta data comemorativa. Vamos entender um pouco mais sobre a hist&oacute;ria do Dia das M&atilde;es.<br />\r\n&nbsp;<br />\r\nHist&oacute;ria do Dia das M&atilde;es<br />\r\n&nbsp;<br />\r\nEncontramos na Gr&eacute;cia Antiga os primeiros ind&iacute;cios de comemora&ccedil;&atilde;o desta data. Os gregos prestavam homenagens a deusa Reia, m&atilde;e comum de todos os seres. Neste dia, os &nbsp;gregos faziam ofertas, oferecendo presentes, al&eacute;m de prestarem &nbsp;homenagens &agrave; deusa.<br />\r\n&nbsp;<br />\r\nOs romanos, que tamb&eacute;m eram polite&iacute;stas e seguiam uma religi&atilde;o muita parecida com a grega, faziam este tipo de celebra&ccedil;&atilde;o. Em Roma, durava cerca de 3 dias ( entre 15 a 18 de mar&ccedil;o). Tamb&eacute;m eram realizadas festas em homenagem a Cibele, &nbsp;m&atilde;e dos deuses.<br />\r\n&nbsp;<br />\r\nPor&eacute;m, a comemora&ccedil;&atilde;o tomou um car&aacute;ter crist&atilde;o somente nos prim&oacute;rdios do cristianismo. Era uma celebra&ccedil;&atilde;o realizada &nbsp;em homenagem a Virgem Maria, a m&atilde;e de Jesus.<br />\r\n&nbsp;<br />\r\nMas uma comemora&ccedil;&atilde;o mais semelhante a dos dias atuais podemos encontrar na Inglaterra do s&eacute;culo XVII. Era o &ldquo;Domingo das M&atilde;es&rdquo;. &nbsp;Durante as missas, os filhos entregavam presentes para suas m&atilde;es. Aqueles filhos que trabalhavam longe de casa, ganhavam o dia para poderem visitar suas m&atilde;es. Portanto, era um dia destinado a visitar as m&atilde;es e dar presentes, muito parecido com que fazemos atualmente.<br />\r\n&nbsp;<br />\r\nNos Estados Unidos, a ideia de criar uma data em homenagem &agrave;s m&atilde;es foi proposta, em 1904, por Anna Jarvis. A ideia de Anna era criar uma data em homenagem a sua m&atilde;e que havia sido um exemplo de mulher, pois havia prestado servi&ccedil;os comunit&aacute;rios durante a Guerra Civil Americana. Seus pedidos e sua campanha deram certo e a data foi oficializada, em 1914, pelo Congresso Norte-Americano. A lei, que declarou o Dia das M&atilde;es como festa nacional, &nbsp;foi aprovada pelo presidente Woodrow Wilson. Ap&oacute;s esta iniciativa, muitos outros pa&iacute;ses seguiram o exemplo e inclu&iacute;ram a data no calend&aacute;rio.&nbsp;<br />\r\n&nbsp;<br />\r\nAp&oacute;s estes eventos, a data espalhou-se pelo mundo todo, por&eacute;m ganhando um car&aacute;ter comercial. A ess&ecirc;ncia da data estava sendo esquecida e foco passou a ser a compra de presentes, ditado pelas lojas como objetivos meramente comerciais. Este fato desagradou Anna Jarvis, que estava muito desapontada em ver que o car&aacute;ter de solidariedade e amor da data estavam se perdendo. Ela tentou modificar tudo isso. Em 1923, liderou uma campanha contra a comercializa&ccedil;&atilde;o desta data. Embora com muita repercuss&atilde;o, a campanha pouco conseguiu mudar.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-05-10 09:42:38', '', 'noticias/2015/05/comemoracao-do-dia-das-maes.jpg', 0, '', NULL, NULL, NULL),
	(24, 'prestacao-de-contas-observatorio-social', 'PRESTAÇÃO DE CONTAS OBSERVATÓRIO SOCIAL', '26 DE MAIO DE 2015', 'ACIRM', 'ACIRM', 'nao', '<p>Presta&ccedil;&atilde;o de contas do Observat&oacute;rio Social de Rolim de Moura</p>\r\n\r\n<p>Presta&ccedil;&atilde;o de contas referente ao primeiro quadrimestre de 2015.</p>\r\n\r\n<p>Local: Audit&oacute;rio do CEEJA</p>\r\n\r\n<p>Hor&aacute;rio: 20:00 horas</p>\r\n\r\n<p>Data: 26 de maio de 2015</p>\r\n\r\n<p>Participe voc&ecirc; tamb&eacute;m, afinal essa cidade tamb&eacute;m &eacute; sua.</p>\r\n', '2015-05-10 16:25:49', '', 'noticias/2015/05/prestacao-de-contas-observatorio-social.jpg', 0, '', NULL, NULL, NULL),
	(25, '4-rondonia-rural-show', '4ª Rondônia Rural Show', 'Feira de Tecnologias e Oportunidades de Negócios Agropecuários', 'Acirm', 'Rural Show', 'nao', '<p>4&ordf; Rond&ocirc;nia Rural Show - Feira de Tecnologias e Oportunidades de Neg&oacute;cios Agropecu&aacute;rios</p>\r\n\r\n<p>A feira &eacute; anual.<br />\r\nSetor agropecu&aacute;rio, m&aacute;quinas e equipamentos agr&iacute;colas, animais de corte e leite, concurso leiteiro, piscicultura, artesanato, agroind&uacute;stria, vitrine tecnol&oacute;gica, ve&iacute;culos.<br />\r\nHor&aacute;rio Padr&atilde;o: 07:30 &agrave;s 18:00<br />\r\nInforma&ccedil;&otilde;es</p>\r\n\r\n<p>Periodicidade: Nacional<br />\r\nCidade: Ji Paran&aacute;<br />\r\nEstado: Rond&ocirc;nia<br />\r\nPa&iacute;s: Brasil<br />\r\nLocal: Parque de Exposi&ccedil;&otilde;es Herm&iacute;nio Victorelli<br />\r\nCategoria: Aberto ao p&uacute;blico<br />\r\nSegmento: Feira<br />\r\nPromotor: SEAGRI<br />\r\nEndere&ccedil;o do Promotor: Av. Farquar, 2986 - Pedrinhas<br />\r\nTelefone: (69) 3216-5990<br />\r\nFax: (69) 3216-5261<br />\r\nEmail: rrshow@seagri.ro.gov.br<br />\r\n<a href="http://www.rondonia.ro.gov.br/seagri/" target="_blank">Site: www.seagri.ro.gov.br</a></p>\r\n', '2015-05-11 09:30:05', '', 'noticias/2015/05/4-rondonia-rural-show.jpg', 0, '', NULL, NULL, NULL),
	(26, 'trofeu-acirm-2014-hoje-no-ctg', 'TROFÉU ACIRM 2014 - HOJE NO CTG', 'Troféu ACIRM', 'ACIRM', 'ACIRM', 'nao', '<p>&quot;OS MELHORES BRILHAM&quot;</p>\r\n\r\n<p>A ACIRM promove mais uma edi&ccedil;&atilde;o do TROF&Eacute;U ACIRM.</p>\r\n\r\n<p>No 12 de maio, a partir das 20:00 horas no CTG - Centro de Tradi&ccedil;&otilde;es Ga&uacute;chas mais uma edi&ccedil;&atilde;o do TROF&Egrave;U ACIRM.</p>\r\n\r\n<p>Informa&ccedil;&otilde;es:</p>\r\n\r\n<p>Fone (69)3442-1950</p>\r\n\r\n<p>E-mail: acirmeventos@acirmro.com.br</p>\r\n', '2015-05-11 10:07:56', '', 'noticias/2015/05/trofeu-acirm-2014-hoje-no-ctg.png', 0, '', NULL, NULL, NULL),
	(27, 'circuito-de-palestras-sebrae-senai', 'Circuito de palestras SEBRAE - SENAI', 'Inova Modas 2016', 'Sebrae', 'Sebrae', 'nao', '<p>Informa&ccedil;&otilde;es:</p>\r\n\r\n<p>Sebrae Pimenta Bueno (69) 3451-3122</p>\r\n\r\n<p>Senai Cacoal: (69) 3441-3093</p>\r\n', '2015-05-14 16:02:39', '', 'noticias/2015/05/circuito-de-palestras-sebrae-senai.jpg', 0, '', NULL, NULL, NULL),
	(29, 'a-presidente-da-acirm-visita-a-casabella-a-mais-nova-empresa-no-ramo-de-moveis-decoracoes-e-presentes-de-rolim-de-moura', 'A presidente da ACIRM visita a Casabella, a mais nova empresa no ramo de móveis, decorações e presentes de Rolim de Moura.', 'CasaBella Móveis, Decorações e Presentes', 'ACIRM', 'ACIRM', 'nao', '<p>A presidente da ACIRM visita a Casabella, a mais nova empresa no ramo de m&oacute;veis, decora&ccedil;&otilde;es e presentes de Rolim de Moura.</p>\r\n\r\n<p>Dando seguimento ao mais novo projeto da ACIRM, &quot;SEJA BEM VINDO A ROLIM DE MOURA&quot;, a presidente da ACIRM, Kelly Naahmara Rodrigues Jorge, visitou neste final de semana a empresa CASABELLA.</p>\r\n\r\n<p>Recepcionada pelos propriet&aacute;rios, Arrison Freitas e sua esposa Eunice Meireles Lopes, num ambiente totalmente moderno, diferenciado e com produtos que trazem uma verdadeira evolu&ccedil;&atilde;o ao com&eacute;rcio de Rolim de Moura, a presidente parabenizou a nova empresa e deu as boas vindas a Rolim de Moura.</p>\r\n\r\n<p>A ACIRM busca incentivar as novas empresas que se instalam em Rolim de Moura, oferecendo apoio e suporte. Com parcerias como a do SEBRAE a ACIRM busca inovar e oferecer aos novos empres&aacute;rios todo suporte dispon&iacute;vel para que tenham sucesso em sua jornada.</p>\r\n', '2015-05-24 16:15:21', '', 'noticias/2015/05/a-presidente-da-acirm-visita-a-casabella-a-mais-nova-empresa-no-ramo-de-moveis-decoracoes-e-presentes-de-rolim-de-moura.JPG', 0, '', NULL, NULL, NULL),
	(30, 'acirm-busca-novas-parcerias-com-senai-na-rural-show-2015', 'ACIRM BUSCA NOVAS PARCERIAS COM SENAI NA RURAL SHOW 2015', 'Capacitação técnica para moveleiros', 'ACIRM', 'ACIRM', 'nao', '<p>A presidente da ACIRM Kelly Naahmara Rodrigues Jorge, esteve visatando a oficina m&oacute;vel do Senai - RO na Rural Show 2015.</p>\r\n\r\n<p>O objetivo da visita buscava uma nova parceria entre a ACIRM e SENAI, para implanta&ccedil;&atilde;o do curso de capacita&ccedil;&atilde;o t&eacute;cnica na &aacute;rea de moveleiros.</p>\r\n\r\n<p>As parcerias entre ACIRM e SENAI sempre buscaram benefeciar a popul&ccedil;ao em geral de Rolim de Moura, e com o atendimento que o SENAI presta aos seus parceiros, teremos mais uma oficina em Rolim de Moura.</p>\r\n\r\n<p>A presidente da ACIRM come&ccedil;a nesta segunda feira acertar os detalhes para a implanta&ccedil;&atilde;o de mais uma oficina do SENAI em Rolim de Moura.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-05-28 22:04:58', '', 'noticias/2015/05/acirm-busca-novas-parcerias-com-senai-na-rural-show-2015.JPG', 0, '', NULL, NULL, NULL),
	(31, 'acirm-inicia-preparativos-para-o-liquida-rolim-2015', 'ACIRM INICIA PREPARATIVOS PARA O LIQUIDA ROLIM 2015', 'Liquida Rolim 2015', 'ACIRM', 'ACIRM', 'nao', '                                        <p>A ACIRM esta iniciando os preparativos para o Liquida Rolim 2015, aguardem!</p>\r\n                                    ', '2015-06-01 12:08:53', '', 'noticias/2015/06/liquida-rolim-2015.jpg', 0, '', NULL, NULL, NULL),
	(32, 'golpe-da-lista-telefonica-em-rolim-de-moura', 'GOLPE DA LISTA TELEFÔNICA EM ROLIM DE MOURA', 'Golpe da lista telefônica', 'ACIRM', 'ACIRM', 'nao', '<p>O golpe da lista telef&ocirc;nica come&ccedil;a em Rolim de Moura.</p>\r\n\r\n<p>Associados da ACIRM entraram em contato relatando que golpistas tentaram aplicar o golpe da lista telefonica.</p>\r\n\r\n<p>A ACIRM informa:</p>\r\n\r\n<p>* N&atilde;o de informa&ccedil;&otilde;es referentes a sua empresa;</p>\r\n\r\n<p>* Evita esticar muito a conversa;</p>\r\n\r\n<p>* Tente descobrir a raz&atilde;o social da empresa que esta ligando para voc&ecirc;;</p>\r\n\r\n<p>*Procure a agencia do PROCON o mais r&aacute;pido poss&iacute;vel e fa&ccedil;a a sua denuncia.</p>\r\n', '2015-06-01 16:33:16', '', 'noticias/2015/06/golpe-da-lista-telefonica-em-rolim-de-moura.jpg', 0, '', NULL, NULL, NULL),
	(33, 'acirm-conquista-mais-um-parceiro-para-a-oficina-de-moveleiros', 'ACIRM CONQUISTA MAIS UM PARCEIRO PARA A OFICINA DE MOVELEIROS', 'Oficina de Moveleiros', 'ACIRM', 'ACIRM', 'nao', '<p>Em conversa com o representante do SEBRAE em Rolim de Moura, Lucimar Lubiana, a presidente Kelly Naahmara fechou parceira com o SEBRAE para o in&iacute;cio da &quot;OFICINA DE MOVELEIROS ACIRM&quot;.</p>\r\n\r\n<p>O SEBRAE desenvolvera um projeto especial para os empres&aacute;rios de Rolim de Moura incorporando ja no dia 09 de junho com o Programa Agentes Locais de Inova&ccedil;&atilde;o (ALI).</p>\r\n\r\n<p>Em conversa ambas as entidades firmaram um compromisso para que a Oficina seja uma inova&ccedil;&atilde;o na ala moveleira de Rolim de Moura e regi&atilde;o.</p>\r\n\r\n<p>O Programa Agentes Locais de Inova&ccedil;&atilde;o ser&aacute; realizado no audit&oacute;rio da ACIRM.</p>\r\n\r\n<p>Informa&ccedil;&otilde;es pelo fone (69)3442-1950.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-06-03 14:10:22', '', 'noticias/2015/06/acirm-conquista-mais-um-parceiro-para-a-oficina-de-moveleiros.jpg', 0, '', NULL, NULL, NULL),
	(34, 'acirm-participa-da-recepcao-da-comitiva-chinesa-para-construcao-da-ferrovia-transcontinental-do-pacifico', 'ACIRM PARTICIPA DA RECEPÇÃO DA COMITIVA CHINESA PARA CONSTRUÇÃO DA FERROVIA TRANSCONTINENTAL DO PACÍFICO', 'RECEPÇÃO COMITIVA CHINESA', 'ACIRM', 'ACIRM', 'nao', '<p>A Presidente da ACIRM Kelly Naahmara, o vice-presidente Ezequiel Gon&ccedil;alves e &nbsp;Secret&aacute;ria executiva Ester Caliani estiveram hoje participando da recep&ccedil;&atilde;o da comitiva do governo Chin&ecirc;s em Ji-paran&aacute;. A convite do Senador Acir Gurgaz e com a presen&ccedil;a do Senador Valdir Raupp e a Deputada Federal Marinha Raupp, para elabora&ccedil;&atilde;o do projeto de constru&ccedil;&atilde;o da Ferrovia Transcontinental que interligara o Brasil ao oceano pac&iacute;fico.<br />\r\nNa solenidade os governos de Rond&ocirc;nia, Mato Grosso e Acre apresentaram sua economia e firmaram compromisso com a comitiva chinesa. O embaixador chin&ecirc;s no Brasil Li Jinzhang, em sua palavra, agradeceu o estado de Rond&ocirc;nia e apresentou os investimentos que a China tem feito no Brasil. Os empres&aacute;rios chineses foram apresentados e homenageados pelos empres&aacute;rios e pela diretoria da ACIRM.</p>\r\n', '2015-06-08 21:28:11', '', 'noticias/2015/06/acirm-participa-da-recepcao-da-comitiva-chinesa-para-construcao-da-ferrovia-transcontinental-do-pacifico.JPG', 0, '', NULL, NULL, NULL),
	(35, 'apresentacao-da-equipe-acirm-a-nova-diretoria-bienio-2015-2016', 'Apresentação da equipe ACIRM a nova diretoria biênio 2015/2016', 'Apresentação equipe ACIRM', 'ACIRM', 'ACIRM', 'nao', '<p>Hoje pela manh&atilde; da tradicional reuni&atilde;o da diretoria da ACIRM, foi apresentada a nova diretoria a equipe ACIRM.</p>\r\n\r\n<p>Todos os funcion&aacute;rios fizeram uma apresenta&ccedil;&atilde;o relativa aos seus departamentos e cargos que ocupam na entidade.</p>\r\n\r\n<p>A presidente Kelly Naahmara agradeceu a presen&ccedil;a da diretoria e parabenizou os funcion&aacute;rios pela dedica&ccedil;&atilde;o e pelo excelente trabalho que v&ecirc;m prestado n&atilde;o s&oacute; a entidade, mas a toda popula&ccedil;&atilde;o de Rolim de Moura.</p>\r\n', '2015-06-09 11:48:11', '', 'noticias/2015/06/apresentacao-da-equipe-acirm-a-nova-diretoria-bienio-2015-2016.JPG', 0, '', NULL, NULL, NULL),
	(36, 'bom-dia-associado-cafe-da-manha-acirm', 'BOM DIA ASSOCIADO - CAFÉ DA MANHÃ ACIRM', 'Bom dia Associado - ACIRM e você.', 'ACIRM', 'ACIRM', 'nao', '<p>A ACIRM deu in&iacute;cio hoje a mais um projeto, o BOM DIA ASSOCIADO.</p>\r\n\r\n<p>Toda 3&ordf; semana de cada mes ser&aacute; realizado um caf&eacute; da manh&atilde; para os associados.</p>\r\n\r\n<p>A ACIRM espera com essa integra&ccedil;&atilde;o estreitar o relacionamento n&atilde;o s&oacute; entre a entidade e seus associados, mas sim entre toda a fam&iacute;lia ACIRM. Para que possamos juntos massificar as a&ccedil;&otilde;es da ACIRM, buscando assim inova&ccedil;&otilde;es para nossos associados, comentou a presidente Kelly Naahamara.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-06-16 13:36:48', '', 'noticias/2015/06/bom-dia-associado-cafe-da-manha-acirm.JPG', 0, '', NULL, NULL, NULL),
	(37, 'migracao-de-sistema-acirm-sabado-20-06-2015', 'MIGRAÇÃO DE SISTEMA ACIRM - SÁBADO 20/06/2015', 'Migração de sistema', 'ACIRM', 'ACIRM', 'nao', '<p>A ACIRM comunica a todos os seus associados e colaboradoes que n&atilde;o h&aacute;vera expediente neste s&aacute;bado, 20 de junho de 2015.</p>\r\n\r\n<p>A entidade est&aacute; dando inicio a implanta&ccedil;&atilde;o de novas tecnologias e a migra&ccedil;&atilde;o do novo sistema a ser utilizado.</p>\r\n\r\n<p>Esparamos com essas novas atualiza&ccedil;&otilde;es, cooperar com nossos associados eferecendo um servi&ccedil;o cada mais &aacute;gl e de melhor qualidade.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-06-19 13:21:53', '', 'noticias/2015/06/migracao-de-sistema-acirm-sabado-20-06-2015.jpg', 0, '', NULL, NULL, NULL),
	(39, 'curso-de-gestao-de-estoque-sebrae', 'CURSO DE GESTÃO DE ESTOQUE SEBRAE', 'GESTÃO DE ESTOQUE SEBRAE', 'ACIRM', 'ACIRM', 'nao', '<p>CURSO DE GEST&Atilde;O DE ESTOQUE SEBRAE.</p>\r\n\r\n<p>VAGAS LIMITADAS, INSCRI&Ccedil;&Otilde;ES NA SEDE DA ACIRM.</p>\r\n\r\n<p>AS INSCRI&Ccedil;&Otilde;ES PODER&Atilde;O SER EFETUADAS AT&Eacute; 08/07/2015.</p>\r\n\r\n<p>ACIRM E VOC&Ecirc;, SEMPRE INOVANDO PARA COMPETIR.</p>\r\n', '2015-07-07 17:50:51', '', 'noticias/2015/07/curso-de-gestao-de-estoque-sebrae.jpg', 0, '', NULL, NULL, NULL),
	(40, 'acirm-visita-a-4-ficop', 'ACIRM VISITA A 4ª FICOP', '4ª FICOP - Feira Industrial e Comercial de Pimenta Bueno', 'ACIRM', 'ACIRM', 'nao', '<p>A Presidente Kelly Naahmara em companhia dos diretores Andr&eacute;ia Cristiane Gregory e Leonardo Schlickmann Vilela estiveram na noite de ontem visitando a 4&ordf; FICOP, Feira Industrial e Comercial de Pimenta Bueno.</p>\r\n\r\n<p>Durante o evento a diretoria da ACIRM pode abordar in&uacute;meros assuntos com o SEBRAE em rela&ccedil;&atilde;o aos projetos voltados a Rolim de Moura.</p>\r\n\r\n<p>Durante o evento, a presidente Kelly Naahmara foi convidada a fazer parte da mesa de autoridades para a abertura oficial da feira.</p>\r\n\r\n<p>Durante seu discurso na abertura da feira, a presidente parabenizou o presidente da ACIPB/ CDL, Walteir Cruz, pela organiza&ccedil;&atilde;o do evento e pelo trabalho realizado em Pimenta Bueno.</p>\r\n\r\n<p>Destacou ainda a import&acirc;ncia da Feira para Pimenta Bueno e regi&atilde;o e lembrando as autoridades presentes a import&acirc;ncia de um evento como esse como cart&atilde;o postal de nosso estado.</p>\r\n\r\n<p>In&uacute;meros foram os aplausos de autoridades presentes para com a presidente Kelly Naahmara, pois a ACIRM mais uma vez mostrou seu marco em Rolim de Moura e regi&atilde;o.</p>\r\n', '2015-07-10 16:58:46', '', 'noticias/2015/07/acirm-visita-a-4-ficop.JPG', 0, '', NULL, NULL, NULL),
	(41, 'parabens-comerciante', 'PARABÉNS COMERCIANTE', '16 de julho - Dia do Comerciante', 'ACIRM', 'ACIRM', 'nao', '<p>A ACIRM parabeniza a todos os comerciantes de Rolim de Moura.</p>\r\n', '2015-07-16 10:00:58', '', 'noticias/2015/07/parabens-comerciante.jpg', 0, '', NULL, NULL, NULL),
	(42, 'pelestra-henrique-prata', 'PELESTRA HENRIQUE PRATA', 'Acima de tudo o Amor', 'ACIRM', '', 'nao', '', '2015-07-16 17:13:38', '', 'noticias/2015/07/pelestra-henrique-prata.jpg', 0, '', NULL, NULL, NULL),
	(44, 'lancamento-liquida-rolim-2015', 'LANÇAMENTO LIQUIDA ROLIM 2015', 'Lançamento Liquida Rolim 2015', 'ACIRM', 'ACIRM', 'nao', '<p>&nbsp;diretoria da ACIRM confirmou nesta tarde o Lan&ccedil;amento do Liquida Rolim 2015.</p>\r\n\r\n<p>O novo formato da feira da liquida&ccedil;&atilde;o de Rolim de Moura tera inumeras novidades, sendo a&nbsp;principal delas o local de realiza&ccedil;&atilde;o.</p>\r\n\r\n<p>O local ser&aacute; na pr&oacute;pria sede de cada comerciante participante, cartazes, bandeirolas, etiquetas personalizadas ir&atilde;o indentificar os com&eacute;rcios participantes.&nbsp;</p>\r\n\r\n<p>A ACIRM espera com esse novo formato incentivar o com&eacute;rcio local e cidades vizinhas a tornarem o Liquida Rolim uma referencia em toda zona da mata.</p>\r\n\r\n<p>O coquetel de lan&ccedil;amento ser&aacute; no dia 11 de agosto, a partir das 19:30 hrs no auditporio da ACIRM.</p>\r\n\r\n<p>Contamos com a presen&ccedil;a de todos os associados.</p>\r\n', '2015-07-22 14:52:09', '', 'noticias/2015/07/lancamento-liquida-rolim-2015.jpg', 0, '', NULL, NULL, NULL),
	(45, 'representantes-do-senai-visitam-rolim-de-moura', 'REPRESENTANTES DO SENAI VISITAM ROLIM DE MOURA', 'SENAI visita sede da ACIRM', 'ACIRM', 'ACIRM', 'nao', '<p>Servi&ccedil;o Nacional de Aprendizagem Industrial (SENAI) visitou na tarde de ontem a sede da ACIRM, buscando fortalecer a parceria j&aacute; existente entre o SENAI e a ACIRM.</p>\r\n\r\n<p>Na visita os representantes do SENAI Marcos Brauna, Olavo, Cristiane e a presidente da ACIRM, Kelly Naahmara, discutiram as possibilidades de implanta&ccedil;&atilde;o de cursos de qualifica&ccedil;&atilde;o t&eacute;cnica e profissional voltados para o perfil econ&ocirc;mico do munic&iacute;pio.&nbsp;</p>\r\n\r\n<p>De acordo com o representante do SENAI, a oferta de estudos vai estar diretamente relacionada &agrave; demanda por m&atilde;o de obra especializada. Ao analisar as caracter&iacute;sticas do munic&iacute;pio, o SENAI indicara a abertura de cursos para Rolim de Moura e regi&atilde;o. No decorrer do ano e antes da inaugura&ccedil;&atilde;o da escola, novas indica&ccedil;&otilde;es devem ser feitas pela institui&ccedil;&atilde;o para melhor preparar o trabalhador de Rolim de Moura.</p>\r\n\r\n<p>Durante a visita foram apresentadas diversas propostas para o munic&iacute;pio, levando em considera&ccedil;&atilde;o os projetos j&aacute; solicitados pela ACIRM. Segundo a presidente Kelly Naahmara, o munic&iacute;pio de Rolim de Moura que j&aacute; conta com a constru&ccedil;&atilde;o da escola do SENAI e andamento, atender&aacute; a todos os requisitos solicitados pelo SENAI e principalmente atender e qualificar n&atilde;o s&oacute; a popula&ccedil;&atilde;o de Rolim de Moura, mas de toda a zona da mata.</p>\r\n\r\n<p>Com a chegada do SENAI em Rolim de Moura um novo ciclo de desenvolvimento se criara em nosso munic&iacute;pio. Isso estimulara n&atilde;o s&oacute; o com&eacute;rcio local, mas a todos aqueles que queiram investir em Rolim de Moura e regi&atilde;o. Beneficiando assim in&uacute;meras fam&iacute;lias e aumentando o potencial de nossa cidade.</p>\r\n', '2015-08-12 09:35:18', '', 'noticias/2015/08/representantes-do-senai-visitam-rolim-de-moura.JPG', 0, '', NULL, NULL, NULL),
	(46, 'jantar-de-lancamento-ano-novo-premiado-2015', 'JANTAR DE LANÇAMENTO ANO NOVO PREMIADO 2015', 'Jantar de lançamento Ano Novo Premiado 2015', 'ACIRM', 'ACIRM', 'nao', '<p>Informa&ccedil;&otilde;es:</p>\r\n\r\n<p>ACIRM</p>\r\n\r\n<p>Fone: (69)3442-1950 - 3442-3328</p>\r\n\r\n<p>ou pelo e-mail:</p>\r\n\r\n<p>falecom@acirmro.com.br</p>\r\n', '2015-08-12 13:51:06', '', 'noticias/2015/08/jantar-de-lancamento-ano-novo-premiado-2015.jpg', 0, '', NULL, NULL, NULL),
	(47, 'acirm-sai-em-defesa-do-comercio-local', 'ACIRM SAI EM DEFESA DO COMÉRCIO LOCAL', 'ACIRM busca apoio na Câmara de Vereadores em defesa do comércio local', 'ACIRM', 'ACIRM', 'nao', '<p>ACIRM PROTOCOLA OF&Iacute;CIO NA CAMARA MUNICIPAL, SOLICITANDO AOS VEREADORES QUE O PROJETO DE AUTORIA DO VEREADOR GERSON BASTOS N&Atilde;O VA PARA VOTA&Ccedil;&Atilde;O EM PLEN&Aacute;RIO. O PROJETO SOLICITA QUE SEJA INSTITUIDA LEI OBRIGANDO OS MERCADOS A COLOCAREM CARTAZES COM OS PRAZOS DE VALIDADE DE TODOS OS PRODUTOS. LEMBRAMOS QUE TODOS OS PRODUTOS COMERCIALIZADOS HOJE S&Atilde;O OBRIGADOS POR LEI FEDEREAL A TEREM SUAS RESPECTIVAS DATAS DE FABRICA&Ccedil;&Atilde;O E DE VALIDADE.</p>\r\n', '2015-08-19 12:30:10', '', 'noticias/2015/08/acirm-sai-em-defesa-do-comercio-local.jpg', 0, '', NULL, NULL, NULL),
	(48, 'convite-de-reinauguracao-vetclin', 'CONVITE DE REINAUGURAÇÃO VETCLIN', 'CONVITE DE REINAUGURAÇÃO VETCLIN', 'ACIRM', 'ACIRM', 'nao', '<p>A ACIRM CONVIDA A TODOS PARA A GRANDE REINAUGURA&Ccedil;&Atilde;O DA VETCLIN.</p>\r\n\r\n<p>DESEJAMOS A TODA FAM&Iacute;LIA VETCLIN SUCESSO NESSA NOVA ETAPA E AGRADECEMOS A VOC&Ecirc;S POR DIVIDIREM ESTE MOMENTO COM A ACIRM.</p>\r\n', '2015-08-19 13:26:15', '', 'noticias/2015/08/convite-de-reinauguracao-vetclin.jpg', 0, '', NULL, NULL, NULL),
	(50, 'encontro-mulheres-de-lenco', 'ENCONTRO MULHERES DE LENÇO', 'ENCONTRO MULHERES DE LENÇO', 'ACIRM', 'ACIRM', 'nao', '<p>ENCONTRO MULHERES DE LEN&Ccedil;O</p>\r\n\r\n<p>Data: 20/08/2015</p>\r\n\r\n<p>Hor&aacute;rio: 15:00hrs</p>\r\n\r\n<p>Local: SINDSEF</p>\r\n\r\n<p>ACIRM e voc&ecirc;!</p>\r\n', '2015-08-19 14:17:58', '', 'noticias/2015/08/encontro-mulheres-de-lenco.jpg', 0, '', NULL, NULL, NULL),
	(51, 'ano-novo-premiado-senhas-disponiveis-na-sede-da-acirm', 'ANO NOVO PREMIADO - SENHAS DISPONÍVEIS NA SEDE DA ACIRM', 'SENHAS DISPONÍVEIS NA SEDE DA ACIRM', 'ACIRM', 'ACIRM', 'nao', '<p>A ACIRM COMUNICA A TODOS OS ASSOCIADOS QUE AS SENHAS PARA O JANTAR DE LAN&Ccedil;AMENTO DO ANO NOVO PREMIADO JA EST&Atilde;O DISPONIVEIS NA SEDE DA ACIRM.</p>\r\n\r\n<p>AS SENHAS DEVER&Atilde;O SER RETIRADAS NA SEDE DA ACIRM.</p>\r\n\r\n<p>A ACIRM AGRADECE A COLABORA&Ccedil;&Atilde;O.</p>\r\n\r\n<p>ACIRM E VOC&Ecirc;!</p>\r\n', '2015-08-21 15:51:30', '', 'noticias/2015/08/ano-novo-premiado-senhas-disponiveis-na-sede-da-acirm.jpg', 0, '', NULL, NULL, NULL),
	(52, 'acirm-e-voce-reinauguracao-vetclin', 'ACIRM E VOCÊ - REINAUGURAÇÃO VETCLIN', 'Acirm visita novas instalações da VETCLIN', 'ACIRM', 'ACIRM', 'nao', '<p>O projeto ACIRM E VOC&Ecirc;, esteve visitando as novas instala&ccedil;&otilde;es da VETCLIN, empresa associada a ACIRM.</p>\r\n\r\n<p>A presidente Kelly Naahmara, o diretor financeiro Silvano Frutuoso e a secret&aacute;ria executiva Ester Caliani, estiveram na manh&atilde; de hoje prestigiando a reinaugura&ccedil;&atilde;o das novas instala&ccedil;&otilde;es da Vetclin. Na ocasi&atilde;o pudemos conhecer todas as novas instala&ccedil;&otilde;es e in&uacute;meras novidades que ser&atilde;o oferecidas a toda popula&ccedil;&atilde;o da zona da mata.</p>\r\n\r\n<p>A ACIRM parabeniza ao nosso querido amigo Dr Rafael... Godoi pelo bel&iacute;ssimo empreendimento.</p>\r\n\r\n<p>ACIRM e voc&ecirc;, sempre juntos.</p>\r\n', '2015-08-22 13:29:55', '', 'noticias/2015/08/acirm-e-voce-reinauguracao-vetclin.JPG', 0, '', NULL, NULL, NULL),
	(53, 'click-aqui-e-conheca-as-empresas-participantes-do-liquida-rolim-2015', 'Click aqui e conheça as empresas participantes do Liquida Rolim 2015', 'Liquida Rolim 2015', 'ACIRM', 'ACIRM', 'sim', '<p><strong>Conhe&ccedil;a aqui as empresas participantes do Liquida Rolim 2015.</strong></p>\r\n\r\n<p><strong>Agende suas compras, escolha onde comprar.</strong></p>\r\n\r\n<p><strong>ACIRM e voc&ecirc;, sempre juntos...</strong></p>\r\n\r\n<p><strong>3 IRMAOS</strong></p>\r\n\r\n<p><strong>A CIRANDINHA</strong></p>\r\n\r\n<p><strong>A POTENCIAL</strong></p>\r\n\r\n<p><strong>AGRO BOI</strong></p>\r\n\r\n<p><strong>AMERICANA MODAS</strong></p>\r\n\r\n<p><strong>AQUI AGORA</strong></p>\r\n\r\n<p><strong>ATACADO MUNDIAL</strong></p>\r\n\r\n<p><strong>BENEVIDES MAT PARA CONSTRU&Ccedil;&Atilde;O</strong></p>\r\n\r\n<p><strong>BIG MODAS</strong></p>\r\n\r\n<p><strong>CANOPUS</strong></p>\r\n\r\n<p><strong>CASA E DECORA&Ccedil;&Atilde;O</strong></p>\r\n\r\n<p><strong>CENTRAL MODAS</strong></p>\r\n\r\n<p><strong>COMPUNET INFORMATICA</strong></p>\r\n\r\n<p><strong>CONQUISTA MODAS</strong></p>\r\n\r\n<p><strong>CONSTRIL</strong></p>\r\n\r\n<p><strong>CONSTRULIM</strong></p>\r\n\r\n<p><strong>DOID&Atilde;O CONFEC&Ccedil;&Otilde;ES</strong></p>\r\n\r\n<p><strong>ELETRONICA BANDEIRANTES</strong></p>\r\n\r\n<p><strong>EXTRA TINTAS</strong></p>\r\n\r\n<p><strong>FALBRANDS</strong></p>\r\n\r\n<p><strong>FALC&Atilde;O MAGAZINE</strong></p>\r\n\r\n<p><strong>FANA INFORMATICA</strong></p>\r\n\r\n<p><strong>FARMACIA BOM JESUS - CENTRO</strong></p>\r\n\r\n<p><strong>FARMACIA BOM JESUS - CIDADE ALTA</strong></p>\r\n\r\n<p><strong>FARMACIA POPULAR (AMARELINHA)</strong></p>\r\n\r\n<p><strong>FARMACIA S&Atilde;O PAULIO (VITALLI)</strong></p>\r\n\r\n<p><strong>FARMACIA VITALLI</strong></p>\r\n\r\n<p><strong>FEMININA FASHION</strong></p>\r\n\r\n<p><strong>LOJA PARATI</strong></p>\r\n\r\n<p><strong>LOJAS DANIELA</strong></p>\r\n\r\n<p><strong>MANA VARIEDADES</strong></p>\r\n\r\n<p><strong>MAPIN MATERIAIS</strong></p>\r\n\r\n<p><strong>MERCADO BOA ESPERAN&Ccedil;A</strong></p>\r\n\r\n<p><strong>MERCADO FAMILIA</strong></p>\r\n\r\n<p><strong>MERCADO FORTALEZA</strong></p>\r\n\r\n<p><strong>MERCADO RIGONATO</strong></p>\r\n\r\n<p><strong>MOTO MOTORES</strong></p>\r\n\r\n<p><strong>MOVEIS DO LAR</strong></p>\r\n\r\n<p><strong>O PANELAO</strong></p>\r\n\r\n<p><strong>PRE&Ccedil;O DE FABRICA</strong></p>\r\n\r\n<p><strong>ROL&Atilde;O MATERIAIS PARA CONSTRU&Ccedil;&Atilde;O</strong></p>\r\n\r\n<p><strong>RONDONIA MEDICAMENTOS</strong></p>\r\n\r\n<p><strong>SHALON LIVRARIA E PAPELARIA</strong></p>\r\n\r\n<p><strong>SKALA MODAS</strong></p>\r\n\r\n<p><strong>SO COLCHOES</strong></p>\r\n\r\n<p><strong>STAR MODAS</strong></p>\r\n\r\n<p><strong>SUELEN CONFEC&Ccedil;&Otilde;ES</strong></p>\r\n\r\n<p><strong>SUPERMERCADO CENTRAL</strong></p>\r\n\r\n<p><strong>TRENTO MATERIAIS DE CONSTRU&Ccedil;&Otilde;ES</strong></p>\r\n\r\n<p><strong>VILHENA CAL&Ccedil;ADOS</strong></p>\r\n\r\n<p><strong>OTICAS CAROL</strong></p>\r\n\r\n<p><strong>UMUARAMA</strong></p>\r\n\r\n<p><strong>RONDIPAR PARAFUSOS</strong></p>\r\n\r\n<p><strong>JO&Aacute; MODAS</strong></p>\r\n', '2015-08-22 17:58:06', '', 'noticias/2015/08/conheca-as-empresas-participantes-do-liquida-rolim-2015.jpg', 0, '', NULL, NULL, NULL),
	(54, 'curso-gestao-empresarial-e-estrutura-organizacional-crc-ro', 'CURSO GESTÃO EMPRESARIAL E ESTRUTURA ORGANIZACIONAL CRC RO', 'CURSO GESTÃO EMPRESARIAL E ESTRUTURA ORGANIZACIONAL CRC RO', 'ACIRM', 'CRCRO', 'sim', '<p>Curso de Gest&atilde;o Empresarial e Estrutura Organizacional CRCRO.</p>\r\n\r\n<p>Certificado de 3 horas</p>\r\n\r\n<p>Vagas limitadas</p>\r\n\r\n<p>Inscri&ccedil;&otilde;es 2 kg de alimentos n&atilde;o-perec&iacute;veis</p>\r\n\r\n<p>LINK PARA INSCRI&Ccedil;&Atilde;O:</p>\r\n\r\n<p><a href="http://www2.cfc.org.br/sisweb/sgewebsgi/view/user/login.aspx" target="_blank">http://www2.cfc.org.br/sisweb/sgewebsgi/view/user/login.aspx</a></p>\r\n', '2015-08-24 16:20:11', '', 'noticias/2015/08/curso-gestao-empresarial-e-estrtura-organizacional-crc-ro.png', 0, '', NULL, NULL, NULL),
	(55, 'click-aqui-e-conheca-as-empresas-participantes-da-12-promocao-ano-novo-premiado', 'Click aqui e conheça as empresas participantes da 12ª Promoção Ano Novo Premiado', '12ª Promoção Ano Novo Premiado', 'ACIRM', 'ACIRM', 'sim', '<p>Conhe&ccedil;a as empresas participantes da 12&ordf; Promo&ccedil;&atilde;o Ano Novo Premiado.</p>\r\n\r\n<p>Quer fazer parte voc&ecirc; tamb&eacute;m, entre em contato com &nbsp;a ACIRM e solicite a visita do nosso depto comercial, teremos o maior prazer em atende-l&ocirc;.</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:293pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15pt; width:293pt">91 EMPRESAS CONFIRMADAS AT&Eacute; DIA 29/08/2015</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">3 IRMAOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">A CEARENSE</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">A POTENCIAL</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">AGRINALDO CREDIARIO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">AGROBOI AGROPECUARIA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">AGRONORTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">AGROVETE</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">ALINE ALMEIDA PINHEIRO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">AMERICANA MODAS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">AREIAL ROLIM DE MOURA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">ATACADO MUNDIAL</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">ATUAL COLCHOES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">ATUAL MODAS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">AUTO ESCOLA E DESPACHANTE DOCAR</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">BIG JHOW MOTOS LTDA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">CASA DAS NOVIDADES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">CASA DO MOTOQUEIRO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">CENTRAL MODAS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">CLEVER MOTO CENTER</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">CLINICA ALYSSON ANDRADE ODONTOLOGIA E SAUDE</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">COMERCIAL BORGES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">COMERCIAL COPO DE OURO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">COMPUNET INFORMATICA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">CONSTRULIM MATERIAIS P/ CONSTRUCAO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">CRISTAL MODAS - SANTA LUZIA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">DOCES E EMBALAGENS DO JAPONES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">DROGARIA BENATI</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">DROGARIA FARMA MAIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">EDNA COSMETICOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">ELETRONICA BANDEIRANTES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">EXTRA TINTAS E MAT. P/ CONSTRUCAO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">FAGOTTI DOCES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">FALCAO MAGAZINE</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">FANA INFORMATICA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">FARMACIA BOM JESUS - CENTRO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">FARMACIA BRASIL</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">FARMACIA SANTA FILOMENA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">FISK</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">FLORICULTURA 100 COMENTARIOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">FOTO MIL JOIA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">GFA CONSULTORIA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">HOTEL CRYSTAL</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">IRENE VENDA DE TERRENOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">KELVEN VEICULOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">LOJA UMUARAMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">LOKAL DA MODA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MANA VARIEDADES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MANOEL DESPACHANTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MAPIN MAT CONSTRUCAO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MAX AUTO ELETRICA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MAYARA CONFECCOES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MERCADO BOA ESPERANCA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MERCADO CENTENARIO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MERCADO GONCALVES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MERCADO NOVA AURORA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MERCADO SAO GABRIEL</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MIDAS CONSTRUTORA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">MOVEIS DO LAR</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">NOVA COMAM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">O BOTICARIO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">OTICA E RELOJOARIA ORIENTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">OTICAS CAROL</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">PRECO DE FABRICA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">POCONE VEICULOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">POSTO DOM BOSCO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">POSTO MAIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">QUATRO ESTACOES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">REI DO PANO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">RELOJOARIA E OTICA SAFIRA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">RESTAURANTE SOUZA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">REVIL MOVEIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">ROLAO MATERIAIS PARA CONSTRUCAO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">ROLIM NET</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">RONCAR MOTOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">RONDOLAB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">RONDONIA MED DENTAL CIRURGICA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">RONDONIA MOTOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">ROSE CONFECCOES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">SCOPEL CONFECCAO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">SHALOM COMERCIO E ATACADOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">SHAMPOO HAIR SALOON</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">SKALA MODAS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">SO COLCHOES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">SUELEN CONFECCOES</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">SUPERMERCADO CENTRAL</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">SUPERMERCADO VITORIA (NOVA ESTRELA)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">SUPERMERCADOS TRENTO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">VARSOVIA FUNILARIA E PINTURA</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">VICAFER</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">VILHENA CALCADOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15pt">WIZARD INGLES COM LIDERANCA</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2015-08-30 11:51:46', '', 'noticias/2015/08/click-aqui-e-conheca-as-empresas-participantes-da-12-promocao-ano-novo-premiado.jpg', 0, '', NULL, NULL, NULL),
	(56, 'videomonitoramento-em-rolim-de-moura', 'VIDEOMONITORAMENTO EM ROLIM DE MOURA', 'VIDEOMONITORAMENTO EM ROLIM DE MOURA', 'ACIRM', 'ACIRM', 'sim', '<p>A Presidente Kelly e a Secret&aacute;ria Executiva, Ester Caliani, se reuniram novamente com o Comandante da Pol&iacute;cia Militar de Rolim de Moura, Tenente Rodrigues, Tenente Matos, Sub-Tenente Chaves e o Sub-Tenente Ademilson para tratar do videomonitoramento. Em breve ser&aacute; iniciado a constru&ccedil;&atilde;o da sala de monitoramento no Batalh&atilde;o e a compra das primeiras c&acirc;meras.<br />\r\n<br />\r\nA quest&atilde;o da seguran&ccedil;a p&uacute;blica &eacute; uma das demandas mais aclamadas pela popula&ccedil;&atilde;o das cidades devido &agrave; sua import&acirc;ncia. A seguran&ccedil;a dos indiv&iacute;duos e de suas propriedades &eacute; um tema central e se resume numa preocupa&ccedil;&atilde;o cada vez mais acentuada em quase todo o mundo. A intimida&ccedil;&atilde;o do ato criminoso constitui um recurso valioso &agrave; prote&ccedil;&atilde;o de toda a sociedade, assim como a identifica&ccedil;&atilde;o e puni&ccedil;&atilde;o do infrator.<br />\r\n<br />\r\nA Acirm n&atilde;o tem medido esfor&ccedil;os para buscar recursos para iniciarmos este projeto t&atilde;o importante para a nossa cidade, j&aacute; encaminhamos o projeto para a Prefeitura Municipal, para o Deputado Luiz Claudio e o Deputado Nilton Capixaba. Tamb&eacute;m estamos arrecadando recursos junto ao empresariado local que tem recebido muito bem a ideia e j&aacute; est&atilde;o colaborando.<br />\r\n<br />\r\nAgradecemos ao Posto Mais, Pocon&eacute; Ve&iacute;culos, Kelven Ve&iacute;culos, Braqui&aacute;ria Ve&iacute;culos, Mapin Materiais para Constru&ccedil;&atilde;o, Imaral Pneus, Centrais El&eacute;tricas - Cesar Cassol e Sicoob que j&aacute; est&atilde;o depositando os valores na conta espec&iacute;fica que a Acirm abriu para o videomonitoramento.<br />\r\n<br />\r\nAbrace voc&ecirc; tamb&eacute;m esta causa e seja um colaborador do projeto.<br />\r\n&nbsp;</p>\r\n', '2015-09-02 08:33:14', '', 'noticias/2015/09/videomonitoramento-em-rolim-de-moura.jpg', 0, '', NULL, NULL, NULL);
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `sexo` int(1) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `ativo` varchar(1) DEFAULT 's',
  `nivel` int(1) DEFAULT NULL,
  `cont_acesso` int(11) unsigned DEFAULT '0',
  `ip` varchar(30) DEFAULT NULL,
  `ultimo_acesso` timestamp NULL DEFAULT NULL,
  `qm_cadastr` int(9) DEFAULT NULL,
  `dt_cadastr` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `qm_alterou` int(9) DEFAULT NULL,
  `dt_alterou` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='Armazena informações dos usuarios do painel';

-- Copiando dados para a tabela _rolnews_2015.usuarios: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
REPLACE INTO `usuarios` (`id`, `nome`, `email`, `data_nasc`, `sexo`, `login`, `senha`, `foto`, `ativo`, `nivel`, `cont_acesso`, `ip`, `ultimo_acesso`, `qm_cadastr`, `dt_cadastr`, `qm_alterou`, `dt_alterou`) VALUES
	(1, 'Creative Websites', 'suporte@creativewebsites.com.br', '2015-02-14', 1, 'creative', '19d910ef608e4947aa0c6dcee352a3e8', 'usuarios/2015/03/creative.jpeg', 's', 1, 40, '::1', '2015-02-13 22:33:25', 1, NULL, 1, '2015-03-25 21:57:12'),
	(53, 'Sergio Augusto Cortez Ferreira', 'caquirm@gmail.com', '1972-03-14', 1, 'sergio', '79d8a1497fee797644db4f1faf517cd6', 'usuarios/2015/03/sergio.png', 's', 1, 0, NULL, NULL, NULL, '2015-03-28 02:02:45', NULL, '2015-03-28 02:05:10');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.videos
DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_name` varchar(255) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `destaque` varchar(3) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `data` timestamp NULL DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `qm_cadastr` int(9) DEFAULT NULL,
  `dt_cadastr` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `qm_alterou` int(9) DEFAULT NULL,
  `dt_alterou` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Armazena informações de cadastro de videos.';

-- Copiando dados para a tabela _rolnews_2015.videos: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
REPLACE INTO `videos` (`id`, `url_name`, `titulo`, `url`, `link`, `destaque`, `autor`, `data`, `foto`, `qm_cadastr`, `dt_cadastr`, `qm_alterou`, `dt_alterou`) VALUES
	(13, '2-feira-do-artesao-de-rolim-de-moura', '2ª Feira do Artesão de Rolim de Moura', 'https://www.youtube.com/watch?v=Ai-Yu2lNKVg', 'Ai-Yu2lNKVg', 'nao', 'Marketing ACIRM Digital', '2015-03-20 23:50:23', 'http://i1.ytimg.com/vi/Ai-Yu2lNKVg/hqdefault.jpg', 1, '2015-03-23 22:14:23', 1, '2015-03-23 23:22:01'),
	(16, 'como-elaborar-um-plano-de-negocios-mat-cpt-do-sebrae', 'Como Elaborar Um Plano de Negócios - Mat.Cpt do SEBRAE', 'https://www.youtube.com/watch?v=k-MLkiSNWeg', 'k-MLkiSNWeg', 'nao', 'Sebrae', '2015-06-17 09:20:02', 'http://i1.ytimg.com/vi/k-MLkiSNWeg/hqdefault.jpg', 53, '2015-03-29 09:56:08', 53, NULL),
	(17, 'no-meio-do-caminho-tinha-uma-pedra', 'No meio do caminho tinha uma pedra', 'https://www.youtube.com/watch?v=49Z6WS_v8Zk&list=P', '49Z6WS_v8Zk', 'nao', 'Sebrae', '2015-06-17 09:19:46', 'http://i1.ytimg.com/vi/49Z6WS_v8Zk/hqdefault.jpg', 53, '2015-03-29 10:01:31', 53, NULL),
	(18, 'comemoracao-do-dia-das-maes', 'Comemoração do dia das Mães', 'http://www.youtube.com/watch?v=HjFNPuR8CAo&feature', 'HjFNPuR8CAo', 'nao', 'Marketing ACIRM Digital', '2015-05-07 18:08:27', 'http://i1.ytimg.com/vi/HjFNPuR8CAo/hqdefault.jpg', 53, '2015-05-07 17:58:29', 53, NULL),
	(19, 'voce-e-mais-forte-do-que-imagina', 'Você é mais forte do que imagina', 'http://www.youtube.com/watch?v=iz52rFnufPg', 'iz52rFnufPg', 'nao', 'Les Brown Eric, Thomas, Steve Jobs,Louis Zamperini', '2015-12-05 18:08:37', 'http://i1.ytimg.com/vi/iz52rFnufPg/hqdefault.jpg', 53, '2015-05-12 09:43:56', 53, NULL),
	(20, 'o-campeao-de-vendas', 'O Campeão de Vendas', 'http://www.youtube.com/watch?v=d3A6RB4NIso', 'd3A6RB4NIso', 'nao', 'Alfredo Rocha', '2015-05-12 08:46:03', 'http://i1.ytimg.com/vi/d3A6RB4NIso/hqdefault.jpg', 53, '2015-05-12 09:46:03', NULL, NULL),
	(21, 'david-camelo-tecnica-de-vendas', 'David Camelô - Técnica de Vendas', 'http://www.youtube.com/watch?v=Qcu0dLSFD5M', 'Qcu0dLSFD5M', 'nao', 'Davi Camelô', '2015-05-12 08:47:46', 'http://i1.ytimg.com/vi/Qcu0dLSFD5M/hqdefault.jpg', 53, '2015-05-12 09:47:46', NULL, NULL),
	(22, 'motivacao-sucesso', 'Motivação Sucesso', 'http://www.youtube.com/watch?v=7-gpoQiyGkA', '7-gpoQiyGkA', 'nao', 'Thirty Seconds to Mars', '2015-06-17 09:19:34', 'http://i1.ytimg.com/vi/7-gpoQiyGkA/hqdefault.jpg', 53, '2015-05-18 19:16:01', 53, NULL),
	(23, 'cultura-e-tudo', 'CULTURA É TUDO', 'https://www.youtube.com/watch?v=jVvVa-2bydU', 'jVvVa-2bydU', 'nao', 'Tv Bandeirantes', '0000-00-00 00:00:00', 'http://i1.ytimg.com/vi/jVvVa-2bydU/hqdefault.jpg', 53, '2015-06-17 10:16:40', 53, NULL),
	(24, 'compre-do-pequeno-negocio', 'Compre do Pequeno Negócio', 'https://www.youtube.com/watch?v=w1kKmr2tETE', 'w1kKmr2tETE', 'nao', 'Sebrae', '0000-00-00 00:00:00', 'http://i1.ytimg.com/vi/w1kKmr2tETE/hqdefault.jpg', 53, '2015-08-18 08:46:51', 53, NULL),
	(25, 'jantar-de-lancamento-promocao-ano-novo-premiado', 'Jantar de Lançamento Promoção Ano Novo Premiado', 'https://www.youtube.com/watch?v=cDd3Ux1aZo0', 'cDd3Ux1aZo0', 'sim', 'Marketing ACIRM', '0000-00-00 00:00:00', 'http://i1.ytimg.com/vi/cDd3Ux1aZo0/hqdefault.jpg', 53, '2015-08-28 11:27:49', 53, NULL);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.ws_siteviews
DROP TABLE IF EXISTS `ws_siteviews`;
CREATE TABLE IF NOT EXISTS `ws_siteviews` (
  `siteviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `siteviews_date` date NOT NULL,
  `siteviews_users` decimal(10,0) NOT NULL,
  `siteviews_views` decimal(10,0) NOT NULL,
  `siteviews_pages` decimal(10,0) NOT NULL,
  PRIMARY KEY (`siteviews_id`),
  KEY `idx_1` (`siteviews_date`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela _rolnews_2015.ws_siteviews: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `ws_siteviews` DISABLE KEYS */;
REPLACE INTO `ws_siteviews` (`siteviews_id`, `siteviews_date`, `siteviews_users`, `siteviews_views`, `siteviews_pages`) VALUES
	(1, '2015-09-02', 2, 8, 45),
	(2, '2015-09-03', 1, 1, 20),
	(3, '2015-09-05', 2, 2, 135),
	(4, '2015-09-06', 1, 1, 59),
	(5, '2015-09-07', 2, 2, 117),
	(6, '2015-09-09', 1, 1, 2),
	(7, '2015-11-06', 1, 1, 21);
/*!40000 ALTER TABLE `ws_siteviews` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.ws_siteviews_agent
DROP TABLE IF EXISTS `ws_siteviews_agent`;
CREATE TABLE IF NOT EXISTS `ws_siteviews_agent` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agent_views` decimal(10,0) NOT NULL,
  PRIMARY KEY (`agent_id`),
  KEY `idx_1` (`agent_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela _rolnews_2015.ws_siteviews_agent: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `ws_siteviews_agent` DISABLE KEYS */;
REPLACE INTO `ws_siteviews_agent` (`agent_id`, `agent_name`, `agent_views`) VALUES
	(1, 'Firefox', 2),
	(2, 'Chrome', 8);
/*!40000 ALTER TABLE `ws_siteviews_agent` ENABLE KEYS */;


-- Copiando estrutura para tabela _rolnews_2015.ws_siteviews_online
DROP TABLE IF EXISTS `ws_siteviews_online`;
CREATE TABLE IF NOT EXISTS `ws_siteviews_online` (
  `online_id` int(11) NOT NULL AUTO_INCREMENT,
  `online_session` varchar(255) CHARACTER SET latin1 NOT NULL,
  `online_startview` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online_endview` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online_ip` varchar(255) CHARACTER SET latin1 NOT NULL,
  `online_url` varchar(255) CHARACTER SET latin1 NOT NULL,
  `online_agent` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agent_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`online_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela _rolnews_2015.ws_siteviews_online: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ws_siteviews_online` DISABLE KEYS */;
REPLACE INTO `ws_siteviews_online` (`online_id`, `online_session`, `online_startview`, `online_endview`, `online_ip`, `online_url`, `online_agent`, `agent_name`) VALUES
	(13, 'dngobtelopj2u28ng5dc563503', '2015-11-02 11:08:26', '2015-11-12 19:51:00', '::1', '/servidor/rolnews/2015/', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 'Chrome');
/*!40000 ALTER TABLE `ws_siteviews_online` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
