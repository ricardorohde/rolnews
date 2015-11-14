-- --------------------------------------------------------
-- Servidor:                     rolnews.com.br
-- Versão do servidor:           5.5.42-cll - MySQL Community Server (GPL)
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              9.3.0.5009
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela rolnews_dbsiteCW.banco_fotos
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

-- Copiando dados para a tabela rolnews_dbsiteCW.banco_fotos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `banco_fotos` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco_fotos` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.banners
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

-- Copiando dados para a tabela rolnews_dbsiteCW.banners: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
REPLACE INTO `banners` (`id`, `titulo`, `banner`, `tipo`, `link`, `data_inicial`, `data_final`, `data_atual`, `qm_cadastr`, `qm_alterou`) VALUES
	(11, 'Centro de Treinamento', 'banners/2015/05/centro-de-treinamento.jpg', 1, 'http://www.acirmro.com.br/cursos', '2015-05-12', '2016-01-01', '2015-05-12 23:08:13', 1, NULL),
	(12, 'Agentes Locais de Inovação', 'banners/2015/07/sebrae.jpg', 2, 'http://www.sebrae.com.br/sites/PortalSebrae/Programas/Agentes-Locais-de-Inova%C3%A7%C3%A3o:-receba-o-Sebrae-na-sua-empresa', '2015-05-12', '2016-01-01', '2015-05-12 23:08:42', 1, 53),
	(14, 'Ano Novo Premiado', 'banners/2015/07/ano-novo-premiado.jpg', 4, 'http://www.acirmro.com.br/noticia/ano-novo-premiado-senhas-disponiveis-na-sede-da-acirm', '2015-05-12', '2016-01-01', '2015-05-12 23:09:32', 1, 53),
	(15, 'CURSO GESTÃO EMPRESARIAL E ESTRTURA ORGANIZACIONAL CRC RO', 'banners/2015/08/curso-gestao-empresarial-e-estrtura-organizacional-crc-ro.jpg', 5, 'http://www2.cfc.org.br/sisweb/sgewebsgi/view/user/login.aspx', '2015-08-24', '2016-01-01', '2015-05-12 23:09:51', 1, 53),
	(21, 'LIQUIDA ROLIM 2015', 'banners/2015/07/liquida-rolim-2015.jpg', 3, 'http://www.acirmro.com.br/noticia/conheca-as-empresas-participantes-do-liquida-rolim-2015', '2015-05-14', '2015-05-21', '2015-05-14 14:56:14', 53, 53);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.banners_tipo
DROP TABLE IF EXISTS `banners_tipo`;
CREATE TABLE IF NOT EXISTS `banners_tipo` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  `dimens_w` varchar(50) NOT NULL,
  `dimens_h` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tipos de banners';

-- Copiando dados para a tabela rolnews_dbsiteCW.banners_tipo: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `banners_tipo` DISABLE KEYS */;
REPLACE INTO `banners_tipo` (`id_tipo`, `tipo`, `dimens_w`, `dimens_h`) VALUES
	(1, 'Banner Capa Grande', '418', '358'),
	(2, 'Banner Capa Pequeno', '418', '132'),
	(3, 'Banner Lateral 1', '228', '159'),
	(4, 'Banner Lateral 2', '228', '159'),
	(5, 'Banner Lateral 3', '228', '159');
/*!40000 ALTER TABLE `banners_tipo` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.eventos
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

-- Copiando dados para a tabela rolnews_dbsiteCW.eventos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
REPLACE INTO `eventos` (`id`, `url_name`, `evento`, `data`, `local`, `cidadeuf`, `foto`, `marca_foto`, `destaque`, `fotografo`, `qm_cadastr`, `qm_alterou`) VALUES
	(4, 'trofeu-acirm-2014', 'Troféu ACIRM 2014 -', '2015-05-12 08:22:44', 'CTG - Centro de Tradições Gaúchas - 20:00 horas', 'Rolim de Moura RO', 'eventos/2015/05/trofeu-acirm-2014-1431433364.jpg', NULL, 'sim', 'Acirm', NULL, NULL),
	(5, 'acirm-na-expoagro-2015', 'ACIRM na Expoagro 2015', '2015-05-10 08:56:23', 'Parque de Exposição Jorge Teixeira', 'Rolim de Moura RO', 'eventos/2015/08/acirm-na-expoagro-2015.jpg', NULL, 'sim', 'Acirm', NULL, NULL);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.galerias
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

-- Copiando dados para a tabela rolnews_dbsiteCW.galerias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `galerias` DISABLE KEYS */;
/*!40000 ALTER TABLE `galerias` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.institucional
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

-- Copiando dados para a tabela rolnews_dbsiteCW.institucional: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `institucional` DISABLE KEYS */;
REPLACE INTO `institucional` (`id`, `instituicao`, `fanpage`, `sobre`, `missao`, `visao`, `valores`, `id_presidente`, `qm_cadastr`, `qm_alterou`) VALUES
	(1, 'ACIRM - ASSOCIAÇÃO EMPRESARIAL DE ROLIM DE MOURA', 'https://www.facebook.com/groupcreativewebsites', '<p>A Associa&ccedil;&atilde;o Empresarial de Rolim de Moura &ndash; ACIRM &eacute; uma entidade associativa, civil, sem&nbsp;fins lucrativos, fundada em 22 de novembro 1983, desde ent&atilde;o n&atilde;o cessou o exerc&iacute;cio da&nbsp;representatividade e as a&ccedil;&otilde;es que beneficiam e contribuem para a melhoria das condi&ccedil;&otilde;es de&nbsp;neg&oacute;cios das empresas rolimourenses. Atua diretamente na classe empresarial, apoiando suas&nbsp;iniciativas, ajudando e orientando seus associados perante poderes P&uacute;blicos/Municipais,&nbsp;Estaduais e Federais, dando-lhes suporte legal e assessoramento t&eacute;cnico na solu&ccedil;&atilde;o de&nbsp;problemas e, na defesa de seus direitos sempre que necess&aacute;rios.</p>\r\n\r\n<p>O prop&oacute;sito da ACIRM &eacute; atuar no desenvolvimento da popula&ccedil;&atilde;o e toda a comunidade&nbsp;empresarial de Rolim de Moura, tendo como compromisso n&atilde;o s&oacute; criar riqueza na nossa&nbsp;cidade, mas, acima de tudo, fazer com que essa riqueza fique na nossa comunidade, de&nbsp;maneira que esta possa ser melhor distribu&iacute;da e alavancar o progresso.</p>\r\n\r\n<p>A ACIRM trabalha em parceria com v&aacute;rias outras entidades para melhor atender as empresas,&nbsp;seus colaboradores e a popula&ccedil;&atilde;o em geral, melhorando a capacidade de neg&oacute;cios das&nbsp;empresas e a efici&ecirc;ncia de seus colaboradores na presta&ccedil;&atilde;o de servi&ccedil;os.</p>\r\n', '<p>Desenvolvimento econ&ocirc;mico e social dos empreendedores e da cidade de Rolim de&nbsp;Moura, de maneira a estimular o desenvolvimento cont&iacute;nuo e sustent&aacute;vel da regi&atilde;o.</p>\r\n', '<p>Consolidar o reconhecimento da entidade pela excel&ecirc;ncia em produtos e servi&ccedil;os oferecidos&nbsp;aos associados e atuar como &oacute;rg&atilde;o representativo nas discuss&otilde;es pol&iacute;ticas, econ&ocirc;micas e&nbsp;sociais em prol do empresariado Rolimourense.</p>\r\n', '<p>1. Lideran&ccedil;a e defesa do empresariado;</p>\r\n\r\n<p>2. Fomento ao empreendedorismo;</p>\r\n\r\n<p>3. Cria&ccedil;&atilde;o de valor aos associados e &agrave; sociedade;</p>\r\n\r\n<p>4. Respeito &agrave; tradi&ccedil;&atilde;o empresarial e social;</p>\r\n\r\n<p>5. Excel&ecirc;ncia na conduta das atividades;</p>\r\n\r\n<p>6. Criatividade e inova&ccedil;&atilde;o nas realiza&ccedil;&otilde;es;</p>\r\n\r\n<p>7. Integridade, Seriedade, &Eacute;tica;</p>\r\n\r\n<p>8. Responsabilidade socioambiental;</p>\r\n\r\n<p>9. Solidariedade e respeito &agrave; diversidade humana.</p>\r\n', 1, 1, 1);
/*!40000 ALTER TABLE `institucional` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.menu
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

-- Copiando dados para a tabela rolnews_dbsiteCW.menu: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
REPLACE INTO `menu` (`id_menu`, `id_menu_tipo`, `titulo`, `case`, `pagina`, `ico_menu`) VALUES
	(1, 1, 'Usuários', 'usuarios', '#', 'fa-users'),
	(2, 1, 'Eventos', 'eventos', '#', 'fa-camera'),
	(5, 1, 'Videos', 'videos', '#', 'fa-video-camera'),
	(6, 1, 'Notícias', 'noticias', '#', 'fa-bullhorn'),
	(14, 1, 'Banners', 'banners', '#', 'fa-photo');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.menu_sub
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

-- Copiando dados para a tabela rolnews_dbsiteCW.menu_sub: ~10 rows (aproximadamente)
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


-- Copiando estrutura para tabela rolnews_dbsiteCW.menu_sub_nav
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

-- Copiando dados para a tabela rolnews_dbsiteCW.menu_sub_nav: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_sub_nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_sub_nav` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.menu_tipo
DROP TABLE IF EXISTS `menu_tipo`;
CREATE TABLE IF NOT EXISTS `menu_tipo` (
  `id_menu_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_menu_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Menu Tipo';

-- Copiando dados para a tabela rolnews_dbsiteCW.menu_tipo: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_tipo` DISABLE KEYS */;
REPLACE INTO `menu_tipo` (`id_menu_tipo`, `tipo`) VALUES
	(1, 'painel_adm_sidebar'),
	(2, 'painel_est_sidebar');
/*!40000 ALTER TABLE `menu_tipo` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.noticias
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
  `contador` int(11) DEFAULT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Armazena informações de cadastros de noticias';

-- Copiando dados para a tabela rolnews_dbsiteCW.noticias: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
REPLACE INTO `noticias` (`id`, `url_name`, `titulo`, `subtitulo`, `colunista`, `fonte`, `destaque`, `noticia`, `data`, `video`, `foto`, `marca_foto`, `contador`, `qm_cadastr`, `qm_alterou`) VALUES
	(1, 'jean-oliveira-reivindica-em-favor-da-cooperativa-dos-produtores-rurais-do-assentamento-flor-da-amazonia', 'Jean Oliveira reivindica em favor da Cooperativa dos Produtores Rurais do Assentamento Flor da Amazônia', '', 'Assessoria', 'Portal Rolnews', 'sim', '<p>A dire&ccedil;&atilde;o &nbsp;da Cooperativa dos Produtores Familiares do Assentamento Flor da Amaz&ocirc;nia &ndash; COAFFA e lideran&ccedil;as do assentamento Flor da Amaz&ocirc;nia, localizado no munic&iacute;pio de Candeias do Jamari, procuraram o deputado Jean Oliveira em seu gabinete, &nbsp;na manh&atilde; de quarta-feira (11), para solicitar ajuda no sentido de interceder junto aos &oacute;rg&atilde;os competentes, respectivamente, &nbsp;&nbsp;Instituto Brasileiro do Meio Ambiente e dos Recursos Naturais Renov&aacute;veis - Ibama e e a secretaria de Estado do Desenvolvimento Sustent&aacute;vel - &nbsp;Sedam, para obter a necess&aacute;ria licen&ccedil;a ambiental de alguns lotes do assentamento para que os propriet&aacute;rios possam contrair cr&eacute;dito junto a rede banc&aacute;ria para financiar parte da infraestrutura necess&aacute;ria para implementar &nbsp;&nbsp;projeto de venda de aves abatidas que parte j&aacute; est&aacute; financiada, em termos de compensa&ccedil;&atilde;o, pelo Cons&oacute;rcio Santo Ant&ocirc;nio, que foi a constru&ccedil;&atilde;o, que est&aacute; em fase conclusiva, &nbsp;do matadouro.</p>\r\n\r\n<p>O Cons&oacute;rcio Santo Ant&ocirc;nio financiou a constru&ccedil;&atilde;o do matadouro para o projeto de venda de aves abatidas da COAFFA, como contrapartida, a cooperativa dever&aacute; construir tr&ecirc;s &nbsp;avi&aacute;rios &nbsp;(galp&otilde;es adaptados para criar as aves).&nbsp; Os cooperados para construir os avi&aacute;rios combinaram entre si que fariam empr&eacute;stimos individuais para financiar a constru&ccedil;&atilde;o dos &nbsp;&nbsp;tr&ecirc;s avi&aacute;rios. A proposta, no entanto, n&atilde;o est&aacute; sendo poss&iacute;vel ser levada a cabo porque alguns dos propriet&aacute;rios cooperados, que devem fazer os empr&eacute;stimos, est&atilde;o impedidos por terem passivo ambiental, &nbsp;ou seja, foram multados pelo &oacute;rg&atilde;o fiscalizador ambiental. E quem tem passivo ambiental n&atilde;o tem direito a cr&eacute;dito na rede banc&aacute;ria.</p>\r\n\r\n<p>Diante da situa&ccedil;&atilde;o o deputado convidou o secret&aacute;rio da Sedam, Vilson Madeiros, &nbsp;para vir, se poss&iacute;vel, ao seu gabinete para se reunirem &nbsp;e juntos com os cooperados procurarem a melhor sa&iacute;da para o problema, uma vez que, n&atilde;o se pode deixar um projeto dessa envergadura ser brecado &nbsp;por falta de uma a&ccedil;&atilde;o p&uacute;blica coerente legal para resolver a situa&ccedil;&atilde;o dos que est&atilde;o impossibilitados&nbsp; no momento de adquirir cr&eacute;dito banc&aacute;rio devido passivo ambiental. Passivo esse, &agrave;s vezes, &iacute;nfimo ou insignificante, e que muitas vezes j&aacute; tinham sido feito antes do morador atual ser o propriet&aacute;rio do terreno.&nbsp; De pronto, o secret&aacute;rio da Sedam, atendeu o pedido do deputado e veio se reunir em seu gabinete com os cooperados da COAFFA. &nbsp;</p>\r\n\r\n<p>Depois de todos exporem suas opini&otilde;es e sugest&otilde;es, o secret&aacute;rio de Estado do Desenvolvimento Sustent&aacute;vel, &nbsp;&nbsp;orientou no sentido &nbsp;que todos os que est&atilde;o com problemas de passivo ambiental na Sedam, elabore um hist&oacute;rico da seu terreno , juntando sua documenta&ccedil;&atilde;o e protocole na Sedam, via cooperativa, solicitando uma solu&ccedil;&atilde;o para seu problema, &nbsp;fazendo uma exposi&ccedil;&atilde;o de motivo para seu requerimento. No caso, o motivo, &eacute; &nbsp;conseguir &nbsp;cr&eacute;dito banc&aacute;rio para se construir os tr&ecirc;s avi&aacute;rios &nbsp;do projeto de venda de aves abatidas da cooperativa que tem prazo para ser conclu&iacute;do e, &nbsp;portanto, n&atilde;o pode esperar.</p>\r\n\r\n<p>Jean Oliveira &nbsp;conversou ainda, por telefone, com o superintend&ecirc;ncia do Ibama em Rond&ocirc;nia, Ren&ecirc; &nbsp;Oliveira, quando ficou de se reunir com esse &oacute;rg&atilde;o ambiental federal para buscar uma solu&ccedil;&atilde;o para a problem&aacute;tica vivida pelos cooperados da COAFFA; &nbsp;e colocou sua assessoria jur&iacute;dica a disposi&ccedil;&atilde;o da cooperativa para orientar quanto &agrave; elabora&ccedil;&atilde;o dos documentos que os cooperados ir&atilde;o protocolar na Sedam.</p>\r\n\r\n<p>Participaram da reuni&atilde;o no gabinete do deputado Jean Oliveira, o secret&aacute;rio de Estado do Desenvolvimento Sustent&aacute;vel, Vilson Medeiros, a presidente e a vice-presidente da Cooperativa dos Agricultores Familiares do Assentamento do &nbsp;Amazonas &ndash; COOAFFA, Maria Leonilda Mattara e Gisele da Silva Santos, a Gigi, respectivamente, &nbsp;&nbsp;o Instituto Fecom&eacute;rcio, &nbsp;que apoia o empreendimento da cooperativa, representado pelo Diretor T&eacute;cnico, Nazareno Barbosa e v&aacute;rias lideran&ccedil;as do assentamento Flor do Amazonas.</p>\r\n\r\n<p>Da Assessoria para o Rolnews</p>\r\n', '2015-11-14 14:48:31', '', 'noticias/2015/11/jean-oliveira-reivindica-em-favor-da-cooperativa-dos-produtores-rurais-do-assentamento-flor-da-amazonia.jpg', 0, NULL, NULL, NULL),
	(2, 'mp-obtem-condenacao-de-ex-prefeito-de-santa-luzia-pelo-pagamento-de-cimento-nao-entregue', 'MP obtém condenação de ex-Prefeito de Santa Luzia pelo pagamento de cimento não entregue', '', 'Assessoria', 'Portal Rolnews', 'sim', '<p>O Minist&eacute;rio P&uacute;blico de Rond&ocirc;nia, por meio da Promotoria de Justi&ccedil;a de Santa Luzia do Oeste, obteve junto ao Judici&aacute;rio a condena&ccedil;&atilde;o do ex-prefeito de Santa Luzia do Oeste, Cloreni Matt, mais cinco pessoas e a empresa Caraj&aacute;s LTDA., por ato de improbidade administrativa, que causou les&atilde;o ao er&aacute;rio e enriquecimento il&iacute;cito, decorrente do pagamento de R$ 75 mil, por tr&ecirc;s mil sacas de cimento, que n&atilde;o foram entregues na totalidade ao Munic&iacute;pio.&nbsp;<br />\r\n<br />\r\nA condena&ccedil;&atilde;o &eacute; resultado de a&ccedil;&atilde;o civil p&uacute;blica por ato de improbidade, ajuizada pelo MP em 2012. Conforme relata a a&ccedil;&atilde;o, em 2010, o ex-chefe do Poder Executivo determinou o pagamento de nota fiscal irregular, no valor de R$ 75 mil, referentes &agrave; aquisi&ccedil;&atilde;o de tr&ecirc;s mil sacas de cimento, junto &agrave; empresa Caraj&aacute;s LTDA. Ocorre que, em vez das tr&ecirc;s mil sacas do produto, foram entregues ao Munic&iacute;pio de Santa Luzia apenas 300.<br />\r\n<br />\r\nNa a&ccedil;&atilde;o, o Minist&eacute;rio P&uacute;blico ressaltou que, de acordo com a Lei de Licita&ccedil;&otilde;es, pagamentos aos fornecedores devem ser feitos apenas depois da entrega dos materiais, o que n&atilde;o aconteceu no caso investigado.&nbsp;<br />\r\n<br />\r\nSenten&ccedil;a<br />\r\nConforme a senten&ccedil;a, o ex-prefeito de Santa Luzia Cloreni Matt, o irm&atilde;o do prefeito e &agrave; &eacute;poca secret&aacute;rio de obras, Dilonei Matt, os servidores que atestaram o recebimento fict&iacute;cio do cimento, al&eacute;m da empresa Caraj&aacute; e seu respons&aacute;vel foram condenados, com base nos artigos 9 e 10 da Lei n&ordm; 8.429/92, solidariamente, ao ressarcimento integral do dano no valor de 75 mil.<br />\r\n<br />\r\nCloreni Matt e Dilonei Matt tamb&eacute;m foram condenados &agrave; perda da fun&ccedil;&atilde;o p&uacute;blica;&nbsp; suspens&atilde;o dos direitos pol&iacute;ticos pelo prazo de oito anos; multa civil equivalente a duas vezes o valor do dano; proibi&ccedil;&atilde;o de contratar com o Poder P&uacute;blico ou receber benef&iacute;cios ou incentivos fiscais ou credit&iacute;cios, direta ou indiretamente, pelo prazo cinco anos.</p>\r\n\r\n<p>A senten&ccedil;a prev&ecirc; penalidades para os demais r&eacute;us, na medida de suas participa&ccedil;&otilde;es no il&iacute;cito.</p>\r\n\r\n<p>Da Assessoria para o Rolnews</p>\r\n', '2015-11-14 15:00:02', '', 'noticias/2015/11/mp-obtem-condenacao-de-ex-prefeito-de-santa-luzia-pelo-pagamento-de-cimento-nao-entregue.jpg', 0, NULL, NULL, NULL),
	(3, 'consorcio-brasil-central-e-apresentado-em-audiencia-publica-no-senado', 'Consórcio Brasil Central é apresentado em audiência pública no Senado', '', 'Assessoria', 'Portal Rolnews', 'sim', '<p>Oficialmente instaurado na ter&ccedil;a-feira (10), em Bras&iacute;lia, o Cons&oacute;rcio Interestadual do Brasil Central foi apresentado aos senadores um dia depois, na Comiss&atilde;o de Desenvolvimento Regional e Turismo do Senado.</p>\r\n\r\n<p>Distrito Federal, Goi&aacute;s, Mato Grosso, Mato Grosso do Sul, Rond&ocirc;nia e Tocantins, Estados que comp&otilde;em o Cons&oacute;rcio, est&atilde;o na regi&atilde;o que mais se desenvolveu nos &uacute;ltimos anos, e tamb&eacute;m foi a que apresentou a maior redu&ccedil;&atilde;o da taxa de pobreza. Com aproximadamente 10% da popula&ccedil;&atilde;o brasileira, o bloco de governadores responde hoje por 11,27% do Produto Interno Bruto (PIB).</p>\r\n\r\n<p>O governador de Rond&ocirc;nia, Conf&uacute;cio Moura, no entanto, demonstrou preocupa&ccedil;&atilde;o com rela&ccedil;&atilde;o aos munic&iacute;pios, e ponderou sobre a necessidade de inclu&iacute;-los nas discuss&otilde;es do Cons&oacute;rcio. &ldquo;&Eacute; preciso dar suporte priorit&aacute;rio aos prefeitos e consolidar uma agenda de servi&ccedil;os com resultados pr&aacute;ticos&rdquo;, disse.</p>\r\n\r\n<p>&ldquo;A figura do cons&oacute;rcio surge nesse momento como uma luz no c&eacute;u cinzento da pol&iacute;tica brasileira&rdquo;, discorreu Conf&uacute;cio.</p>\r\n\r\n<p>Para ele, hoje, ao se abrir qualquer jornal, n&atilde;o se encontra not&iacute;cias positivas, apenas o notici&aacute;rio negativo ganha destaque. &ldquo;Esse cons&oacute;rcio veio como um renascimento, uma esp&eacute;cie de ressurrei&ccedil;&atilde;o pol&iacute;tica dos governadores, que n&atilde;o s&atilde;o os maiores do Brasil, mas s&atilde;o dos estados produtores de alimentos&rdquo;.</p>\r\n\r\n<p>Conf&uacute;cio Moura falou que o bloco de governadores n&atilde;o tem um formato separatista, mas quer demonstrar que n&atilde;o est&aacute; satisfeito. O objetivo, segundo ele, &eacute; blindar os estados contra a onda de crise que n&atilde;o tem premissa nenhuma de findar num curto espa&ccedil;o de tempo.&nbsp; &ldquo;N&oacute;s n&atilde;o podemos ter medo de mudar as leis, n&atilde;o podemos ter medo, de maneira nenhuma, de reformar a Constitui&ccedil;&atilde;o em alguns pontos indispens&aacute;veis, como a reforma da Previd&ecirc;ncia&rdquo;, afirmou.</p>\r\n\r\n<p>O governador de Mato Grosso, Pedro Taques (PSDB) destacou os benef&iacute;cios que poder&atilde;o ser gerados para a regi&atilde;o em virtude da uni&atilde;o de interesses do bloco. &ldquo;A ideia do cons&oacute;rcio &eacute; muito vantajosa aos estados que o integram, uma vez que reduz a competitividade entre n&oacute;s, e nos torna capazes de competir com outros mercados&rdquo;, concluiu Taques.</p>\r\n\r\n<p>Da Assessoria para o Rolnews</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-11-14 15:08:16', '', 'noticias/2015/11/consorcio-brasil-central-e-apresentado-em-audiencia-publica-no-senado.jpg', 0, NULL, NULL, NULL),
	(4, 'pais-acusados-de-matar-e-jogar-bebe-em-rio-serao-julgados-nesta-sexta-feira-em-jaru', 'Pais acusados de matar e jogar bebê em rio serão julgados nesta sexta feira, em Jaru', '', 'Assessoria', 'Jaru Online', 'sim', '<p>O casal suspeito de ter assassinado e jogado o filho rec&eacute;m-nascido dentro de um rio, em fevereiro deste ano, ser&aacute; julgado pelo Tribunal do J&uacute;ri na pr&oacute;xima sexta-feira (13) em Jaru. De acordo com o Tribunal de Justi&ccedil;a de Rond&ocirc;nia (TJRO), a dona de casa Lucineide S. S., 29, e o marido dela s&atilde;o acusados de cortar a crian&ccedil;a com um objeto pontiagudo.<br />\r\n<br />\r\nAp&oacute;s o homic&iacute;dio, os dois jogaram a v&iacute;tima no Rio Moror&oacute;, em Jaru. Os Bombeiros encontraram o corpo do rec&eacute;m-nascido ainda com o cord&atilde;o umbilical. A crian&ccedil;a tamb&eacute;m apresentava les&otilde;es no bra&ccedil;o direito, peito e cabe&ccedil;a. Os ferimentos possivelmente foram ocasionados por mordidas de peixes.<br />\r\n<br />\r\nCom a repercuss&atilde;o do crime, moradores informaram &agrave; Pol&iacute;cia Civil que Lucineide era m&atilde;o do beb&ecirc; e que o casal iria se mudar pra Ji-Paran&aacute; (RO). Ao chegar na casa da fam&iacute;lia, os policiais encontraram a mudan&ccedil;a j&aacute; organizada para ser transportada.<br />\r\n<br />\r\nInicialmente a suspeita negou que tivesse gr&aacute;vida naquele per&iacute;odo, por&eacute;m ao passar por exames, a equipe m&eacute;dica constatou que a dona de casa havia tido um parto recente. Na ocasi&atilde;o, Lucineide decidiu assumir sobre o nascimento da crian&ccedil;a, por&eacute;m garantiu que ningu&eacute;m da fam&iacute;lia sabia, nem mesmo o marido.<br />\r\n<br />\r\nEm depoimento, Lucineide relatou que, no dia 12 de fevereiro, sentiu fortes dores, pois teria ca&iacute;do sobre a barriga durante a limpeza da casa. No dia seguinte, enquanto o marido trabalhava, a mulher come&ccedil;ou a sentir dores novamente e pediu para que os filhos fossem brincar no quintal.<br />\r\n<br />\r\nNo trecho que do depoimento que o site teve acesso na &eacute;poca, a mulher relatou como praticou o crime: &ldquo;Tranquei-me no quarto e as dores s&oacute; aumentavam, eram as dores do parto. Com muito custo consegui dar a luz &agrave; crian&ccedil;a. Embora sentisse muitas dores, n&atilde;o dei nenhum grito para que meus filhos n&atilde;o soubessem o que estava acontecendo. A crian&ccedil;a nasceu, todavia estava morta, pois n&atilde;o chorou e n&atilde;o respirou. Consegui, sozinha, puxar o cord&atilde;o umbilical at&eacute; o momento que saiu junto a placenta&rdquo;, diz.<br />\r\n<br />\r\nEm seguida, conforme a pol&iacute;cia, Lucineide teria enrolado o beb&ecirc; em uma toalha, colocado em uma sacola e depois em uma caixa. Logo depois limpou o local, tomou banho e esperou a chegada do marido. Durante a madrugada, a mulher verificou se todos na casa dormiam, saiu e jogou a crian&ccedil;a no rio.<br />\r\n<br />\r\nMesmo a mulher negando que o pai da crian&ccedil;a participou do crime, a pol&iacute;cia entendeu que o casal escondeu o corpo, juntos. O julgamento de Lucineide e do marido ser&aacute; realizado na pr&oacute;xima sexta, a partir de 8h, no F&oacute;rum de Jaru.</p>\r\n\r\n<p>Do Jaru Online</p>\r\n', '2015-11-14 15:09:43', '', 'noticias/2015/11/pais-acusados-de-matar-e-jogar-bebe-em-rio-serao-julgados-nesta-sexta-feira-em-jaru.jpg', 0, NULL, NULL, NULL),
	(5, 'rolim-ultimas-vagas-para-o-curso-de-portugues-para-concurso-na-conectinove', 'Rolim:Últimas vagas para o curso de português para concurso na Conectinove', '', 'Assessoria', 'Portal Rolnews', 'sim', '<p>A Conectinove Escola de Profiss&otilde;es est&aacute; com suas &uacute;ltimas vagas dispon&iacute;veis para a turma &uacute;nica do curso de portugu&ecirc;s b&aacute;sico para concursos p&uacute;blicos. A carga hor&aacute;ria &eacute; de 30 horas/aula, ministradas pela professora Ivone Querber, uma das mais conceituadas profissionais da regi&atilde;o nesta &aacute;rea.</p>\r\n\r\n<p>De acordo com o diretor da institui&ccedil;&atilde;o, Ronaldo Adriano Barreto, o objetivo do curso &eacute; uniformizar o conhecimento de quem quer ir bem nos pr&oacute;ximos concursos, estudando com foco na l&iacute;ngua m&atilde;e dos brasileiros. Ele lembra que a mat&eacute;ria &eacute; sempre tem peso definitivo nos certames.</p>\r\n\r\n<p>&ldquo;H&aacute; concursos em que, acertar uma boa quantidade das quest&otilde;es de portugu&ecirc;s pode ser o divisor de &aacute;guas entre ser ou n&atilde;o aprovado. Por isso, cada dia mais os concurseiros est&atilde;o investindo nesse setor, por que as bancas tamb&eacute;m est&atilde;o cada dia mais exigentes&rdquo;, argumentou o empres&aacute;rio.</p>\r\n\r\n<p>Para aproveitar essa e outras oportunidades, procure agora mesmo a Conectinove Escola de Profiss&otilde;es na Av. 25 de Agosto, ao lado da Caixa Econ&ocirc;mica Federal, no Centro de Rolim de Moura e fa&ccedil;a sua matr&iacute;cula. Informa&ccedil;&otilde;es pelo site www.cep1.com.br ou no telefone (69) 3442-2674.</p>\r\n\r\n<p>Da Assessoria para o Rolnews</p>\r\n', '2015-11-14 15:17:00', '', 'noticias/2015/11/rolim-ultimas-vagas-para-o-curso-de-portugues-para-concurso-na-conectinove.jpg', 0, NULL, NULL, NULL),
	(7, 'rolim-menor-capturado-em-flagrante-furtando-e-praticando-vandalismo-em-escola', 'Rolim: Menor capturado em flagrante furtando e praticando vandalismo em escola', '.', 'Assessoria', 'Alerta Rolim', 'sim', '<p>Por volta das 04h00 da madrugada desta quinta-feira (12), a Escola Tancredo de Almeida Neves, localizada na Avenida S&atilde;o Paulo, Bairro Beira Rio, foi alvo de um verdadeiro ato de vandalismo, como: arrombamento, picha&ccedil;&otilde;es com os dizeres; (155, 157, Vida Louca, entre outros) e alguns materiais ainda foram furtados.</p>\r\n\r\n<p>De acordo com informa&ccedil;&otilde;es policiais, uma guarni&ccedil;&atilde;o de R&aacute;dio Patrulha da Pol&iacute;cia Militar, composta pelo Cabo Aguiar, Soldados Mota e Raiala realizava patrulhamento de rotina pelo Bairro Beira Rio, momento em que passavam em frente a referida escola e perceberam duas bicicletas escoradas no muro do col&eacute;gio.</p>\r\n\r\n<p>Atrav&eacute;s da suspeita que o estabelecimento pudesse ser alvo de furto, os policiais adentraram no col&eacute;gio e deparam com a porta da cantina, janela da biblioteca e laborat&oacute;rio arrombados. Ao fazerem uma varredura, os policiais avistaram dois indiv&iacute;duos que tentaram se evadir do local, por&eacute;m um menor de 17 anos acabou sendo apreendido. O outro conseguiu fugir.</p>\r\n\r\n<p>Do lado de fora da escola, foram encontrados v&aacute;rios objetos que haviam sido furtados. O menor apreendido e os objetos recuperados foram apresentados na Delegacia de Pol&iacute;cia Civil.</p>\r\n', '2015-11-14 17:35:10', '', 'noticias/2015/11/rolim-menor-capturado-em-flagrante-furtando-e-praticando-vandalismo-em-escola-1447529710.jpg', 0, NULL, NULL, NULL),
	(8, 'cerca-de-65-mil-consumidores-de-rondonia-nao-pagarao-taxa-extra-na-conta-de-luz', 'Cerca de 65 mil consumidores de Rondônia não pagarão taxa extra na conta de luz', '.', 'Assessoria', 'G1 RO', 'sim', '<p>Cerca de 65 mil consumidores de 43 localidades de&nbsp;Rond&ocirc;nia&nbsp;(<strong>veja a lista abaixo</strong>) ficar&atilde;o isentos das taxas das bandeiras amarela e vermelha nas contas de luz. A isen&ccedil;&atilde;o foi determinada pela Lei 13.182 de 2015. A legisla&ccedil;&atilde;o estabelece que consumidores de regi&otilde;es isoladas de seis estados brasileiros ficam livres de cobran&ccedil;as das bandeiras tarif&aacute;rias.</p>\r\n\r\n<p>Segundo a lei, sancionada no &uacute;ltimo dia 4 de novembro pela presidente Dilma Rousseff, essas comunidades integram apenas parcialmente ou n&atilde;o fazem parte do Sistema Interligado Nacional (SIN). Como os consumidores desses locais n&atilde;o usufruem totalmente dos servi&ccedil;os, eles est&atilde;o isentos das bandeiras tarif&aacute;rias aplicadas.</p>\r\n\r\n<p>De acordo com a Eletrobras Distribui&ccedil;&atilde;o Rond&ocirc;nia, a popula&ccedil;&atilde;o isenta do pagamento das taxas representa 7,14% do mercado de energia consumida no estado.</p>\r\n\r\n<p><strong>Confira abaixo as localidades que deixar&atilde;o de pagar a taxa de bandeira vermelha:</strong><br />\r\nAlvorada do Oeste<br />\r\nBuritis<br />\r\nCampo Novo de Rond&ocirc;nia<br />\r\nConcei&ccedil;&atilde;o da Galera<br />\r\nCosta Marques<br />\r\nCujubim<br />\r\nCuricacas-Guarani<br />\r\nDarlan Vono<br />\r\nDemarca&ccedil;&atilde;o<br />\r\nDistrito de Triunfo<br />\r\nExtrema<br />\r\nFortaleza do Abun&atilde;<br />\r\nForte Pr&iacute;ncipe da Beira<br />\r\nGuapor&eacute;<br />\r\nIzidol&acirc;ndia<br />\r\nJacin&oacute;polis<br />\r\nLago do Cuni&atilde;<br />\r\nMachadinho D&#39;Oeste<br />\r\nMaicy<br />\r\nNova Calif&oacute;rnia<br />\r\nPacaran&atilde;<br />\r\nPapagaio<br />\r\nPedras Negra<br />\r\nPorto Murtinho<br />\r\nRolim de Moura do Guapor&eacute;<br />\r\nSanta Catarina<br />\r\nS&atilde;o Carlos<br />\r\nS&atilde;o Domingos<br />\r\nS&atilde;o Francisco do Guapor&eacute;<br />\r\nS&atilde;o Jos&eacute;<br />\r\nSurpresa<br />\r\nTabajara<br />\r\nTerra Boa<br />\r\nTerra Ca&iacute;da &ndash; Primor<br />\r\nTira Fogo<br />\r\nUni&atilde;o Bandeirantes<br />\r\nUrucumacu&atilde;<br />\r\nVale do Anari<br />\r\nVila de Calama<br />\r\nVila de Nazar&eacute;<br />\r\nVila Nova Uni&atilde;o<br />\r\nVila Rio Branco<br />\r\nVista Alegre do Abun&atilde;</p>\r\n\r\n<p>Do G1 RO</p>\r\n', '2015-11-14 17:41:14', '', 'noticias/2015/11/cerca-de-65-mil-consumidores-de-rondonia-nao-pagarao-taxa-extra-na-conta-de-luz.jpg', 0, NULL, NULL, NULL),
	(9, 'justica-manda-soltar-indios-tenharim-acusados-de-matar-tres-em-humaita', 'Justiça manda soltar índios Tenharim acusados de matar três em Humaitá', '.', 'Assessoria', 'Acritica', 'sim', '<p>A Justi&ccedil;a do Amazonas mandou soltar os cinco &iacute;ndios Tenharim acusados de matar, em dezembro de 2013, tr&ecirc;s homens dentro da Terra Ind&iacute;gena Tenharim, &agrave;s margens da rodovia BR-230, a Transamaz&ocirc;nica, em Humait&aacute;, no interior do Amazonas, a 590 quil&ocirc;metros da capital.</p>\r\n\r\n<p>A desembargadora Encarna&ccedil;&atilde;o das Gra&ccedil;as Sampaio Salgado, relatora do processo, aceitou o habeas corpus impetrado pela Funda&ccedil;&atilde;o Nacional do &Iacute;ndio (Funai) contra o juiz da 2&ordf; Vara Criminal de Humait&aacute; e concedeu alvar&aacute;s de soltura para os cinco r&eacute;us presos: Sime&atilde;o Tenharim, Gilson Tenharim, Gilvan Tenharim, Valdinar Tenharim e Domiceno Tenharim. A decis&atilde;o foi tomada no &uacute;ltimo dia 6 de novembro.</p>\r\n\r\n<p>Para defender a soltura dos r&eacute;us, a Funai alegou que houve constrangimento ilegal por excesso de prazo porque os &iacute;ndios estavam presos desde 30 de janeiro de 2014, h&aacute; 1 de um ano e 9 meses, &ldquo;h&aacute; mais tempo do que a lei determina&rdquo;. O excesso de prazo foi cometido pelo juiz da 2&ordf; Vara de Humait&aacute;. A alega&ccedil;&atilde;o da Funai foi aceita pela desembargadora Encarna&ccedil;&atilde;o Salgado.</p>\r\n\r\n<p>Os cinco ind&iacute;genas vinham cumprindo pena na Cadeia P&uacute;blica de L&aacute;brea, munic&iacute;pio vizinho a Humait&aacute;. Antes, eles estavam presos no Pres&iacute;dio de Seguran&ccedil;a M&aacute;xima de Porto Velho, em Rond&ocirc;nia. A transfer&ecirc;ncia deles de Porto Velho para L&aacute;brea ocorreu devido ao decl&iacute;nio de compet&ecirc;ncia do caso passar da Justi&ccedil;a Federal para Justi&ccedil;a Estadual.</p>\r\n\r\n<p>Na decis&atilde;o de soltura, a desembargadora exigiu que os cinco r&eacute;us ind&iacute;genas devem permanecer dentro da Terra Ind&iacute;gena Tenharim Marmelos, sob supervis&atilde;o da Funai de Humait&aacute;, mesmo local onde viviam e onde as v&iacute;timas foram assassinadas. Os &iacute;ndios s&atilde;o acusados de infringir os artigos 121, &sect; 2&ordm;, inc. I e IV e 211 do C&oacute;digo Penal (homic&iacute;dio).</p>\r\n\r\n<p><strong>As tr&ecirc;s v&iacute;timas</strong></p>\r\n\r\n<p>As tr&ecirc;s v&iacute;timas assassinadas a tiros dentro da reserva ind&iacute;gena Tenharim s&atilde;o o professor Stef Pinheiro de Sousa, 43, o comerciante Luciano Ferreira Freire, 30, e o funcion&aacute;rio da Eletrobras Amazonas Energia Aldeney Ribeiro Salvador, 40.</p>\r\n\r\n<p>Eles foram sequestrados e desapareceram no dia 16 de dezembro de 2013 quando faziam viagem de carro pelo trecho da rodovia BR-230 que corta a reserva Tenharim e onde os ind&iacute;genas cobram ped&aacute;gio. As v&iacute;timas tinham como destino a cidade de Apu&iacute;.</p>\r\n\r\n<p>As fam&iacute;lias denunciaram o desaparecimento e uma mega opera&ccedil;&atilde;o foi montada pela Pol&iacute;cia Federal para encontrar as v&iacute;timas, com apoio da For&ccedil;a Nacional, Ex&eacute;rcito, Pol&iacute;cia Militar e Pol&iacute;cia Civil do Amazonas e Rond&ocirc;nia.</p>\r\n\r\n<p>Os cinco &iacute;ndios r&eacute;us no processo foram presos antes dos corpos serem encontrados, no dia 30 de janeiro de 2014. O ve&iacute;culo das v&iacute;timas foi incendiado e os corpos achados quase dois meses depois do crime, no dia 3 de fevereiro de 2014, todos dentro de uma vala.</p>\r\n\r\n<p><strong>Vingan&ccedil;a</strong></p>\r\n\r\n<p>Os assassinatos dos tr&ecirc;s homens teriam sido motivados por vingan&ccedil;a dos ind&iacute;genas devido a morte do cacique Ivan Tenharim, pai de dois dos r&eacute;us no processo criminal. O corpo do cacique Ivan foi encontrado em um trecho da rodovia BR-230 no dia 2 de dezembro de 2013, dias antes dos homic&iacute;dios.</p>\r\n\r\n<p><strong>Conflitos&nbsp;</strong></p>\r\n\r\n<p>As mortes dos tr&ecirc;s homens gerou conflitos s&eacute;ros naquela regi&atilde;o do sul do Amazonas. A reserva ind&iacute;gena Tenharim foi parcialmente invadida por um grupo de pessoas e os casebres de madeira onde os &iacute;ndios cobravam ped&aacute;gios foram incendiados. Ve&iacute;culos e pr&eacute;dios da Funai foram saqueados e incendiados.</p>\r\n\r\n<p>Do Acr&iacute;tica</p>\r\n', '2015-11-14 17:44:42', '', 'noticias/2015/11/justica-manda-soltar-indios-tenharim-acusados-de-matar-tres-em-humaita.jpg', 0, NULL, NULL, NULL),
	(10, 'caminhoneiros-fazem-buzinaco-em-rolim-de-moura', 'Caminhoneiros fazem buzinaço em Rolim de Moura', 'A manifestação mostra o descontentamento da categoria com as atitudes do Governo Federal.', 'Assessoria', 'Portal Rolnews', 'sim', '<p>No in&iacute;cio da noite desta quinta-feira, 12, um grupo de caminhoneiros promoveu um buzina&ccedil;o pelas principais avenidas de Rolim de Moura. A manifesta&ccedil;&atilde;o, que durou quase duas horas, &eacute; por uma s&eacute;rie de fatores, entre elas o aumento dos impostos, da gasolina e &oacute;leo diesel. &nbsp;Em Rond&ocirc;nia, os caminhoneiros n&atilde;o aderiram &agrave; paralisa&ccedil;&atilde;o que ocorre em v&aacute;rios outros estados brasileiros, por&eacute;m manifestaram apoio aos companheiros de estrada.</p>\r\n\r\n<p>O buzina&ccedil;o tamb&eacute;m deixou claro o descontentamento dos caminhoneiros com a Medida Provis&oacute;ria, MP, anunciada pelo Governo Federal nesta ter&ccedil;a-feira, 10, que imp&otilde;e multa de R$ 5.746 para o caminhoneiro que bloquear uma BR. J&aacute; os organizadores de manifesta&ccedil;&otilde;es com bloqueio poder&atilde;o ser multados em R$ 19.154.</p>\r\n\r\n<p>Na internet diariamente surge v&iacute;deos de manifesta&ccedil;&otilde;es em v&aacute;rios locais do pa&iacute;s, o&nbsp;v&iacute;deo mais recente foi de um buzina&ccedil;o realizado em Bras&iacute;lia pr&oacute;ximo ao Pal&aacute;cio do Planalto, os caminhoneiros em seus manifestos, pedem a sa&iacute;da de&nbsp;Dilma Rousseff da presid&ecirc;ncia. Em Rolim de Moura n&atilde;o foi diferente, durante manifesta&ccedil;&atilde;o os gritos e mensagens de descontentamento com o governo chamaram a aten&ccedil;&atilde;o de quem passava pela Avenida 25 de Agosto e Norte Sul.</p>\r\n\r\n<p><strong>Medida Provis&oacute;ria do Governo Federal</strong></p>\r\n\r\n<p>Entre as san&ccedil;&otilde;es que ser&atilde;o endurecidas, tamb&eacute;m est&atilde;o a proibi&ccedil;&atilde;o, por dez anos, de o grevista reincidente receber incentivo de cr&eacute;dito para adquirir ve&iacute;culos. Outros pontos, como a suspens&atilde;o do direito de dirigir por 12 meses e apreens&atilde;o do ve&iacute;culo, que j&aacute; est&atilde;o previstos no C&oacute;digo Nacional de Tr&acirc;nsito, continuam valendo.<br />\r\n<br />\r\nOutro trecho inclu&iacute;do no texto permite que a Pol&iacute;cia Rodovi&aacute;ria Federal (PRF) contrate guinchos particulares para remover os ve&iacute;culos que bloquearem vias. O custo com os guinchos ser&aacute; pago pelo pr&oacute;prio motorista. De acordo com o ministro, entre segunda e ter&ccedil;a-feira foram aplicadas mais de 100 multas a caminhoneiros por bloqueios.</p>\r\n', '2015-11-14 17:45:57', '', 'noticias/2015/11/caminhoneiros-fazem-buzinaco-em-rolim-de-moura.jpg', 0, NULL, NULL, NULL);
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.noticias_categoria
DROP TABLE IF EXISTS `noticias_categoria`;
CREATE TABLE IF NOT EXISTS `noticias_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Categorias das Noticias';

-- Copiando dados para a tabela rolnews_dbsiteCW.noticias_categoria: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `noticias_categoria` DISABLE KEYS */;
REPLACE INTO `noticias_categoria` (`id_categoria`, `categoria`) VALUES
	(1, 'POLITICA'),
	(2, 'ESPORTE'),
	(3, 'CULTURA'),
	(4, 'POLICIAL');
/*!40000 ALTER TABLE `noticias_categoria` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.usuarios
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

-- Copiando dados para a tabela rolnews_dbsiteCW.usuarios: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
REPLACE INTO `usuarios` (`id`, `nome`, `email`, `data_nasc`, `sexo`, `login`, `senha`, `foto`, `ativo`, `nivel`, `cont_acesso`, `ip`, `ultimo_acesso`, `qm_cadastr`, `dt_cadastr`, `qm_alterou`, `dt_alterou`) VALUES
	(1, 'Creative Websites', 'suporte@creativewebsites.com.br', '2015-02-14', 1, 'creative', '19d910ef608e4947aa0c6dcee352a3e8', 'usuarios/2015/03/creative.jpeg', 's', 1, 40, '::1', '2015-02-13 22:33:25', 1, NULL, 1, '2015-03-25 21:57:12'),
	(53, 'Sergio Augusto Cortez Ferreira', 'caquirm@gmail.com', '1972-03-14', 1, 'sergio', '79d8a1497fee797644db4f1faf517cd6', 'usuarios/2015/03/sergio.png', 's', 1, 0, NULL, NULL, NULL, '2015-03-28 02:02:45', NULL, '2015-03-28 02:05:10');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.videos
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

-- Copiando dados para a tabela rolnews_dbsiteCW.videos: ~11 rows (aproximadamente)
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


-- Copiando estrutura para tabela rolnews_dbsiteCW.ws_siteviews
DROP TABLE IF EXISTS `ws_siteviews`;
CREATE TABLE IF NOT EXISTS `ws_siteviews` (
  `siteviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `siteviews_date` date NOT NULL,
  `siteviews_users` decimal(10,0) NOT NULL,
  `siteviews_views` decimal(10,0) NOT NULL,
  `siteviews_pages` decimal(10,0) NOT NULL,
  PRIMARY KEY (`siteviews_id`),
  KEY `idx_1` (`siteviews_date`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela rolnews_dbsiteCW.ws_siteviews: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `ws_siteviews` DISABLE KEYS */;
REPLACE INTO `ws_siteviews` (`siteviews_id`, `siteviews_date`, `siteviews_users`, `siteviews_views`, `siteviews_pages`) VALUES
	(1, '2015-09-02', 2, 8, 45),
	(2, '2015-09-03', 1, 1, 20),
	(3, '2015-09-05', 2, 2, 135),
	(4, '2015-09-06', 1, 1, 59),
	(5, '2015-09-07', 2, 2, 117),
	(6, '2015-09-09', 1, 1, 2),
	(7, '2015-11-06', 1, 1, 21),
	(8, '2015-11-14', 2, 2, 14);
/*!40000 ALTER TABLE `ws_siteviews` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.ws_siteviews_agent
DROP TABLE IF EXISTS `ws_siteviews_agent`;
CREATE TABLE IF NOT EXISTS `ws_siteviews_agent` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agent_views` decimal(10,0) NOT NULL,
  PRIMARY KEY (`agent_id`),
  KEY `idx_1` (`agent_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela rolnews_dbsiteCW.ws_siteviews_agent: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `ws_siteviews_agent` DISABLE KEYS */;
REPLACE INTO `ws_siteviews_agent` (`agent_id`, `agent_name`, `agent_views`) VALUES
	(1, 'Firefox', 2),
	(2, 'Chrome', 9),
	(3, 'Outros', 1);
/*!40000 ALTER TABLE `ws_siteviews_agent` ENABLE KEYS */;


-- Copiando estrutura para tabela rolnews_dbsiteCW.ws_siteviews_online
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela rolnews_dbsiteCW.ws_siteviews_online: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ws_siteviews_online` DISABLE KEYS */;
REPLACE INTO `ws_siteviews_online` (`online_id`, `online_session`, `online_startview`, `online_endview`, `online_ip`, `online_url`, `online_agent`, `agent_name`) VALUES
	(16, '0abf8a6609c3093ae4325a20dadb188f', '2015-11-12 21:09:35', '2015-11-14 16:04:33', '200.186.13.254', '/new/', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 'Chrome');
/*!40000 ALTER TABLE `ws_siteviews_online` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
