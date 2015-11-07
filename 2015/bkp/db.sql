-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.21 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela _acirm_2015.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_name` varchar(255) NOT NULL,
  `evento` varchar(200) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `local` varchar(150) DEFAULT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='Agenda de Eventos';

-- Copiando dados para a tabela _acirm_2015.agenda: ~94 rows (aproximadamente)
DELETE FROM `agenda`;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` (`id`, `url_name`, `evento`, `data`, `local`, `qm_cadastr`, `qm_alterou`) VALUES
	(5, 'reuniao-da-diretoria-da-acirm', 'Reunião da diretoria da ACIRM ', '2015-05-05 07:00:00', 'Auditório da ACIRM', 1, 1),
	(6, 'aniversario-da-empresa-info-link', 'Aniversário da Empresa Info Link', '2015-05-06 16:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(7, 'aniversario-da-empresa-casa-da-lavoura', 'Aniversário da Empresa Casa da Lavoura', '2015-05-06 16:00:00', 'Entrega de certificado na sede da empresa', 53, 53),
	(8, 'aniversario-da-empresa-centro-de-educacao-profissional-delta', 'Aniversário da Empresa Centro de Educação Profissional Delta', '2015-05-06 16:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(10, 'aniversario-da-empresa-lg-acessorios', 'Aniversário da empresa LG Acessórios', '2015-05-07 16:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(11, 'reuniao-do-grupo-de-midia', 'Reunião do Grupo de Mídia', '2015-05-07 19:00:00', 'Auditório da Acirm', 53, NULL),
	(12, 'aniversario-da-empresa-fisk-idiomas', 'Aniversário da Empresa FISK Idiomas', '2015-05-09 09:00:00', 'Rolim de Moura', 53, NULL),
	(13, 'aniversario-da-empresa-comam-maquinas', 'Aniversário da Empresa Comam Máquinas', '2015-05-09 09:30:00', 'Rolim de Moura', 53, NULL),
	(14, 'campanha-nacional-contra-a-gripe-influenza-dia-d', 'Campanha Nacional contra a Gripe Influenza - Dia "D"', '2015-05-09 08:00:00', 'Posto de saúde Cidade Alta, Albert Sabin e Faculdade FSP', 53, NULL),
	(15, 'aniversario-da-empresa-copiadora-central', 'Aniversário da Empresa Copiadora Central', '2015-05-10 08:29:00', 'Parabéns Copiadora Central', 53, NULL),
	(16, 'aniversario-da-empresa-mapin-materiais-para-construcao', 'Aniversário da Empresa Mapin Materiais para Construção', '2015-05-10 08:30:00', 'Parabéns Mapin', 53, NULL),
	(17, 'aniversario-da-empresa-big-modas', 'Aniversário da Empresa Big Modas', '2015-05-10 08:30:00', 'Parabéns Big Modas', 53, NULL),
	(18, 'aniversario-da-empresa-mobilar-moveis-planejados', 'Aniversário da Empresa Mobilar Móveis Planejados', '2015-05-10 08:31:00', 'Parabéns Mobilar', 53, NULL),
	(19, 'aniversario-da-empresa-preserva-solucoes', 'Aniversário da Empresa Preserva Soluções', '2015-05-11 16:00:00', 'Entrega de certificado na sede da empresa', 53, 53),
	(21, 'aniversario-da-empresa-filtro-sul', 'Aniversário da Empresa Filtro Sul', '2015-05-12 14:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(22, 'reuniao-da-diretoria-da-acirm', 'Reunião da diretoria da ACIRM ', '2015-05-12 07:00:00', 'Auditório da ACIRM', 53, NULL),
	(23, 'trofeu-acirm-2014-os-melhores-brilham', 'Troféu ACIRM 2014 - "Os Melhores Brilham"', '2015-05-12 20:00:00', 'CTG - Centro de Tradições Gaúchas ', 53, NULL),
	(24, 'aniversario-da-empresa-brasimoveis', 'Aniversário da Empresa Brasimóveis', '2015-05-13 15:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(25, 'trofeu-acirm-2014-noite-de-gala', 'Troféu ACIRM 2014 - Noite de Gala', '2015-05-13 08:00:00', 'As fotos do troféu já estão disponíveis no facebook da ACIRM', 53, NULL),
	(26, 'aniversario-da-empresa-metalurgica-santa-fe', 'Aniversário da Empresa Metalúrgica Santa Fé', '2015-05-14 15:00:00', 'Entrega de certificado na sede da empresa', 53, 53),
	(27, 'aniversario-da-empresa-cafe-fernando', 'Aniversário da Empresa Café Fernando', '2015-05-14 20:00:00', 'Entrega de certificado na sede da empresa', 53, 53),
	(28, 'aniversario-da-empresa-eclipse-modas', 'Aniversário da Empresa Eclipse Modas', '2015-05-14 15:00:00', 'Entrega de certificado na sede da empresa', 53, 53),
	(29, 'aniversario-da-empresa-constril-materiais-para-construcao', 'Aniversário da Empresa Constril Materiais para Construção', '2015-05-14 15:00:00', 'Entrega de certificado na sede da empresa', 53, 53),
	(30, 'aniversario-da-empresa-rondonia-motos', 'Aniversário da Empresa Rondônia Motos', '2015-05-15 15:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(31, 'aniversario-da-empresa-fagotti-doces', 'Aniversário da Empresa Fagotti Doces', '2015-05-16 08:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(32, 'aniversario-da-empresa-comercial-e-lanchonte-dos-amigos', 'Aniversário da Empresa Comercial e Lanchonte dos Amigos', '2015-05-18 15:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(33, 'aniverario-da-empresa-laboratorio-biolab', 'Aniverario da Empresa Laboratório Biolab', '2015-05-18 15:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(34, 'apresentacao-georreferenciamento-de-rolim-de-moura', 'Apresentação Georreferenciamento de Rolim de Moura', '2015-05-18 14:00:00', 'Apresentação no auditório da ACIRM - Sua presença e muito importante para nós.', 53, NULL),
	(35, 'reuniao-da-diretoria-da-acirm', 'Reunião da diretoria da ACIRM ', '2015-05-19 07:00:00', 'Auditório da ACIRM', 53, 53),
	(36, 'aniversario-do-sinsezmat', 'Aniversário do SINSEZMAT', '2015-05-19 09:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(37, 'aniversario-da-empresa-churrascaria-gaucho', 'Aniversário da Empresa Churrascaria Gaúcho', '2015-05-19 09:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(38, 'aniversario-da-empresa-odonto-arte', 'Aniversário da Empresa Odonto Arte', '2015-05-20 16:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(39, 'palestra-crc-sescap-ro-e-social', 'Palestra CRC /  SESCAP-RO E-Social', '2015-05-21 19:30:00', 'Auditório da ACIRM', 53, NULL),
	(40, 'palestra-das-acoes-da-corporacao-do-corpo-de-bombeiros-de-rolim-de-moura-ao-comando-geral', 'Palestra das ações da Corporação do Corpo de Bombeiros de Rolim de Moura ao Comando Geral', '2015-05-22 14:00:00', 'Auditório da ACIRM', 53, 53),
	(41, 'atendimento-sebrae', 'Atendimento SEBRAE', '2015-05-25 08:00:00', 'Audi', 53, NULL),
	(42, 'aniversario-da-empresa-loterica-trevo-da-sorte', 'Aniversário da empresa Lotérica Trevo da Sorte', '2015-05-25 08:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(43, 'aniversario-da-empresa-agrocentro', 'Aniversário da empresa Agrocentro', '2015-05-25 09:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(44, 'aniversario-da-empresa-papelaria-lupi', 'Aniversário da empresa Papelaria Lupi', '2015-05-25 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(45, 'aniversario-da-empresa-farmacia-santa-luzia', 'Aniversário da Empresa Farmácia Santa Luzia', '2015-05-26 08:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(46, 'aniversario-da-empresa-conquista-modas', 'Aniversário da Empresa Conquista Modas', '2015-05-26 09:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(47, '14-prestacao-de-contas-observatorio-social', '14 Prestação de Contas Observatório Social', '2015-05-26 20:00:00', 'Auditório do CEEJA', 53, NULL),
	(48, 'aniversario-da-empresa-guarana-brasil', 'Aniversário da Empresa Guaraná Brasil', '2015-05-30 08:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(49, 'aniversario-da-empresa-mercado-brasao', 'Aniversário da Empresa Mercado Brasão', '2015-05-30 08:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(50, 'aniversario-da-empresa-doceria-e-confeitaria-lud-myla', 'Aniversário da Empresa Doceria e Confeitaria Lud Myla', '2015-05-30 08:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(51, 'aniversario-da-empresa-laboratorio-oswaldo-cruz', 'Aniversário da Empresa Laboratório Oswaldo Cruz', '2015-06-06 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(52, 'aniversario-da-empresa-papelaria-nacional-atacado', 'Aniversário da Empresa Papelaria Nacional Atacado', '2015-06-06 10:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(53, 'reuniao-da-diretoria-da-acirm-apresentacao-da-equipe-a-nova-diretoria', 'Reunião da diretoria da ACIRM  - Apresentação da equipe a nova diretoria', '2015-06-09 07:00:00', 'Auditório da ACIRM', 53, NULL),
	(54, 'aniversario-da-empresa-moveis-gazin', 'Aniversário da empresa Móveis Gazin', '2015-06-11 09:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(55, 'aniversario-da-empresa-pereira-latarias', 'Aniversário da Empresa Pereira Latarias', '2015-06-13 09:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(56, 'aniversario-da-empresa-alerta-rolim', 'Aniversário da Empresa Alerta Rolim', '2015-06-13 09:15:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(57, 'aniversario-da-empresa-scopel-confeccoes', 'Aniversário da Empresa Scopel Confecções', '2015-06-14 08:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(58, 'aniversario-da-empresa-3a-auto-center', 'Aniversário da Empresa 3A Auto Center', '2015-06-14 08:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(59, 'aniversario-da-empresa-chagas-construtora', 'Aniversário da Empresa Chagas Construtora', '2015-06-14 08:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(60, 'bom-dia-associado', 'Bom dia Associado', '2015-06-16 07:00:00', 'Café da manhã no auditório da ACIRM', 53, NULL),
	(61, 'aniversario-da-empresa-lokal-da-moda', 'Aniversário da Empresa Lokal da Moda', '2015-06-16 09:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(62, 'aniversario-da-empresa-auto-posto-mirian-iii', 'Aniversário da Empresa Auto Posto Mirian III', '2015-06-19 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(63, 'efetuacao-de-migracao-de-sistema-acirm', 'EFETUAÇÃO DE MIGRAÇÃO DE SISTEMA ACIRM', '2015-06-20 08:00:00', 'Não atenderemos neste sábado', 53, NULL),
	(64, 'reinauguracao-da-mazzutti-veiculos', 'Reinauguração da MAZZUTTI Veículos', '2015-06-24 08:00:00', 'Av 25 de agosto, saída para Pimenta Bueno', 53, NULL),
	(65, 'aniversario-da-empresa-agro-mais', 'Aniversário da empresa Agro Mais', '2015-06-25 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(66, 'aniversario-da-empresa-relojoaria-e-otica-safira', 'Aniversário da empresa Relojoaria e Ótica Safira', '2015-06-25 10:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(67, 'aniversario-da-empresa-comercial-favorito', 'Aniversário da empresa Comercial Favorito', '2015-06-25 11:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(68, 'aniversario-da-empresa-shampoo-hair-saloon', 'Aniversário da Empresa Shampoo Hair Saloon', '2015-07-02 08:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(69, 'coquetel-de-lancamento-liquida-rolim-2015', 'Coquetel de lançamento LIQUIDA ROLIM 2015', '2015-08-11 19:30:00', 'Auditório da ACIRM', 53, 53),
	(70, 'comunicado-acirm-nao-havera-expediente-apos-as-12-00hrs', 'COMUNICADO ACIRM - NÃO HAVERÁ EXPEDIENTE APÓS AS 12:00hrs', '2015-07-03 12:00:00', 'Treinamento do novo sistema de gestão da entidade.', 53, NULL),
	(71, 'aniversario-da-empresa-borracharia-vitoria', 'Aniversário da Empresa Borracharia Vitória', '2015-07-03 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(72, 'aniversario-da-empresa-laticinios-mariela', 'Aniversário da Empresa Laticínios Mariela', '2015-07-04 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(73, 'aniversario-da-empresa-supermercado-central', 'Aniversário da Empresa Supermercado Central', '2015-07-04 08:15:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(74, 'aniversario-da-empresa-otica-e-relojoaria-oriente', 'Aniversário da Empresa Ótica e Relojoaria Oriente', '2015-07-04 08:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(75, 'aniversario-da-empresa-cristal-modas-sta-luzia', 'Aniversário da Empresa Cristal Modas - Sta Luzia', '2015-07-06 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(76, 'aniversario-da-empresa-supermercado-trento', 'Aniversário da Empresa Supermercado Trento', '2015-07-06 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(77, 'curso-de-gestao-de-estoque-sebrae', 'CURSO DE GESTÃO DE ESTOQUE - SEBRAE', '2015-07-10 19:00:00', 'Auditório da ACIRM - de 10 a 12 de julho - Informações ACIRM', 53, NULL),
	(78, 'aniversario-da-empresa-comercial-cristal', 'Aniversário da empresa Comercial Cristal', '2015-07-27 14:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(79, 'aniversario-da-empresa-conquista-modas', 'Aniversário da empresa Conquista Modas', '2015-07-27 14:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(80, 'aniversario-da-empresa-casa-do-motoqueiro', 'Aniversário da Empresa Casa do Motoqueiro', '2015-07-28 14:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(81, 'aniversario-da-empresa-beleza-pura', 'Aniversário da Empresa Beleza Pura', '2015-08-10 16:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(82, 'aniversario-da-empresa-mercado-cristal', 'Aniversário da Empresa Mercado Cristal', '2015-08-10 16:20:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(83, 'aniversario-da-empresa-habilitar-servicos-de-psicologia', 'Aniversário da Empresa Habilitar Serviços de Psicologia', '2015-08-10 16:40:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(84, 'aniversario-da-empresa-escritorio-contabil-arnoa', 'Aniversário da empresa Escritório Contábil Arnoa', '2015-08-11 09:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(85, 'aniversario-da-empresa-farmacia-bioformula', 'Aniversário da empresa Farmácia Biofórmula', '2015-08-11 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(86, 'aniversario-da-empresa-ms-fotos', 'Aniversário da Empresa MS Fotos', '2015-08-12 16:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(87, 'aniversario-da-empresa-lar-center', 'Aniversário da Empresa Lar Center', '2015-08-12 16:20:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(88, 'aniversario-da-empresa-realce-cosmeticos', 'Aniversário da Empresa Realce Cosméticos', '2015-08-12 16:40:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(89, 'jantar-de-lancamento-ano-novo-premiado-2015', 'Jantar de Lançamento Ano Novo Premiado 2015', '2015-08-27 19:30:00', 'AABB - Associação Atlética Banco do Brasil', 53, 53),
	(90, 'aniversario-da-empresa-moveis-do-lar', 'Aniversário da empresa Móveis do Lar', '2015-08-18 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(91, 'convite-de-reinauguracao-vetclin', 'Convite de reinauguração VETCLIN', '2015-08-22 08:00:00', 'Venha conhecer nossas novas instalações, estamos ansiosos por sua visita.', 53, 53),
	(92, 'encontro-mulheres-de-lenco', 'Encontro Mulheres de Lenço', '2015-08-20 15:00:00', 'Auditório do SINDSEF', 53, NULL),
	(93, 'aniversario-da-empresa-clinica-hirooka', 'Aniversário da Empresa Clínica Hirooka', '2015-08-24 15:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(94, 'aniversario-da-empresa-comercial-colombo', 'Aniversário da Empresa Comercial Colombo', '2015-08-24 15:30:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(95, 'aniversario-da-empresa-ambientis-consultoria', 'Aniversário da Empresa Ambientis Consultoria', '2015-08-24 16:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(96, 'aniversario-da-empresa-varsovia-chapeacao-e-pintura', 'Aniversário da empresa Varsóvia Chapeação e Pintura', '2015-08-31 09:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(97, 'aniversario-da-empresa-construtora-valtran', 'Aniversário da empresa Construtora Valtran', '2015-08-31 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(98, 'liquida-rolim-2015-um-exagero-de-liquidacao', 'Liquida Rolim 2015 - Um exagero de liquidação', '2015-09-08 08:00:00', 'Lançamento do Liquida Rolim 2015 - Av 25 de agosto est central', 53, NULL),
	(99, 'aniversario-da-empresa-confeccoes-favarin', 'Aniversário da Empresa Confecções Favarin', '2015-09-02 09:00:00', 'Entrega de certificado na sede da empresa', 53, NULL),
	(100, 'aniversario-da-empresa-pocone-veiculos', 'Aniversário da Empresa Poconé Veículos', '2015-09-02 10:00:00', 'Entrega de certificado na sede da empresa', 53, NULL);
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.associa
CREATE TABLE IF NOT EXISTS `associa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razao` varchar(200) NOT NULL,
  `fantasia` varchar(200) NOT NULL,
  `contato` varchar(100) NOT NULL,
  `ramo` varchar(200) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Armazena informações sobre os pedidos de associações atráves do site';

-- Copiando dados para a tabela _acirm_2015.associa: ~0 rows (aproximadamente)
DELETE FROM `associa`;
/*!40000 ALTER TABLE `associa` DISABLE KEYS */;
INSERT INTO `associa` (`id`, `razao`, `fantasia`, `contato`, `ramo`, `cep`, `endereco`, `numero`, `bairro`, `cidade`, `uf`, `email`, `telefone`) VALUES
	(1, 'wallner', 'wallner', 'wallner', 'wallner', '76940000', 'wallner', '9', 'centro', 'ROLIM', 'ro', 'acirm.comercialwj@outlook.com', '3442 1950');
/*!40000 ALTER TABLE `associa` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.banco_fotos
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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COMMENT='Armazena as fotos selecionadas na opção mais fotos, dependendo do tipo.';

-- Copiando dados para a tabela _acirm_2015.banco_fotos: ~178 rows (aproximadamente)
DELETE FROM `banco_fotos`;
/*!40000 ALTER TABLE `banco_fotos` DISABLE KEYS */;
INSERT INTO `banco_fotos` (`id`, `id_tipo`, `tipo`, `foto`, `data`, `ordem`) VALUES
	(7, 17, 'N', 'banco_fotos/2015/05/tipo-n-id-17-ae9bc.jpg', '2015-05-04 10:44:26', NULL),
	(8, 1, 'E', 'banco_fotos/2015/05/tipo-e-id-1-62372.jpg', '2015-05-04 19:30:30', NULL),
	(9, 1, 'E', 'banco_fotos/2015/05/tipo-e-id-1-c1d96.jpg', '2015-05-04 19:30:30', NULL),
	(10, 1, 'E', 'banco_fotos/2015/05/tipo-e-id-1-db75f.jpg', '2015-05-04 19:30:30', NULL),
	(11, 1, 'E', 'banco_fotos/2015/05/tipo-e-id-1-b076d.png', '2015-05-04 19:30:31', NULL),
	(12, 3, 'E', 'banco_fotos/2015/05/tipo-e-id-3-3b52b.png', '2015-05-05 10:34:58', NULL),
	(13, 3, 'E', 'banco_fotos/2015/05/tipo-e-id-3-5a732.jpg', '2015-05-05 10:35:12', NULL),
	(28, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-455b0.JPG', '2015-05-13 13:50:59', NULL),
	(29, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-2ed3b.JPG', '2015-05-13 13:53:48', NULL),
	(30, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-26d39.JPG', '2015-05-13 13:53:49', NULL),
	(31, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-2509e.JPG', '2015-05-13 13:53:49', NULL),
	(32, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a6a87.JPG', '2015-05-13 13:53:50', NULL),
	(33, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a3196.JPG', '2015-05-13 13:53:52', NULL),
	(34, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-cf5fd.JPG', '2015-05-13 13:55:51', NULL),
	(35, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-7e7c1.JPG', '2015-05-13 13:55:52', NULL),
	(36, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-44d93.JPG', '2015-05-13 13:55:52', NULL),
	(37, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-507ac.JPG', '2015-05-13 13:55:52', NULL),
	(38, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-f6bcf.JPG', '2015-05-13 13:58:23', NULL),
	(39, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-b9d0d.JPG', '2015-05-13 13:58:23', NULL),
	(40, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-e7397.JPG', '2015-05-13 13:58:24', NULL),
	(41, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-e32a0.JPG', '2015-05-13 13:58:24', NULL),
	(42, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-98088.JPG', '2015-05-13 13:58:25', NULL),
	(43, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-0df52.JPG', '2015-05-13 14:00:39', NULL),
	(44, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-db28f.JPG', '2015-05-13 14:00:39', NULL),
	(45, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-047f7.JPG', '2015-05-13 14:00:40', NULL),
	(46, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-fa808.JPG', '2015-05-13 14:00:40', NULL),
	(47, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-be609.JPG', '2015-05-13 14:00:41', NULL),
	(48, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-db6a8.JPG', '2015-05-13 14:02:36', NULL),
	(49, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-86597.JPG', '2015-05-13 14:02:36', NULL),
	(50, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-2468b.JPG', '2015-05-13 14:02:37', NULL),
	(51, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-58310.JPG', '2015-05-13 14:02:37', NULL),
	(52, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-338cd.JPG', '2015-05-13 14:05:22', NULL),
	(53, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-264d4.JPG', '2015-05-13 14:05:22', NULL),
	(54, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-65ae7.JPG', '2015-05-13 14:05:23', NULL),
	(55, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-34b42.JPG', '2015-05-13 14:05:23', NULL),
	(56, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-5292b.JPG', '2015-05-13 14:10:14', NULL),
	(57, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-3c222.JPG', '2015-05-13 14:10:14', NULL),
	(58, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-23c03.JPG', '2015-05-13 14:10:15', NULL),
	(59, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-bef8a.JPG', '2015-05-13 14:10:15', NULL),
	(60, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-8e975.JPG', '2015-05-13 14:10:16', NULL),
	(61, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-d950a.JPG', '2015-05-13 14:10:16', NULL),
	(62, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-09a6f.JPG', '2015-05-13 14:10:17', NULL),
	(63, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-08cf8.JPG', '2015-05-13 14:10:17', NULL),
	(64, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-57533.JPG', '2015-05-13 14:14:49', NULL),
	(65, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-ae215.JPG', '2015-05-13 14:14:49', NULL),
	(66, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-2ccba.JPG', '2015-05-13 14:14:50', NULL),
	(67, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-6e3a1.JPG', '2015-05-13 14:14:50', NULL),
	(68, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-c2a4a.JPG', '2015-05-13 14:14:50', NULL),
	(69, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a9cee.JPG', '2015-05-13 14:14:51', NULL),
	(70, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-1dbc3.JPG', '2015-05-13 14:14:51', NULL),
	(71, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-2e53b.JPG', '2015-05-13 14:18:15', NULL),
	(72, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-d5481.JPG', '2015-05-13 14:18:16', NULL),
	(73, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-8a514.JPG', '2015-05-13 14:18:16', NULL),
	(74, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a8695.JPG', '2015-05-13 14:18:16', NULL),
	(75, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-4a7c4.JPG', '2015-05-13 14:18:17', NULL),
	(76, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-51c17.JPG', '2015-05-13 14:18:17', NULL),
	(77, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-b66aa.JPG', '2015-05-13 14:18:18', NULL),
	(78, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-75d24.JPG', '2015-05-13 14:23:16', NULL),
	(79, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-25f0b.JPG', '2015-05-13 14:23:17', NULL),
	(80, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-e8ae0.JPG', '2015-05-13 14:23:17', NULL),
	(81, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-761c1.JPG', '2015-05-13 14:23:17', NULL),
	(82, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-d8128.JPG', '2015-05-13 14:23:18', NULL),
	(83, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-d6a23.JPG', '2015-05-13 14:23:18', NULL),
	(84, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-1c64b.JPG', '2015-05-13 14:23:19', NULL),
	(85, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-67a94.JPG', '2015-05-13 14:23:19', NULL),
	(86, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-4787e.JPG', '2015-05-13 14:31:34', NULL),
	(87, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-23e40.JPG', '2015-05-13 14:31:34', NULL),
	(88, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-8cb1e.JPG', '2015-05-13 14:31:34', NULL),
	(89, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-600f2.JPG', '2015-05-13 14:31:35', NULL),
	(90, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-26a33.JPG', '2015-05-13 14:31:35', NULL),
	(91, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-4273f.JPG', '2015-05-13 14:31:36', NULL),
	(92, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a4511.JPG', '2015-05-13 14:31:36', NULL),
	(93, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-202e4.JPG', '2015-05-13 14:31:36', NULL),
	(94, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-9ab78.JPG', '2015-05-13 14:31:37', NULL),
	(95, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-2d02c.JPG', '2015-05-13 14:31:37', NULL),
	(96, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-5d2ba.JPG', '2015-05-13 14:31:38', NULL),
	(97, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-373e3.JPG', '2015-05-13 14:42:01', NULL),
	(98, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-42d1d.JPG', '2015-05-13 14:42:02', NULL),
	(99, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-490d3.JPG', '2015-05-13 14:42:02', NULL),
	(100, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-7db67.JPG', '2015-05-13 14:42:02', NULL),
	(101, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-48446.JPG', '2015-05-13 14:42:03', NULL),
	(102, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a3baa.JPG', '2015-05-13 14:42:03', NULL),
	(103, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-ae738.JPG', '2015-05-13 14:42:03', NULL),
	(104, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-d6933.JPG', '2015-05-13 14:42:04', NULL),
	(105, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-fdbb1.JPG', '2015-05-13 14:42:04', NULL),
	(106, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-24858.JPG', '2015-05-13 14:42:05', NULL),
	(107, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-00033.JPG', '2015-05-13 14:42:05', NULL),
	(108, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a0e27.JPG', '2015-05-13 14:42:06', NULL),
	(109, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-c8a16.JPG', '2015-05-13 14:48:26', NULL),
	(110, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-58033.JPG', '2015-05-13 14:48:27', NULL),
	(111, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a2045.JPG', '2015-05-13 14:48:27', NULL),
	(112, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-4c9a6.JPG', '2015-05-13 14:48:27', NULL),
	(113, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-98440.JPG', '2015-05-13 14:48:28', NULL),
	(114, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-692b6.JPG', '2015-05-13 14:48:28', NULL),
	(115, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a61f6.JPG', '2015-05-13 14:48:29', NULL),
	(116, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-e2cc6.JPG', '2015-05-13 14:48:29', NULL),
	(117, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-3cfdb.JPG', '2015-05-13 14:48:29', NULL),
	(118, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-333eb.JPG', '2015-05-13 14:48:30', NULL),
	(119, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-3b9a9.JPG', '2015-05-13 14:48:30', NULL),
	(120, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-748bc.JPG', '2015-05-13 14:54:48', NULL),
	(121, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-82fa3.JPG', '2015-05-13 14:54:49', NULL),
	(122, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-1ac4b.JPG', '2015-05-13 14:54:49', NULL),
	(123, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-32b5f.JPG', '2015-05-13 14:54:50', NULL),
	(124, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-74e8d.JPG', '2015-05-13 14:54:50', NULL),
	(125, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-730be.JPG', '2015-05-13 14:54:50', NULL),
	(126, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-b2330.JPG', '2015-05-13 14:54:51', NULL),
	(127, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-c5c18.JPG', '2015-05-13 14:54:51', NULL),
	(128, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-92537.JPG', '2015-05-13 14:54:52', NULL),
	(129, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-76013.JPG', '2015-05-13 14:54:52', NULL),
	(130, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-460a1.JPG', '2015-05-13 14:54:52', NULL),
	(131, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-6db4a.JPG', '2015-05-13 14:54:53', NULL),
	(132, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-22783.JPG', '2015-05-13 15:00:53', NULL),
	(133, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-dbabe.JPG', '2015-05-13 15:00:54', NULL),
	(134, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-22834.JPG', '2015-05-13 15:00:54', NULL),
	(135, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-52438.JPG', '2015-05-13 15:00:54', NULL),
	(136, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-1042d.JPG', '2015-05-13 15:00:55', NULL),
	(137, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-1a368.JPG', '2015-05-13 15:00:55', NULL),
	(138, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-2372e.JPG', '2015-05-13 15:00:56', NULL),
	(139, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-20553.JPG', '2015-05-13 15:00:56', NULL),
	(140, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a6aeb.JPG', '2015-05-13 15:00:56', NULL),
	(141, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-094fb.JPG', '2015-05-13 15:00:57', NULL),
	(142, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-7f467.JPG', '2015-05-13 15:00:57', NULL),
	(143, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-358b2.JPG', '2015-05-13 15:00:58', NULL),
	(144, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-2094b.JPG', '2015-05-13 15:00:58', NULL),
	(145, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-90a6f.JPG', '2015-05-13 15:11:00', NULL),
	(146, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-a12d9.JPG', '2015-05-13 15:11:01', NULL),
	(147, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-cde79.JPG', '2015-05-13 15:11:01', NULL),
	(148, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-0bdd3.JPG', '2015-05-13 15:11:02', NULL),
	(149, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-4d163.JPG', '2015-05-13 15:11:02', NULL),
	(150, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-c3cb9.JPG', '2015-05-13 15:11:03', NULL),
	(151, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-f6809.JPG', '2015-05-13 15:11:03', NULL),
	(152, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-ac2ba.JPG', '2015-05-13 15:11:04', NULL),
	(153, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-93cc5.JPG', '2015-05-13 15:11:04', NULL),
	(154, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-6fad5.JPG', '2015-05-13 15:19:41', NULL),
	(155, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-13bab.JPG', '2015-05-13 15:19:42', NULL),
	(156, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-af7dc.JPG', '2015-05-13 15:19:42', NULL),
	(157, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-479ba.JPG', '2015-05-13 15:19:43', NULL),
	(158, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-8eb04.JPG', '2015-05-13 15:19:43', NULL),
	(159, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-c35f7.JPG', '2015-05-13 15:19:43', NULL),
	(160, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-3da47.JPG', '2015-05-13 15:19:44', NULL),
	(161, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-db16f.JPG', '2015-05-13 15:19:44', NULL),
	(162, 4, 'E', 'banco_fotos/2015/05/tipo-e-id-4-02c95.JPG', '2015-05-13 15:19:45', NULL),
	(163, 24, 'N', 'banco_fotos/2015/05/tipo-n-id-24-83790.jpg', '2015-05-21 09:30:41', NULL),
	(164, 30, 'N', 'banco_fotos/2015/05/tipo-n-id-30-9c230.JPG', '2015-05-28 21:08:50', NULL),
	(165, 30, 'N', 'banco_fotos/2015/05/tipo-n-id-30-c57d0.JPG', '2015-05-28 21:08:51', NULL),
	(166, 30, 'N', 'banco_fotos/2015/05/tipo-n-id-30-b6d27.JPG', '2015-05-28 21:08:51', NULL),
	(167, 30, 'N', 'banco_fotos/2015/05/tipo-n-id-30-ded98.JPG', '2015-05-28 21:08:51', NULL),
	(168, 30, 'N', 'banco_fotos/2015/05/tipo-n-id-30-e8584.JPG', '2015-05-28 21:08:52', NULL),
	(169, 30, 'N', 'banco_fotos/2015/05/tipo-n-id-30-58752.JPG', '2015-05-28 21:08:52', NULL),
	(170, 30, 'N', 'banco_fotos/2015/05/tipo-n-id-30-39f43.JPG', '2015-05-28 21:08:52', NULL),
	(171, 30, 'N', 'banco_fotos/2015/05/tipo-n-id-30-ea17e.JPG', '2015-05-28 21:08:53', NULL),
	(172, 30, 'N', 'banco_fotos/2015/05/tipo-n-id-30-e78aa.JPG', '2015-05-28 21:08:53', NULL),
	(173, 34, 'N', 'banco_fotos/2015/06/tipo-n-id-34-4ccc3.jpg', '2015-06-08 20:34:19', NULL),
	(174, 34, 'N', 'banco_fotos/2015/06/tipo-n-id-34-f810f.JPG', '2015-06-08 20:34:20', NULL),
	(175, 34, 'N', 'banco_fotos/2015/06/tipo-n-id-34-7af4e.JPG', '2015-06-08 20:34:20', NULL),
	(176, 34, 'N', 'banco_fotos/2015/06/tipo-n-id-34-68125.JPG', '2015-06-08 20:34:20', NULL),
	(177, 34, 'N', 'banco_fotos/2015/06/tipo-n-id-34-f65c5.JPG', '2015-06-08 20:34:21', NULL),
	(178, 34, 'N', 'banco_fotos/2015/06/tipo-n-id-34-f5eba.JPG', '2015-06-08 20:34:21', NULL),
	(179, 34, 'N', 'banco_fotos/2015/06/tipo-n-id-34-c9eeb.JPG', '2015-06-08 20:34:21', NULL),
	(180, 34, 'N', 'banco_fotos/2015/06/tipo-n-id-34-e885a.JPG', '2015-06-08 20:34:22', NULL),
	(181, 34, 'N', 'banco_fotos/2015/06/tipo-n-id-34-fc6d6.JPG', '2015-06-08 20:34:22', NULL),
	(182, 38, 'N', 'banco_fotos/2015/07/tipo-n-id-38-95ad6.jpg', '2015-07-16 16:16:56', NULL),
	(183, 43, 'N', 'banco_fotos/2015/07/tipo-n-id-43-b4a3a.jpg', '2015-07-22 13:50:24', NULL),
	(184, 45, 'N', 'banco_fotos/2015/08/tipo-n-id-45-70c87.JPG', '2015-08-12 08:37:13', NULL),
	(185, 45, 'N', 'banco_fotos/2015/08/tipo-n-id-45-96e87.JPG', '2015-08-12 08:37:13', NULL),
	(186, 45, 'N', 'banco_fotos/2015/08/tipo-n-id-45-2758e.JPG', '2015-08-12 08:37:14', NULL),
	(187, 45, 'N', 'banco_fotos/2015/08/tipo-n-id-45-ccc5c.JPG', '2015-08-12 08:37:14', NULL),
	(188, 47, 'N', 'banco_fotos/2015/08/tipo-n-id-47-52690.JPG', '2015-08-19 11:31:45', NULL),
	(189, 47, 'N', 'banco_fotos/2015/08/tipo-n-id-47-0ec14.JPG', '2015-08-19 11:31:45', NULL),
	(190, 47, 'N', 'banco_fotos/2015/08/tipo-n-id-47-47c9a.JPG', '2015-08-19 11:31:45', NULL),
	(219, 49, 'N', 'banco_fotos/2015/08/tipo-n-id-49-5fe8d.jpg', '2015-08-24 08:39:19', NULL),
	(220, 49, 'N', 'banco_fotos/2015/08/tipo-n-id-49-2acef.jpg', '2015-08-24 08:39:19', NULL),
	(221, 49, 'N', 'banco_fotos/2015/08/tipo-n-id-49-1b10b.jpg', '2015-08-24 08:39:20', NULL),
	(222, 56, 'N', 'banco_fotos/2015/09/tipo-n-id-56-6fed4.jpg', '2015-09-02 07:33:38', NULL),
	(223, 56, 'N', 'banco_fotos/2015/09/tipo-n-id-56-b5261.jpg', '2015-09-02 07:33:38', NULL),
	(224, 56, 'N', 'banco_fotos/2015/09/tipo-n-id-56-594e9.jpg', '2015-09-02 07:33:38', NULL),
	(225, 56, 'N', 'banco_fotos/2015/09/tipo-n-id-56-de1af.jpg', '2015-09-02 07:33:38', NULL),
	(226, 56, 'N', 'banco_fotos/2015/09/tipo-n-id-56-2c7df.jpg', '2015-09-02 07:33:38', NULL);
/*!40000 ALTER TABLE `banco_fotos` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.banners
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

-- Copiando dados para a tabela _acirm_2015.banners: ~5 rows (aproximadamente)
DELETE FROM `banners`;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id`, `titulo`, `banner`, `tipo`, `link`, `data_inicial`, `data_final`, `data_atual`, `qm_cadastr`, `qm_alterou`) VALUES
	(11, 'Centro de Treinamento', 'banners/2015/05/centro-de-treinamento.jpg', 1, 'http://www.acirmro.com.br/cursos', '2015-05-12', '2016-01-01', '2015-05-12 23:08:13', 1, NULL),
	(12, 'Agentes Locais de Inovação', 'banners/2015/07/sebrae.jpg', 2, 'http://www.sebrae.com.br/sites/PortalSebrae/Programas/Agentes-Locais-de-Inova%C3%A7%C3%A3o:-receba-o-Sebrae-na-sua-empresa', '2015-05-12', '2016-01-01', '2015-05-12 23:08:42', 1, 53),
	(14, 'Ano Novo Premiado', 'banners/2015/07/ano-novo-premiado.jpg', 4, 'http://www.acirmro.com.br/noticia/ano-novo-premiado-senhas-disponiveis-na-sede-da-acirm', '2015-05-12', '2016-01-01', '2015-05-12 23:09:32', 1, 53),
	(15, 'CURSO GESTÃO EMPRESARIAL E ESTRTURA ORGANIZACIONAL CRC RO', 'banners/2015/08/curso-gestao-empresarial-e-estrtura-organizacional-crc-ro.jpg', 5, 'http://www2.cfc.org.br/sisweb/sgewebsgi/view/user/login.aspx', '2015-08-24', '2016-01-01', '2015-05-12 23:09:51', 1, 53),
	(21, 'LIQUIDA ROLIM 2015', 'banners/2015/07/liquida-rolim-2015.jpg', 3, 'http://www.acirmro.com.br/noticia/conheca-as-empresas-participantes-do-liquida-rolim-2015', '2015-05-14', '2015-05-21', '2015-05-14 14:56:14', 53, 53);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.banners_tipo
CREATE TABLE IF NOT EXISTS `banners_tipo` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  `dimens_w` varchar(50) NOT NULL,
  `dimens_h` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tipos de banners';

-- Copiando dados para a tabela _acirm_2015.banners_tipo: ~5 rows (aproximadamente)
DELETE FROM `banners_tipo`;
/*!40000 ALTER TABLE `banners_tipo` DISABLE KEYS */;
INSERT INTO `banners_tipo` (`id_tipo`, `tipo`, `dimens_w`, `dimens_h`) VALUES
	(1, 'Banner Capa Grande', '418', '358'),
	(2, 'Banner Capa Pequeno', '418', '132'),
	(3, 'Banner Lateral 1', '228', '159'),
	(4, 'Banner Lateral 2', '228', '159'),
	(5, 'Banner Lateral 3', '228', '159');
/*!40000 ALTER TABLE `banners_tipo` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.conselhos
CREATE TABLE IF NOT EXISTS `conselhos` (
  `id_conselho` int(11) NOT NULL AUTO_INCREMENT,
  `conselho` varchar(100) NOT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_conselho`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Informação sobre os conselhos e diretoria da ACIRM';

-- Copiando dados para a tabela _acirm_2015.conselhos: ~5 rows (aproximadamente)
DELETE FROM `conselhos`;
/*!40000 ALTER TABLE `conselhos` DISABLE KEYS */;
INSERT INTO `conselhos` (`id_conselho`, `conselho`, `qm_cadastr`, `qm_alterou`) VALUES
	(1, 'Diretoria Executiva Biênio 2015/2017', 1, 53),
	(2, 'Conselho Deliberativo', 53, NULL),
	(3, 'Conselho Fiscal', 53, NULL),
	(4, 'Conselho Fiscal (suplente)', 53, NULL),
	(5, 'Equipe', 1, 53);
/*!40000 ALTER TABLE `conselhos` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_name` varchar(255) NOT NULL,
  `curso` varchar(200) NOT NULL,
  `link` varchar(250) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='Armazena informações sobre os cursos';

-- Copiando dados para a tabela _acirm_2015.cursos: ~27 rows (aproximadamente)
DELETE FROM `cursos`;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`id`, `url_name`, `curso`, `link`, `foto`, `descricao`) VALUES
	(18, 'aprender-a-empreender', 'Aprender a Empreender', 'https://www.ead.sebrae.com.br/cursos/aprender-a-empreender', 'cursos/2015/05/mq1.jpg', '<p><strong>Objetivo</strong><br />\r\nFornecer conhecimentos sobre o perfil empreendedor por meio da transmiss&atilde;o de conceitos sobre mercado, finan&ccedil;as e empreendedorismo.</p>\r\n\r\n<p><strong>Detalhamento</strong><br />\r\nDesenvolvimento de atitudes que comp&otilde;em o perfil empreendedor para quem est&aacute; planejando abrir um neg&oacute;cio ou quem j&aacute; possui uma micro ou pequena empresa.<br />\r\nCria&ccedil;&atilde;o de novos empreendimentos vi&aacute;veis e sustent&aacute;veis.<br />\r\n<br />\r\n<strong>P&uacute;blico-alvo</strong><br />\r\nPara quem deseja iniciar um neg&oacute;cio, adquirir no&ccedil;&otilde;es b&aacute;sicas de como gerir um empreendimento e melhorar a sua empresa.</p>\r\n\r\n<p><strong>Dura&ccedil;&atilde;o e carga hor&aacute;ria</strong><br />\r\n30 dias / 16 horas.</p>\r\n\r\n<p><strong>Inscri&ccedil;&otilde;es</strong><br />\r\nPara quem j&aacute; &eacute; cadastrado(a) no portal EAD Sebrae, basta clicar em &quot;Quero me Matricular&quot;. Se ainda n&atilde;o tiver se identificado no Portal, clique em &ldquo;J&aacute; sou aluno&rdquo; e informe o seu CPF e a sua senha. Assim que for redirecionado ao &ldquo;Meu Espa&ccedil;o&rdquo;, clique em &ldquo;Matricular&rdquo; para confirmar sua matr&iacute;cula. Se j&aacute; tiver se identificado, a matr&iacute;cula &eacute; realizada imediatamente. Voc&ecirc; receber&aacute; um e-mail de boas-vindas e poder&aacute; iniciar o curso.</p>\r\n\r\n<p>Para quem ainda n&atilde;o possui cadastro, &eacute; necess&aacute;rio acessar a op&ccedil;&atilde;o &quot;Quero ser Aluno&quot;, informar o CPF e o endere&ccedil;o eletr&ocirc;nico, clicar em &quot;Cadastrar&quot; e seguir as instru&ccedil;&otilde;es que ser&atilde;o enviadas para o e-mail fornecido.</p>\r\n\r\n<p>&Eacute; permitido matricular-se em um &uacute;nico curso de cada vez. Desse modo, uma nova matr&iacute;cula somente poder&aacute; ser feita ap&oacute;s a conclus&atilde;o do curso em andamento.</p>\r\n'),
	(19, 'iniciando-um-pequeno-e-grande-negocio', 'Iniciando um Pequeno e Grande Negócio', 'https://www.ead.sebrae.com.br/cursos/iniciando-um-pequeno-e-grande-negocio', 'cursos/2015/05/0-40281946-00.jpg', '<p><strong>Objetivo</strong><br />\r\nTransmitir princ&iacute;pios, fundamentos e pr&aacute;ticas de empreendedorismo &uacute;teis para a abertura de pequenos neg&oacute;cios.</p>\r\n\r\n<p><strong>Detalhamento</strong><br />\r\nConhecimentos sobre o que e como fazer para iniciar um novo neg&oacute;cio.<br />\r\nCompreens&atilde;o do neg&oacute;cio como um processo.<br />\r\nNo&ccedil;&otilde;es de produtos e servi&ccedil;os com a qualidade exigida pelo mercado.<br />\r\nDicas sobre comportamentos empreendedores capazes de impulsionar o empreendimento rumo ao sucesso.<br />\r\nT&eacute;cnicas para a elabora&ccedil;&atilde;o de pesquisas de mercado, que possibilitar&atilde;o maior conhecimento dos clientes, fornecedores e concorrentes, e orienta&ccedil;&otilde;es para a constru&ccedil;&atilde;o de um plano de neg&oacute;cio para os pequenos empreendimentos.<br />\r\n<br />\r\n<strong>P&uacute;blico-alvo</strong><br />\r\nPara quem deseja abrir um neg&oacute;cio e obter no&ccedil;&otilde;es b&aacute;sicas de como gerir um empreendimento de pequeno porte.</p>\r\n\r\n<p><strong>Dura&ccedil;&atilde;o e carga hor&aacute;ria</strong><br />\r\n30 dias / 30 horas.</p>\r\n\r\n<p><strong>Inscri&ccedil;&otilde;es</strong><br />\r\nPara quem j&aacute; &eacute; cadastrado(a) no portal EAD Sebrae, basta clicar em &quot;Quero me Matricular&quot;. Se ainda n&atilde;o tiver se identificado no Portal, clique em &ldquo;J&aacute; sou aluno&rdquo; e informe o seu CPF e a sua senha. Assim que for redirecionado ao &ldquo;Meu Espa&ccedil;o&rdquo;, clique em &ldquo;Matricular&rdquo; para confirmar sua matr&iacute;cula. Se j&aacute; tiver se identificado, a matr&iacute;cula &eacute; realizada imediatamente. Voc&ecirc; receber&aacute; um e-mail de boas-vindas e poder&aacute; iniciar o curso.</p>\r\n\r\n<p>Para quem ainda n&atilde;o possui cadastro, &eacute; necess&aacute;rio acessar a op&ccedil;&atilde;o &quot;Quero ser Aluno&quot;, informar o CPF e o endere&ccedil;o eletr&ocirc;nico, clicar em &quot;Cadastrar&quot; e seguir as instru&ccedil;&otilde;es que ser&atilde;o enviadas para o e-mail fornecido.</p>\r\n\r\n<p>&Eacute; permitido matricular-se em um &uacute;nico curso de cada vez. Desse modo, uma nova matr&iacute;cula somente poder&aacute; ser feita ap&oacute;s a conclus&atilde;o do curso em andamento.</p>\r\n'),
	(20, 'compras-governamentais', 'Compras Governamentais', 'https://www.ead.sebrae.com.br/cursos/compras-governamentais', 'cursos/2015/05/compras.jpg', '<p><strong>Objetivo</strong><br />\r\nTransmitir informa&ccedil;&otilde;es sobre o fornecimento de produtos e servi&ccedil;os para a administra&ccedil;&atilde;o p&uacute;blica.</p>\r\n\r\n<p><strong>Detalhamento</strong><br />\r\nAn&aacute;lise de risco antes de participar das licita&ccedil;&otilde;es.<br />\r\nAvalia&ccedil;&atilde;o do potencial e das condi&ccedil;&otilde;es de as empresas se tornarem fornecedoras da administra&ccedil;&atilde;o p&uacute;blica.<br />\r\n<br />\r\n<strong>P&uacute;blico-alvo</strong><br />\r\nEmpreendedores(as), empres&aacute;rios(as) de micro e pequenos neg&oacute;cios, representantes comerciais, contadores(as), dirigentes de entidades de classe, gestores(as) de cooperativas e seus(suas) associados(as) e profissionais interessados em fornecer produtos e servi&ccedil;os para a administra&ccedil;&atilde;o p&uacute;blica nos n&iacute;veis federal, estadual, distrital ou municipal.</p>\r\n\r\n<p><strong>Dura&ccedil;&atilde;o e carga hor&aacute;ria</strong><br />\r\n30 dias / 15 horas.</p>\r\n\r\n<p>Inscri&ccedil;&otilde;es<br />\r\nPara quem j&aacute; &eacute; cadastrado(a) no portal EAD Sebrae, basta clicar em &quot;Quero me Matricular&quot;. Se ainda n&atilde;o tiver se identificado no Portal, clique em &ldquo;J&aacute; sou aluno&rdquo; e informe o seu CPF e a sua senha. Assim que for redirecionado ao &ldquo;Meu Espa&ccedil;o&rdquo;, clique em &ldquo;Matricular&rdquo; para confirmar sua matr&iacute;cula. Se j&aacute; tiver se identificado, a matr&iacute;cula &eacute; realizada imediatamente. Voc&ecirc; receber&aacute; um e-mail de boas-vindas e poder&aacute; iniciar o curso.</p>\r\n\r\n<p>Para quem ainda n&atilde;o possui cadastro, &eacute; necess&aacute;rio acessar a op&ccedil;&atilde;o &quot;Quero ser Aluno&quot;, informar o CPF e o endere&ccedil;o eletr&ocirc;nico, clicar em &quot;Cadastrar&quot; e seguir as instru&ccedil;&otilde;es que ser&atilde;o enviadas para o e-mail fornecido.</p>\r\n\r\n<p>&Eacute; permitido matricular-se em um &uacute;nico curso de cada vez. Desse modo, uma nova matr&iacute;cula somente poder&aacute; ser feita ap&oacute;s a conclus&atilde;o do curso em andamento.</p>\r\n'),
	(21, 'microempreendedor-individual', 'Microempreendedor Individual', 'https://www.ead.sebrae.com.br/cursos/microempreendedor-individual', 'cursos/2015/05/imagem-01.png', '<p><strong>Objetivo</strong><br />\r\nConscientizar o trabalhador informal sobre a import&acirc;ncia de se legalizar e os benef&iacute;cios da Lei Complementar n&ordm; 128, de 19 de dezembro de 2008.</p>\r\n\r\n<p><strong>Detalhamento</strong><br />\r\nVantagens de os trabalhadores informais se legalizarem como microempreendedor individual (MEI).<br />\r\nInforma&ccedil;&otilde;es sobre o processo de legaliza&ccedil;&atilde;o, locais de funcionamento, impostos a serem pagos e benef&iacute;cios da aposentadoria e do aux&iacute;lio doen&ccedil;a.<br />\r\nOutros aspectos da Lei Complementar n&ordm; 128, como a contrata&ccedil;&atilde;o de empregados, os procedimentos para o cancelamento do cadastro do MEI e a passagem do MEI para a microempresa.<br />\r\n<br />\r\n<strong>P&uacute;blico-alvo</strong><br />\r\nPara todas as pessoas que desenvolvem atividades informais.</p>\r\n\r\n<p><strong>Dura&ccedil;&atilde;o e carga hor&aacute;ria</strong><br />\r\n10 dias / 5 horas.</p>\r\n\r\n<p><strong>Inscri&ccedil;&otilde;es</strong><br />\r\nPara quem j&aacute; &eacute; cadastrado(a) no portal EAD Sebrae, basta clicar em &quot;Quero me Matricular&quot;. Se ainda n&atilde;o tiver se identificado no Portal, clique em &ldquo;J&aacute; sou aluno&rdquo; e informe o seu CPF e a sua senha. Assim que for redirecionado ao &ldquo;Meu Espa&ccedil;o&rdquo;, clique em &ldquo;Matricular&rdquo; para confirmar sua matr&iacute;cula. Se j&aacute; tiver se identificado, a matr&iacute;cula &eacute; realizada imediatamente. Voc&ecirc; receber&aacute; um e-mail de boas-vindas e poder&aacute; iniciar o curso.</p>\r\n\r\n<p>Para quem ainda n&atilde;o possui cadastro, &eacute; necess&aacute;rio acessar a op&ccedil;&atilde;o &quot;Quero ser Aluno&quot;, informar o CPF e o endere&ccedil;o eletr&ocirc;nico, clicar em &quot;Cadastrar&quot; e seguir as instru&ccedil;&otilde;es que ser&atilde;o enviadas para o e-mail fornecido.</p>\r\n\r\n<p>&Eacute; permitido matricular-se em um &uacute;nico curso de cada vez. Desse modo, uma nova matr&iacute;cula somente poder&aacute; ser feita ap&oacute;s a conclus&atilde;o do curso em andamento.</p>\r\n'),
	(22, 'responsabilidade-social', 'Responsabilidade Social', 'https://www.ead.sebrae.com.br/cursos/responsabilidade-social', 'cursos/2015/05/responsabilidade-social-nova-logo-final.jpg', '<p><strong>Objetivo</strong><br />\r\nEste curso tem como objetivo aprimorar a gest&atilde;o dos pequenos neg&oacute;cios a partir da ades&atilde;o e participa&ccedil;&atilde;o da empresa no Destaque de Boas Pr&aacute;ticas de Responsabilidade Social, do Pr&ecirc;mio MPE Brasil.</p>\r\n\r\n<p><strong>P&uacute;blico-alvo</strong><br />\r\nMicro e Pequenas Empresas.</p>\r\n\r\n<p><strong>Dura&ccedil;&atilde;o e carga hor&aacute;ria</strong><br />\r\n30 Dias / 24 horas.</p>\r\n\r\n<p><strong>Inscri&ccedil;&otilde;es</strong><br />\r\nPara quem j&aacute; &eacute; cadastrado(a) no portal EAD Sebrae, basta clicar em &quot;Quero me Matricular&quot;. Se ainda n&atilde;o tiver se identificado no Portal, clique em &ldquo;J&aacute; sou aluno&rdquo; e informe o seu CPF e a sua senha. Assim que for redirecionado ao &ldquo;Meu Espa&ccedil;o&rdquo;, clique em &ldquo;Matricular&rdquo; para confirmar sua matr&iacute;cula. Se j&aacute; tiver se identificado, a matr&iacute;cula &eacute; realizada imediatamente. Voc&ecirc; receber&aacute; um e-mail de boas-vindas e poder&aacute; iniciar o curso.</p>\r\n\r\n<p>Para quem ainda n&atilde;o possui cadastro, &eacute; necess&aacute;rio acessar a op&ccedil;&atilde;o &quot;Quero ser Aluno&quot;, informar o CPF e o endere&ccedil;o eletr&ocirc;nico, clicar em &quot;Cadastrar&quot; e seguir as instru&ccedil;&otilde;es que ser&atilde;o enviadas para o e-mail fornecido.</p>\r\n\r\n<p>&Eacute; permitido matricular-se em um &uacute;nico curso de cada vez. Desse modo, uma nova matr&iacute;cula somente poder&aacute; ser feita ap&oacute;s a conclus&atilde;o do curso em andamento.</p>\r\n'),
	(23, 'gestao-da-qualidade-visao-estrategica', 'Gestão da Qualidade: Visão Estratégica', 'https://www.ead.sebrae.com.br/cursos/gestao-da-qualidade-visao-estrategica', 'cursos/2015/05/foto1.jpg', '<p><strong>Objetivo</strong><br />\r\nCriar condi&ccedil;&otilde;es para ampliar a qualidade, desenvolver o pensamento estrat&eacute;gico, definir objetivos claros e precisos e adotar indicadores de desempenho para mensurar os resultados dos pequenos neg&oacute;cios.</p>\r\n\r\n<p><strong>Detalhamento</strong><br />\r\nT&eacute;cnicas para identificar pontos fracos de uma empresa.<br />\r\nProje&ccedil;&atilde;o dos resultados futuros do neg&oacute;cio.<br />\r\nA&ccedil;&otilde;es para aumentar competitividade.<br />\r\nMelhoria da qualidade dos produtos e servi&ccedil;os.<br />\r\nPr&aacute;ticas para garantir sustentabilidade dos pequenos empreendimentos.<br />\r\n<br />\r\n<strong>P&uacute;blico-alvo</strong><br />\r\nEmpres&aacute;rios(as) e gerentes de micro e pequenas empresas dos setores da ind&uacute;stria, com&eacute;rcio e servi&ccedil;os que buscam desenvolver a qualidade de seus neg&oacute;cios.</p>\r\n\r\n<p><strong>Dura&ccedil;&atilde;o e carga hor&aacute;ria</strong><br />\r\n30 dias / 20 horas.</p>\r\n\r\n<p><strong>Inscri&ccedil;&otilde;es</strong><br />\r\nPara quem j&aacute; &eacute; cadastrado(a) no portal EAD Sebrae, basta clicar em &quot;Quero me Matricular&quot;. Se ainda n&atilde;o tiver se identificado no Portal, clique em &ldquo;J&aacute; sou aluno&rdquo; e informe o seu CPF e a sua senha. Assim que for redirecionado ao &ldquo;Meu Espa&ccedil;o&rdquo;, clique em &ldquo;Matricular&rdquo; para confirmar sua matr&iacute;cula. Se j&aacute; tiver se identificado, a matr&iacute;cula &eacute; realizada imediatamente. Voc&ecirc; receber&aacute; um e-mail de boas-vindas e poder&aacute; iniciar o curso.</p>\r\n\r\n<p>Para quem ainda n&atilde;o possui cadastro, &eacute; necess&aacute;rio acessar a op&ccedil;&atilde;o &quot;Quero ser Aluno&quot;, informar o CPF e o endere&ccedil;o eletr&ocirc;nico, clicar em &quot;Cadastrar&quot; e seguir as instru&ccedil;&otilde;es que ser&atilde;o enviadas para o e-mail fornecido.</p>\r\n\r\n<p>&Eacute; permitido matricular-se em um &uacute;nico curso de cada vez. Desse modo, uma nova matr&iacute;cula somente poder&aacute; ser feita ap&oacute;s a conclus&atilde;o do curso em andamento.</p>\r\n'),
	(24, 'd-olho-na-qualidade-5ss-para-os-pequenos-negocios', 'D-Olho na Qualidade: 5Ss para os pequenos negócios', 'https://www.ead.sebrae.com.br/cursos/d-olho-na-qualidade', 'cursos/2015/05/conexao-entre-manufatura-5s-e-enxuta.jpg', '<p><strong>Objetivo</strong><br />\r\nHabilitar o(a) aluno(a) para implantar um m&eacute;todo de qualidade baseado em mudan&ccedil;as de h&aacute;bitos, desenvolvimento das pessoas e melhoria do ambiente de trabalho na sua empresa.</p>\r\n\r\n<p><strong>Detalhamento</strong><br />\r\nPotencializa&ccedil;&atilde;o de resultados e elimina&ccedil;&atilde;o de desperd&iacute;cios nos neg&oacute;cios.<br />\r\nNo&ccedil;&otilde;es sobre cinco elementos do programa D-Olho na qualidade: descarte, organiza&ccedil;&atilde;o, limpeza, higiene e ordem mantida.<br />\r\nMudan&ccedil;a da cultura empresarial.<br />\r\n<br />\r\n<strong>P&uacute;blico-alvo</strong><br />\r\nEmpres&aacute;rios e gerentes de pequenos neg&oacute;cios com escolaridade acima do ensino m&eacute;dio incompleto, que tenham interesse de repensar a organiza&ccedil;&atilde;o e aplicar o m&eacute;todo D-Olho na qualidade em suas empresas.</p>\r\n\r\n<p><strong>Dura&ccedil;&atilde;o e carga hor&aacute;ria</strong><br />\r\n30 dias / 16 horas.</p>\r\n\r\n<p><strong>Inscri&ccedil;&otilde;es</strong><br />\r\nPara quem j&aacute; &eacute; cadastrado(a) no portal EAD Sebrae, basta clicar em &quot;Quero me Matricular&quot;. Se ainda n&atilde;o tiver se identificado no Portal, clique em &ldquo;J&aacute; sou aluno&rdquo; e informe o seu CPF e a sua senha. Assim que for redirecionado ao &ldquo;Meu Espa&ccedil;o&rdquo;, clique em &ldquo;Matricular&rdquo; para confirmar sua matr&iacute;cula. Se j&aacute; tiver se identificado, a matr&iacute;cula &eacute; realizada imediatamente. Voc&ecirc; receber&aacute; um e-mail de boas-vindas e poder&aacute; iniciar o curso.</p>\r\n\r\n<p>Para quem ainda n&atilde;o possui cadastro, &eacute; necess&aacute;rio acessar a op&ccedil;&atilde;o &quot;Quero ser Aluno&quot;, informar o CPF e o endere&ccedil;o eletr&ocirc;nico, clicar em &quot;Cadastrar&quot; e seguir as instru&ccedil;&otilde;es que ser&atilde;o enviadas para o e-mail fornecido.</p>\r\n\r\n<p>&Eacute; permitido matricular-se em um &uacute;nico curso de cada vez. Desse modo, uma nova matr&iacute;cula somente poder&aacute; ser feita ap&oacute;s a conclus&atilde;o do curso em andamento.</p>\r\n'),
	(25, 'argumentacao-juridica', 'Argumentação Jurídica', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Argumentacao-Juridica/OCWAJUEAD-01slsh2011-1/OCWAJUEAD_00/SEM_TURNO/372', 'cursos/2015/05/hqdefault.jpg', '<p><span style="line-height:1.6em">Em Argumenta&ccedil;&atilde;o Jur&iacute;dica, realizaremos uma reflex&atilde;o sobre o lugar da argumenta&ccedil;&atilde;o jur&iacute;dica, com especial enfoque nas peculiaridades brasileiras. Dessa forma, buscaremos estabelecer a din&acirc;mica, os elementos caracter&iacute;sticos e as principais estrat&eacute;gias de operacionaliza&ccedil;&atilde;o da argumenta&ccedil;&atilde;o jur&iacute;dica.&nbsp;</span></p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 5 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Felipe Dutra Asensi</p>\r\n\r\n<p>Felipe Dutra Asensi &eacute; P&oacute;s-Doutorado em Direito pela Universidade do Estado do Rio de Janeiro - FD/UERJ. Doutor em Sociologia pelo Instituto de Estudos Sociais e Pol&iacute;ticos - IESP/UERJ. Mestre em Sociologia pelo Instituto Universit&aacute;rio de Pesquisas do Rio de Janeiro - IUPERJ. Advogado formado pela Universidade Federal Fluminense - UFF. Cientista Social formado pela Universidade do Estado do Rio de Janeiro - UERJ. Aperfei&ccedil;oamento em Derechos Fundamentales y Globalizaci&oacute;n pela Universidad Complutense de Madrid - UCM. Membro Efetivo da Comiss&atilde;o de Direito Constitucional do Instituto dos Advogados Brasileiros - IAB. Membro do Comit&ecirc; Nacional da Biblioteca Virtual de Sa&uacute;de - BVS-Integralidade. Professor e Coordenador de Publica&ccedil;&otilde;es da Escola de Direito da Funda&ccedil;&atilde;o Getulio Vargas - FGV Direito-Rio.</p>\r\n'),
	(28, 'aspectos-gerais-da-arbitragem', 'Aspectos gerais da arbitragem', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Aspectos-Gerais-Da-Arbitragem/OCWAGAEAD-01slsh2011-1/OCWAGAEAD_00/SEM_TURNO/373', 'cursos/2015/05/apito.jpg', '<p>Em Aspectos gerais da arbitragem, apresentaremos as principais quest&otilde;es relativas ao processo de resolu&ccedil;&atilde;o de disputas por meio da arbitragem. Abordaremos seu conceito, suas caracter&iacute;sticas fundamentais, e as vantagens e desvantagens que fazem dessa mat&eacute;ria um tema t&atilde;o debatido e dos mais controvertidos em Direito.&nbsp;</p>\r\n\r\n<p><br />\r\nPr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 5 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Coordenador da p&oacute;s-gradua&ccedil;&atilde;o em Direito da FGV Direito Rio, &eacute; doutorando em Pol&iacute;ticas P&uacute;blicas, Estrat&eacute;gias e Desenvolvimento pelo Instituto de Economia da UFRJ. LL.M em International Business Law pela London School of Economics, &eacute; mestre em Regula&ccedil;&atilde;o e Concorr&ecirc;ncia pela Universidade Candido Mendes. Formado pela Escola da Magistratura do Estado do Rio de Janeiro, &eacute;, ainda, bacharel em Direito, pela UFRJ, e em Economia, pela UCAM. &Eacute;, tamb&eacute;m, membro do Conselho Diretor do Mediare - Di&aacute;logos e Processos Decis&oacute;rios -; membro do Corpo Permanente de Conciliadores e &Aacute;rbitros da C&acirc;mara FGV de Concilia&ccedil;&atilde;o e Arbitragem; membro do The Young International Arbitration Group, da The London Court of International Arbitration; membro da ICDR Young &amp; International Group, do International Centre for Dispute Resolution; membro da International Society for Ecological Economics; membro da Sociedade Brasileira de Economia Ecol&oacute;gica; membro efetivo da Comiss&atilde;o de Media&ccedil;&atilde;o da OAB-RJ; membro da Associa&ccedil;&atilde;o Brasileira de Jovens Advogados e presidente da LSE Brazilian Alumni Association.</p>\r\n\r\n<p><br />\r\nRodrigo Vianna &eacute; Vice-diretor Executivo e Professor da P&oacute;s-gradua&ccedil;&atilde;o em Direito da FGV Direito Rio. Concluiu o LL.M em Alternative Dispute Resolution pela Kingston University London. Advogado e bacharel em Direito pela PUC-Rio, &eacute; Diretor do Mediare - Di&aacute;logos e Processos Decis&oacute;rios. &Eacute; consultor da FGV Projetos e membro do Conselho Editorial da FGV Direito Rio. Al&eacute;m disso, &eacute; membro do The Young International Arbitration Group - YIAG -, da The London Court of International Arbitration - LCIA -, da Young Chamber Britcham e membro efetivo da Comiss&atilde;o de Media&ccedil;&atilde;o da OAB-RJ.</p>\r\n'),
	(29, 'balanced-scorecard', 'Balanced Scorecard', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Balanced-Scorecard/OCWBSCEAD-01slsh2012-1/OCWBSCEAD_00/SEM_TURNO/658', 'cursos/2015/05/bsc.jpg', '<p>O curso apresenta uma retrospectiva hist&oacute;rica da evolu&ccedil;&atilde;o dos processos de medida da qualidade. H&aacute; uma reflex&atilde;o tamb&eacute;m sobre o novo perfil de funcion&aacute;rio que se faz necess&aacute;rio para gerenciar mudan&ccedil;as.</p>\r\n\r\n<p>Al&eacute;m disso, trata das rela&ccedil;&otilde;es de equil&iacute;brio, e de causa e efeito das quatro perspectivas do Balanced Scorecard. Fecharemos o curso, refletindo sobre o papel dos indicadores de desempenho como sensores do l&iacute;der da organiza&ccedil;&atilde;o.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 5 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Fernando Antonio Ribeiro Serra</p>\r\n\r\n<p>Doutorado em Engenharia Metal&uacute;rgica pela Pontif&iacute;cia Universidade Cat&oacute;lica do Rio de Janeiro (2003), Mestrado em Materiais e Metalurgia pela Pontif&iacute;cia Universidade Cat&oacute;lica do Rio de Janeiro (1997), MBA em Management para Gerentes e Diretores pela FGV/RJ (1997) e Gradua&ccedil;&atilde;o em Engenharia Metal&uacute;rgica pela Pontif&iacute;cia Universidade Cat&oacute;lica do Rio de Janeiro (1980). Atualmente &eacute; professor da UNISUL - Universidade do Sul de Santa Catarina, onde dirige a Unisul Business School e &eacute; professor do Mestrado em Admnistra&ccedil;&atilde;o. &Eacute; professor do programa FGV Management. Sua experi&ecirc;ncia como docente inclui a coordena&ccedil;&atilde;o do Mestrado em Administra&ccedil;&atilde;o da UNISUL e atua&ccedil;&atilde;o no IBMEC/RJ, IAG PUC-Rio, Candido Mendes - Ipanema e UFRRJ. Sua experi&ecirc;nica profissional inclui cargos de dire&ccedil;&atilde;o e consultoria, destacando a de Diretor das Fundi&ccedil;&otilde;es do Rossio de Abrantes (Abrantes, Portugal) e de Gerente da Metal&uacute;rgica Magotteaux (Rio de Janeiro, Brasil). Tem atuado como conselheiro de empresas. Sua &aacute;rea de pesquisa &eacute; Estrat&eacute;gia, Inova&ccedil;&atilde;o e Empreendedorismo na abordagem da RBV - Resouce-Based View. &Eacute; pesquisador com bolsa de produtividade do CNPq a partir de 2010.<br />\r\nMARIA CANDIDA SOTELINO TORRES</p>\r\n\r\n<p>Maria Candida Torres &eacute; mestre em pesquisa operacional pelo Instituto Militar de Engenharia (IME). Possui MBA com reconhecimento pela Universidade de Tampa (Fl&oacute;rida, Estados Unidos). Engenheira industrial pelo Centro Federal de Educa&ccedil;&atilde;o Tecnol&oacute;gica (Cefet). &Eacute; autora dos livros Estrat&eacute;gia de empresas, pela Editora FGV, e Administra&ccedil;&atilde;o estrat&eacute;gica das organiza&ccedil;&otilde;es p&uacute;blicas, pela editora Conceito Editorial; coautora dos livros Administra&ccedil;&atilde;o estrat&eacute;gica: conceitos, roteiro pr&aacute;tico e casos, pela editora Reichmann &amp; Affonso Editores, e Administra&ccedil;&atilde;o estrat&eacute;gica: conceitos, roteiro pr&aacute;tico e casos, pela editora Insular, juntamente com Alexandre Pavan Torres; e Gest&atilde;o estrat&eacute;gica, pela editora Lidel em Portugal. &Eacute; consultora de empresas nas &aacute;reas de gest&atilde;o empresarial e de pessoas, em empresas de pequeno, m&eacute;dio e grande porte, e professora dos cursos de p&oacute;s-gradua&ccedil;&atilde;o do Programa FGV Management da Funda&ccedil;&atilde;o Getulio Vargas e do Programa MBA da Universidade Federal do Rio de Janeiro (UFRJ).<br />\r\nAlexandre Pavan Torres</p>\r\n\r\n<p>Alexandre Pavan Torres &eacute; doutor em intelig&ecirc;ncia organizacional pela Universidade Federal de Santa Catarina (UFSC), mestre em planejamento de transportes pela Universidade Federal do Rio de Janeiro (Coppe/UFRJ), engenheiro industrial pelo Cefet. &Eacute; coautor dos livros Administra&ccedil;&atilde;o estrat&eacute;gica: conceitos, roteiro pr&aacute;tico e casos, pela editora Reichmann &amp; Affonso Editores, e Administra&ccedil;&atilde;o estrat&eacute;gica: conceitos, roteiro pr&aacute;tico e casos, pela editora Insular, juntamente com Maria Candida Torres. &Eacute; ainda coautor do curso a dist&acirc;ncia Controladoria pelo FGV Online, juntamente com Betovem Coura, e professor em cursos de p&oacute;s-gradua&ccedil;&atilde;o do Programa FGV Management da Funda&ccedil;&atilde;o Getulio Vargas.</p>\r\n'),
	(30, 'ciencia-e-tecnologia', 'Ciência e Tecnologia', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Ciencia-E-Tecnologia/OCWCTEAD-01slsh2012-1/OCWCTEAD_00/SEM_TURNO/661', 'cursos/2015/05/cti.jpg', '<p>O curso de Ci&ecirc;ncia e Tecnologia trata da reflex&atilde;o sobre o fazer ci&ecirc;ncia. Tenta, dessa forma, ver tantos os fatores que a determinam como os caminhos por ela percorridos at&eacute; nossos dias.&nbsp;</p>\r\n\r\n<p>O objetivo do curso &eacute; analisar quest&otilde;es relativas &agrave; produ&ccedil;&atilde;o do conhecimento e as influ&ecirc;ncias positivas e negativas da ci&ecirc;ncia e da tecnologia ao longo da hist&oacute;ria da humanidade.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 15 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Elisabeth Santos da Silveira</p>\r\n\r\n<p>Elisabeth Silveira &eacute; a Coordenadora Pedag&oacute;gica do FGV Online. Doutora em Ling&uuml;&iacute;stica e Mestre em L&iacute;ngua Portuguesa, antes de ingressar nos quadros da FGV, aposentou-se como Professora Titular da &aacute;rea de ensino-aprendizagem da Faculdade de Educa&ccedil;&atilde;o da Universidade do Estado do Rio de Janeiro.</p>\r\n\r\n<p>Na UERJ, al&eacute;m de Pr&aacute;tica de Ensino de L&iacute;ngua Portuguesa, ministrou diferentes disciplinas relacionadas &agrave; linguagem e ao ensino nos cursos de Licenciatura em Letras e no Mestrado em Educa&ccedil;&atilde;o. Como pesquisadora do CNPq, desenvolveu pesquisas na &aacute;rea de estrutura&ccedil;&atilde;o de informa&ccedil;&otilde;es no discurso, produzindo e divulgando seus trabalhos em diferentes congressos, e seus artigos em revistas cient&iacute;ficas.</p>\r\n'),
	(31, 'como-fazer-investimentos-avancado', 'Como fazer investimentos - avançado', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Como-Fazer-Investimentos---Avancado/OCWINVAEAD-01slsh2011-1/OCWINVAEAD_00/SEM_TURNO/2279', 'cursos/2015/05/bom-nega³cio.jpg', '<p>O curso tem como objetivo aprofundar seus conhecimentos para a realiza&ccedil;&atilde;o de investimentos. Ao final do curso, voc&ecirc; dever&aacute; saber responder o que &eacute; uma carteira bem diversifica de a&ccedil;&otilde;es, qual a import&acirc;ncia da correla&ccedil;&atilde;o entre ativos, o que &eacute; risco sistem&aacute;tico, se vale &agrave; pena investir em ouro, o que &eacute; investimento ex&oacute;tico e como investir em derivativos.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 8 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>FABIO GALLO GARCIA</p>\r\n\r\n<p>Fabio Gallo Garcia &eacute; Doutor em Finan&ccedil;as pela EAESP-FGV e Doutorando em Filosofia pela PUC-SP, institui&ccedil;&otilde;es em que atua como professor de Finan&ccedil;as. Dedica-se ao estudo das finan&ccedil;as corporativas e finan&ccedil;as comportamentais, trabalhando com pesquisa na &aacute;rea da Teoria de Sinaliza&ccedil;&atilde;o, em que explora a Assimetria de Informa&ccedil;&otilde;es no Mercado de Capitais. Tamb&eacute;m desenvolve temas em Banking, Administra&ccedil;&atilde;o de Custos e Finan&ccedil;as Pessoais. Tem realizado trabalhos de valuation, consultoria e treinamento para empresas como Emae, Banco Santander, Citibank, Banco Real e Banco Alfa. Atualmente, &eacute; tamb&eacute;m s&oacute;cio-diretor da Sinaliza&ccedil;&atilde;o e Arte, Comunica&ccedil;&atilde;o Visual - All Signs- e colunista do jornal O Estado de S&atilde;o Paulo, tendo como principais contribui&ccedil;&otilde;es na &aacute;rea de Finan&ccedil;as suas coautorias da s&eacute;rie de Finan&ccedil;as Pessoais da Publifolha e do livro Securitiza&ccedil;&atilde;o no Brasil.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dados estat&iacute;sticos mostram que, apesar de a maior parte dos brasileiros se declarar cuidadosa com o dinheiro, apenas uma minoria possui aplica&ccedil;&otilde;es financeiras. Cerca de 90% dos lares n&atilde;o t&ecirc;m controle de or&ccedil;amento e 3 em cada 10 reais que ganham v&atilde;o direto para o pagamento de d&iacute;vidas de consumo*. O resultado disso &eacute; que n&atilde;o sobra dinheiro pra mais nada, nem produtos financeiros, nem educa&ccedil;&atilde;o. Quando sobra, as pessoas n&atilde;o sabem onde investir. Uma pesquisa do Ibope descobriu que s&oacute; 2% da popula&ccedil;&atilde;o declaram ter um plano de previd&ecirc;ncia, por exemplo.</p>\r\n\r\n<p>H&aacute; 20 anos n&oacute;s da Icatu Seguros desenvolvemos solu&ccedil;&otilde;es para ajudar pessoas em busca de seguran&ccedil;a e realiza&ccedil;&atilde;o financeira em cada fase da vida. Por isso, acreditamos que &eacute; nosso papel, como seguradora especialista, incentivar a reflex&atilde;o sobre como investir de maneira inteligente. Os cinco programas, sobre or&ccedil;amento, investimento, aposentadoria e consumo fazem parte de um plano integrado sobre educa&ccedil;&atilde;o financeira chamado Plataforma do Conhecimento. Conte com nossas dicas e ferramentas para realizar seu planejamento financeiro e n&atilde;o perca mais tempo. &Eacute; o seu futuro, e ele come&ccedil;a hoje.</p>\r\n\r\n<p>Icatu Seguros. Especialista no que tem valor para voc&ecirc;.</p>\r\n\r\n<p>* Dados de pesquisa encomendada pela Revista Exame em parceria com o Instituto Ipsos em 2011.</p>\r\n'),
	(32, 'como-gastar-conscientemente', 'Como Gastar Conscientemente', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Como-Gastar-Conscientemente-/OCWCGCEAD-01slsh2011-1/OCWCGCEAD_00/SEM_TURNO/2280', 'cursos/2015/05/decimoterceiro.jpg', '<p>O curso busca orientar as pessoas para que possam consumir de maneira consciente dentro de seu or&ccedil;amento e atendendo aos seus objetivos.<br />\r\nAo final do curso, voc&ecirc; dever&aacute; saber responder:<br />\r\n- Qual &eacute; o objetivo de administrar meu dinheiro?<br />\r\n- Eu preciso ou eu quero isto?<br />\r\n- Comprar &agrave; vista ou a cr&eacute;dito?<br />\r\n- O consumo me faz mais feliz?</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 8 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>FABIO GALLO GARCIA</p>\r\n\r\n<p>Fabio Gallo Garcia &eacute; Doutor em Finan&ccedil;as pela EAESP-FGV e Doutorando em Filosofia pela PUC-SP, institui&ccedil;&otilde;es em que atua como professor de Finan&ccedil;as. Dedica-se ao estudo das finan&ccedil;as corporativas e finan&ccedil;as comportamentais, trabalhando com pesquisa na &aacute;rea da Teoria de Sinaliza&ccedil;&atilde;o, em que explora a Assimetria de Informa&ccedil;&otilde;es no Mercado de Capitais. Tamb&eacute;m desenvolve temas em Banking, Administra&ccedil;&atilde;o de Custos e Finan&ccedil;as Pessoais. Tem realizado trabalhos de valuation, consultoria e treinamento para empresas como Emae, Banco Santander, Citibank, Banco Real e Banco Alfa. Atualmente, &eacute; tamb&eacute;m s&oacute;cio-diretor da Sinaliza&ccedil;&atilde;o e Arte, Comunica&ccedil;&atilde;o Visual - All Signs- e colunista do jornal O Estado de S&atilde;o Paulo, tendo como principais contribui&ccedil;&otilde;es na &aacute;rea de Finan&ccedil;as suas coautorias da s&eacute;rie de Finan&ccedil;as Pessoais da Publifolha e do livro Securitiza&ccedil;&atilde;o no Brasil.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dados estat&iacute;sticos mostram que, apesar de a maior parte dos brasileiros se declarar cuidadosa com o dinheiro, apenas uma minoria possui aplica&ccedil;&otilde;es financeiras. Cerca de 90% dos lares n&atilde;o t&ecirc;m controle de or&ccedil;amento e 3 em cada 10 reais que ganham v&atilde;o direto para o pagamento de d&iacute;vidas de consumo*. O resultado disso &eacute; que n&atilde;o sobra dinheiro pra mais nada, nem produtos financeiros, nem educa&ccedil;&atilde;o. Quando sobra, as pessoas n&atilde;o sabem onde investir. Uma pesquisa do Ibope descobriu que s&oacute; 2% da popula&ccedil;&atilde;o declaram ter um plano de previd&ecirc;ncia, por exemplo.</p>\r\n\r\n<p>H&aacute; 20 anos n&oacute;s da Icatu Seguros desenvolvemos solu&ccedil;&otilde;es para ajudar pessoas em busca de seguran&ccedil;a e realiza&ccedil;&atilde;o financeira em cada fase da vida. Por isso, acreditamos que &eacute; nosso papel, como seguradora especialista, incentivar a reflex&atilde;o sobre como investir de maneira inteligente. Os cinco programas, sobre or&ccedil;amento, investimento, aposentadoria e consumo fazem parte de um plano integrado sobre educa&ccedil;&atilde;o financeira chamado Plataforma do Conhecimento. Conte com nossas dicas e ferramentas para realizar seu planejamento financeiro e n&atilde;o perca mais tempo. &Eacute; o seu futuro, e ele come&ccedil;a hoje.</p>\r\n\r\n<p>Icatu Seguros. Especialista no que tem valor para voc&ecirc;.</p>\r\n'),
	(33, 'como-organizar-o-orcamento-familiar', 'Como organizar o orçamento familiar', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Como-Organizar-O-Orcamento-Familiar/OCWOFEAD-01slsh2011-1/OCWOFEAD_00/SEM_TURNO/354', 'cursos/2015/05/11533-1.jpg', '<p>Esse curso tem como objetivo proporcionar o conhecimento necess&aacute;rio para que as pessoas sejam capazes de planejar sua vida financeira e organizar seu or&ccedil;amento familiar.<br />\r\nAo final do curso, voc&ecirc; dever&aacute; estar apto a planejar sua vida financeira, organizar o or&ccedil;amento individual e familiar e aprender a organizar a sua vida financeira em casos de endividamento.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 12 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>FABIO GALLO GARCIA</p>\r\n\r\n<p>Fabio Gallo Garcia &eacute; Doutor em Finan&ccedil;as pela EAESP-FGV e Doutorando em Filosofia pela PUC-SP, institui&ccedil;&otilde;es em que atua como professor de Finan&ccedil;as. Dedica-se ao estudo das finan&ccedil;as corporativas e finan&ccedil;as comportamentais, trabalhando com pesquisa na &aacute;rea da Teoria de Sinaliza&ccedil;&atilde;o, em que explora a Assimetria de Informa&ccedil;&otilde;es no Mercado de Capitais. Tamb&eacute;m desenvolve temas em Banking, Administra&ccedil;&atilde;o de Custos e Finan&ccedil;as Pessoais. Tem realizado trabalhos de valuation, consultoria e treinamento para empresas como Emae, Banco Santander, Citibank, Banco Real e Banco Alfa. Atualmente, &eacute; tamb&eacute;m s&oacute;cio-diretor da Sinaliza&ccedil;&atilde;o e Arte, Comunica&ccedil;&atilde;o Visual - All Signs- e colunista do jornal O Estado de S&atilde;o Paulo, tendo como principais contribui&ccedil;&otilde;es na &aacute;rea de Finan&ccedil;as suas coautorias da s&eacute;rie de Finan&ccedil;as Pessoais da Publifolha e do livro Securitiza&ccedil;&atilde;o no Brasil.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dados estat&iacute;sticos mostram que, apesar de a maior parte dos brasileiros se declarar cuidadosa com o dinheiro, apenas uma minoria possui aplica&ccedil;&otilde;es financeiras. Cerca de 90% dos lares n&atilde;o t&ecirc;m controle de or&ccedil;amento e 3 em cada 10 reais que ganham v&atilde;o direto para o pagamento de d&iacute;vidas de consumo*. O resultado disso &eacute; que n&atilde;o sobra dinheiro pra mais nada, nem produtos financeiros, nem educa&ccedil;&atilde;o. Quando sobra, as pessoas n&atilde;o sabem onde investir. Uma pesquisa do Ibope descobriu que s&oacute; 2% da popula&ccedil;&atilde;o declaram ter um plano de previd&ecirc;ncia, por exemplo.</p>\r\n\r\n<p>H&aacute; 20 anos n&oacute;s da Icatu Seguros desenvolvemos solu&ccedil;&otilde;es para ajudar pessoas em busca de seguran&ccedil;a e realiza&ccedil;&atilde;o financeira em cada fase da vida. Por isso, acreditamos que &eacute; nosso papel, como seguradora especialista, incentivar a reflex&atilde;o sobre como investir de maneira inteligente. Os cinco programas, sobre or&ccedil;amento, investimento, aposentadoria e consumo fazem parte de um plano integrado sobre educa&ccedil;&atilde;o financeira chamado Plataforma do Conhecimento. Conte com nossas dicas e ferramentas para realizar seu planejamento financeiro e n&atilde;o perca mais tempo. &Eacute; o seu futuro, e ele come&ccedil;a hoje.</p>\r\n\r\n<p>Icatu Seguros. Especialista no que tem valor para voc&ecirc;.</p>\r\n\r\n<p>* Dados de pesquisa encomendada pela Revista Exame em parceria com o Instituto Ipsos em 2011.</p>\r\n'),
	(34, 'como-planejar-a-aposentadoria', 'Como planejar a aposentadoria', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Como-Planejar-A-Aposentadoria/OCWCPAEAD-01slsh2012-1/OCWCPAEAD_00/SEM_TURNO/655', 'cursos/2015/05/video-planejamento-aposentadoria.jpg', '<p>O objetivo deste curso &eacute; ajudar as pessoas, juntamente com suas fam&iacute;lias, a se organizarem da melhor forma para viver bem o per&iacute;odo fora do campo formal de trabalho.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 10 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>FABIO GALLO GARCIA</p>\r\n\r\n<p>Fabio Gallo Garcia &eacute; Doutor em Finan&ccedil;as pela EAESP-FGV e Doutorando em Filosofia pela PUC-SP, institui&ccedil;&otilde;es em que atua como professor de Finan&ccedil;as. Dedica-se ao estudo das finan&ccedil;as corporativas e finan&ccedil;as comportamentais, trabalhando com pesquisa na &aacute;rea da Teoria de Sinaliza&ccedil;&atilde;o, em que explora a Assimetria de Informa&ccedil;&otilde;es no Mercado de Capitais. Tamb&eacute;m desenvolve temas em Banking, Administra&ccedil;&atilde;o de Custos e Finan&ccedil;as Pessoais. Tem realizado trabalhos de valuation, consultoria e treinamento para empresas como Emae, Banco Santander, Citibank, Banco Real e Banco Alfa. Atualmente, &eacute; tamb&eacute;m s&oacute;cio-diretor da Sinaliza&ccedil;&atilde;o e Arte, Comunica&ccedil;&atilde;o Visual - All Signs- e colunista do jornal O Estado de S&atilde;o Paulo, tendo como principais contribui&ccedil;&otilde;es na &aacute;rea de Finan&ccedil;as suas coautorias da s&eacute;rie de Finan&ccedil;as Pessoais da Publifolha e do livro Securitiza&ccedil;&atilde;o no Brasil.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dados estat&iacute;sticos mostram que, apesar de a maior parte dos brasileiros se declarar cuidadosa com o dinheiro, apenas uma minoria possui aplica&ccedil;&otilde;es financeiras. Cerca de 90% dos lares n&atilde;o t&ecirc;m controle de or&ccedil;amento e 3 em cada 10 reais que ganham v&atilde;o direto para o pagamento de d&iacute;vidas de consumo*. O resultado disso &eacute; que n&atilde;o sobra dinheiro pra mais nada, nem produtos financeiros, nem educa&ccedil;&atilde;o. Quando sobra, as pessoas n&atilde;o sabem onde investir. Uma pesquisa do Ibope descobriu que s&oacute; 2% da popula&ccedil;&atilde;o declaram ter um plano de previd&ecirc;ncia, por exemplo.</p>\r\n\r\n<p>H&aacute; 20 anos n&oacute;s da Icatu Seguros desenvolvemos solu&ccedil;&otilde;es para ajudar pessoas em busca de seguran&ccedil;a e realiza&ccedil;&atilde;o financeira em cada fase da vida. Por isso, acreditamos que &eacute; nosso papel, como seguradora especialista, incentivar a reflex&atilde;o sobre como investir de maneira inteligente. Os cinco programas, sobre or&ccedil;amento, investimento, aposentadoria e consumo fazem parte de um plano integrado sobre educa&ccedil;&atilde;o financeira chamado Plataforma do Conhecimento. Conte com nossas dicas e ferramentas para realizar seu planejamento financeiro e n&atilde;o perca mais tempo. &Eacute; o seu futuro, e ele come&ccedil;a hoje.</p>\r\n\r\n<p>Icatu Seguros. Especialista no que tem valor para voc&ecirc;.</p>\r\n\r\n<p>* Dados de pesquisa encomendada pela Revista Exame em parceria com o Instituto Ipsos em 2011.</p>\r\n'),
	(35, 'conceitos-e-principios-fundamentais-do-direito-tributario', 'Conceitos e Princípios Fundamentais do Direito Tributário', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Conceitos-E-Principios-Fundamentais-Do-Direito-Tributario/OCWDTBEAD-01slsh2009-1/OCWDTBEAD_00/SEM_TURNO/374', 'cursos/2015/05/cursos-gratuitos-fgv-cursos-a-distancia.jpg', '<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br<br />\r\nO curso trata dos principais conceitos relacionados ao Direito Tribut&aacute;rio. Em seguida, abordar&aacute; os princ&iacute;pios constitucionais tribut&aacute;rios que estabelecem as limita&ccedil;&otilde;es ao poder de tributar, impostas &agrave; Uni&atilde;o, aos Estados, ao Distrito Federal e aos Munic&iacute;pios.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 5 horas</p>\r\n\r\n<p>Roberto Quiroga Mosquera</p>\r\n\r\n<p>Roberto Quiroga Mosquera &eacute; professor de Direito Tribut&aacute;rio da PUC/SP, por onde &eacute; Mestre e Doutor. Professor de direito Tribut&aacute;rio da USP e da Funda&ccedil;&atilde;o Getulio Vargas de S&atilde;o Paulo. &Eacute; membro da International Fiscal Association e advogado em S&atilde;o Paulo.<br />\r\nFernando Aurelio Zilveti Arce Murillo</p>\r\n\r\n<p>Mestre em Direito pela FDUSP, p&oacute;s-graduado em Direito Tribut&aacute;rio pela Faculdade Luigi Bocconi de Mil&atilde;o e advogado em S&atilde;o Paulo.<br />\r\nEURICO MARCOS DINIZ SANTI</p>\r\n\r\n<p>Eurico Marcos Diniz de Santi &eacute; Mestre e Doutor em Direito Tribut&aacute;rio pela PUC-SP. Professor da Escola de Direito de S&atilde;o Paulo da Funda&ccedil;&atilde;o Getulio Vargas - DIREITO GV. Coordenador-geral do N&uacute;cleo de Estudos Fiscais da Escola de Direito de S&atilde;o Paulo da Fun&ccedil;&atilde;o Getulio Vargas - NEF. Coordenador do Curso de Especializa&ccedil;&atilde;o em Direito Tribut&aacute;rio do GVlaw. Ex-juiz no TIT de S&atilde;o Paulo.</p>\r\n'),
	(36, 'condutas-anticompetitivas', 'Condutas Anticompetitivas', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Condutas-Anticompetitivas/OCWCAEAD-01slsh2011-1/OCWCAEAD_00/SEM_TURNO/375', 'cursos/2015/05/anticompetitivas.jpg', '<p>Em Condutas anticompetitivas, Neste m&oacute;dulo, estudaremos os atos de concentra&ccedil;&atilde;o, passando por sua defini&ccedil;&atilde;o, por situa&ccedil;&otilde;es que ensejam o dever de notifica&ccedil;&atilde;o e pelos tr&acirc;mites de an&aacute;lise. Analisaremos ainda os atos de concentra&ccedil;&atilde;o horizontal e os conceitos de integra&ccedil;&atilde;o vertical e conglomerados.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 5 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Patr&iacute;cia Regina Pinheiro Sampaio</p>\r\n\r\n<p>Patr&iacute;cia Sampaio &eacute; bacharel em direito pela Pontif&iacute;cia Universidade Cat&oacute;lica do Rio de Janeiro, mestre e doutora pela Faculdade de Direito da Universidade de S&atilde;o Paulo. Professora da gradua&ccedil;&atilde;o e da p&oacute;s-gradua&ccedil;&atilde;o da FGV Direito Rio. Coordenadora de Publica&ccedil;&otilde;es Impressas da FGV Direito Rio. Autora da obra Direito da concorr&ecirc;ncia e obriga&ccedil;&atilde;o de contratar . Rio de Janeiro: Elsevier, 2009, bem como de artigos e cap&iacute;tulos de livros nas &aacute;reas de direito da concorr&ecirc;ncia e regula&ccedil;&atilde;o. Advogada no Rio de Janeiro.<br />\r\nLuis Fernando Schuartz</p>\r\n\r\n<p>Mestre e doutor pela Johann Wolfgang Goethe Universit&auml;t - Frankfurt am Main - e professor titular da FGV Direito Rio.&nbsp;</p>\r\n\r\n<p>O Professor Luis Schuartz foi coautor da primeira edi&ccedil;&atilde;o da disciplina, pois ele faleceu em 2009.</p>\r\n'),
	(37, 'conhecimento-saber-e-ciencia', 'Conhecimento, Saber e Ciência', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Conhecimento--Saber-E-Ciencia/OCWCONEAD-01slsh2009-1/OCWCONEAD_00/SEM_TURNO/384#top', 'cursos/2015/05/conhecimento-saber-e-cia-ncia.jpg', '<p>O curso faz uma reflex&atilde;o sobre como organiza os conhecimentos. Cientes de que o saber representa o recorte dado pela ci&ecirc;ncia no conhecimento, o curso busca ainda identificar quais s&atilde;o os par&acirc;metros que limitam essa ci&ecirc;ncia e o que caracteriza a postura investigativa.</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 5 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Ser&aacute; ressaltado o valor do m&eacute;todo e da postura &eacute;tica como princ&iacute;pios b&aacute;sicos a serem por n&oacute;s observados quando nos envolvemos na produ&ccedil;&atilde;o de conhecimento.&nbsp;</p>\r\n\r\n<p><br />\r\nElisabeth Santos da Silveira</p>\r\n\r\n<p>Elisabeth Silveira &eacute; a Coordenadora Pedag&oacute;gica do FGV Online. Doutora em Ling&uuml;&iacute;stica e Mestre em L&iacute;ngua Portuguesa, antes de ingressar nos quadros da FGV, aposentou-se como Professora Titular da &aacute;rea de ensino-aprendizagem da Faculdade de Educa&ccedil;&atilde;o da Universidade do Estado do Rio de Janeiro.</p>\r\n\r\n<p>Na UERJ, al&eacute;m de Pr&aacute;tica de Ensino de L&iacute;ngua Portuguesa, ministrou diferentes disciplinas relacionadas &agrave; linguagem e ao ensino nos cursos de Licenciatura em Letras e no Mestrado em Educa&ccedil;&atilde;o. Como pesquisadora do CNPq, desenvolveu pesquisas na &aacute;rea de estrutura&ccedil;&atilde;o de informa&ccedil;&otilde;es no discurso, produzindo e divulgando seus trabalhos em diferentes congressos, e seus artigos em revistas cient&iacute;ficas.</p>\r\n'),
	(38, 'contratacao-de-trabalhadores', 'Contratação de Trabalhadores', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Contratacao-De-Trabalhadores/OCWTRBEAD-01slsh2009-1/OCWTRBEAD_00/SEM_TURNO/361', 'cursos/2015/05/untitled12-300x225.jpg', '<p>O curso trata da exist&ecirc;ncia da figura do empregado e quest&otilde;es relativas a sal&aacute;rio e subordina&ccedil;&atilde;o.&nbsp;</p>\r\n\r\n<p>Apresenta ainda, o custo da contrata&ccedil;&atilde;o do empregado e o conceito de terceiriza&ccedil;&atilde;o do servi&ccedil;o. Analisa ainda o trabalho tempor&aacute;rio e a cooperativa de trabalho.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 5 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Paulo Renato Fernandes da Silva</p>\r\n\r\n<p>Paulo Renato Fernandes &eacute; mestre em Direito Empresarial pela Universidade C&acirc;ndido Mendes, graduado em Ci&ecirc;ncias Jur&iacute;dicas pela Pontif&iacute;cia Universidade Cat&oacute;lica do Rio de Janeiro - PUC-Rio, al&eacute;m de professor de Direito e Processo do Trabalho e de Rela&ccedil;&otilde;es de Trabalho na Universidade Federal Rural do Rio de Janeiro - UFRRJ. Atua como palestrante e organizador de eventos jur&iacute;dios, e &eacute; autor livros e artigos publicados em revistas especializadas.<br />\r\nLEONARDO DIAS BORGES</p>\r\n\r\n<p>Leonardo Borges &eacute; mestre em Direito, autor de diversos livros e artigos, Juiz Federal do Trabalho, Titular da 18&ordf;. Vara do Rio de Janeiro, al&eacute;m de professor universit&aacute;rio em cursos de gradua&ccedil;&atilde;o e p&oacute;s-gradua&ccedil;&atilde;o. &Eacute; membro da Sociedade Latino-Americana de Direito do Trabalho, al&eacute;m de professor colaborador de diversas institui&ccedil;&otilde;es de ensino, entre elas a Escola da Magistratura do Trabalho do Rio de Janeiro - EMATRA, o Instituto de Pesquisa e Estudos Jur&iacute;dicos - IPEJ e a Associa&ccedil;&atilde;o Brasileira de Estudos Jur&iacute;dicos - ABEJ. Participa, ativamente, de diversos congressos, semin&aacute;rios, entre tantos outros eventos culturais jur&iacute;dicos, tanto como organizador quanto como palestrante.</p>\r\n'),
	(39, 'direitos-autorais-e-sociedade', 'Direitos Autorais e Sociedade', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Direitos-Autorais-E-Sociedade/OCWDSEAD-01slsh2011-1/OCWDSEAD_00/SEM_TURNO/376', 'cursos/2015/05/direitos-autorais.jpg', '<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br<br />\r\nEm Direito da Sociedade, trataremos dos direitos da sociedade em rela&ccedil;&atilde;o &agrave;s obras publicadas. Iniciaremos analisando o texto constitucional que disp&otilde;e sobre os ditames da justi&ccedil;a social, observando determinados princ&iacute;pios, dentre os quais se destaca a fun&ccedil;&atilde;o social da propriedade.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 5 horas</p>\r\n\r\n<p><br />\r\nPedro Paranagu&aacute; &eacute; Mestre em Direito pela Universidade de Londres. Professor da p&oacute;s-gradua&ccedil;&atilde;o em Direito da FGV-Rio e SP. Consultor de propriedade intelectual, Internet e pol&iacute;tica, com mais de 10 anos de experi&ecirc;ncia nacional e internacional. Foi professor de Portugu&ecirc;s Jur&iacute;dico na Duke University School of Law em 2011. Foi professor em tempo integral da FGV Direito Rio , coordenador do programa A2K Brasil do Centro de Tecnologia e Sociedade (FGV) e coordenador acad&ecirc;mico-executivo dos cursos de Direito do FGV Online - 2005-2010. Foi advogado do escrit&oacute;rio Gusm&atilde;o e Labrunie. Trabalhou com patentes e acesso a medicamentos. Foi representante da FGV na Organiza&ccedil;&atilde;o Mundial da Propriedade Intelectual - OMPI -, em Genebra. Comissionou estudos sobre direitos autorais e tecnologia para o Minist&eacute;rio da Cultura. Palestrante no Brasil e no exterior - Yale, UCLA, UNESCO, UNCTAD, OMPI etc. Autor de livros, cap&iacute;tulos e artigos, em portugu&ecirc;s e ingl&ecirc;s. Doutorando em Direito pela Duke University.<br />\r\nS&eacute;rgio Vieira Branco J&uacute;nior</p>\r\n\r\n<p>S&eacute;rgio Branco &eacute; Doutorando e Mestre em Direito Civil pela UERJe Especialista em Propriedade Intelectual pela PUC-Rio. &Eacute; professor da FGV Direito Rio, pesquisador do Projeto A2K e l&iacute;der de Projetos do Centro de Tecnologia e Sociedade da FGV Direito Rio. &Eacute; ex-Procurador-Chefe do Instituto Nacional de Tecnologia da Informa&ccedil;&atilde;o - ITI, em Bras&iacute;lia, e ex-Coordenador de An&aacute;lise e Desenvolvimento do Programa de P&oacute;s-Gradua&ccedil;&atilde;o da FGV Direito Rio. Trabalhou por tr&ecirc;s anos em escrit&oacute;rio de advocacia de grande porte no Rio de Janeiro.</p>\r\n'),
	(40, 'diversidade-nas-organizcoes', 'Diversidade nas Organizções', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Diversidade-Nas-Organizacoes/OCWDIVEAD-01slsh2008-1/OCWDIVEAD_00/SEM_TURNO/369', 'cursos/2015/05/offer-logo.jpg', '<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br<br />\r\nO curso em Diversidade nas Organiza&ccedil;&otilde;es apresenta, por meio de um jogo, os fundamentos dos impactos da implanta&ccedil;&atilde;o das pol&iacute;ticas e de programas relacionados &agrave; diversidade nas organiza&ccedil;&otilde;es.&nbsp;</p>\r\n\r\n<p>O objetivo do curso &eacute; discutir o espa&ccedil;o de mulheres, afro-descendentes e de portadoras de defici&ecirc;ncia nas organiza&ccedil;&otilde;es.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 15 horas</p>\r\n\r\n<p>Elisabeth Santos da Silveira</p>\r\n\r\n<p>Elisabeth Silveira &eacute; a Coordenadora Pedag&oacute;gica do FGV Online. Doutora em Ling&uuml;&iacute;stica e Mestre em L&iacute;ngua Portuguesa, antes de ingressar nos quadros da FGV, aposentou-se como Professora Titular da &aacute;rea de ensino-aprendizagem da Faculdade de Educa&ccedil;&atilde;o da Universidade do Estado do Rio de Janeiro.</p>\r\n\r\n<p>Na UERJ, al&eacute;m de Pr&aacute;tica de Ensino de L&iacute;ngua Portuguesa, ministrou diferentes disciplinas relacionadas &agrave; linguagem e ao ensino nos cursos de Licenciatura em Letras e no Mestrado em Educa&ccedil;&atilde;o. Como pesquisadora do CNPq, desenvolveu pesquisas na &aacute;rea de estrutura&ccedil;&atilde;o de informa&ccedil;&otilde;es no discurso, produzindo e divulgando seus trabalhos em diferentes congressos, e seus artigos em revistas cient&iacute;ficas.</p>\r\n'),
	(41, 'sustentabilidade-no-dia-a-dia-orientacoes-para-o-cidadao', 'Sustentabilidade no dia a dia: orientações para o cidadão', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Sustentabilidade-No-Dia-A-Dia--Orientacoes-Para-O-Cidadao/OCWCIDEAD-01slsh2010-1/OCWCIDEAD_00/SEM_TURNO/356/', 'cursos/2015/05/curso-gratuito-de-sustentabilidade-dia-a-dia-300x249.jpg', '<p>O curso Sustentabilidade no dia a dia: orienta&ccedil;&otilde;es para o cidad&atilde;o aborda o ciclo completo de vida dos produtos e instrui sobre como consumir com responsabilidade, por meio do entendimento das consequ&ecirc;ncias de cada escolha.</p>\r\n\r\n<p>Objetivo</p>\r\n\r\n<p>apresentar os principais fatos e conceitos relativos &agrave; sustentabilidade;<br />\r\nprovocar reflex&atilde;o nos participantes do curso sobre seus h&aacute;bitos e atitudes em rela&ccedil;&atilde;o &agrave; sustentabilidade;<br />\r\ncontribuir para o planejamento de mudan&ccedil;a de atitude individual.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 12 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Roberta de Carvalho Cardoso</p>\r\n\r\n<p>Doutora com estudos na &aacute;rea de Sustentabilidade pela Funda&ccedil;&atilde;o Getulio Vargas/EAESP e P&oacute;s-Graduada em Administra&ccedil;&atilde;o, com &ecirc;nfase em Marketing, pela Funda&ccedil;&atilde;o Getulio Vargas/EAESP e pelo ISA/Institut Sup&eacute;rieur d&ecirc;s Affaires, Jouy-em-Josas, Fran&ccedil;a. Atualmente, &eacute; professora da FGV/EAESP e do SENAC. Atua ainda como Coordenadora T&eacute;cnica do Programa de Responsabilidade Social e Sustentabilidade no Varejo da FGV-EAESP, como Conselheira do Conselho Regional de Adestra&ccedil;&atilde;o do Estado de S&atilde;o Paulo (CRASP) e como membro do Grupo de &Eacute;tica e Sustentabilidade do CRASP. Al&eacute;m de instrutora e consultora do Instituto Ethos, &eacute; tamb&eacute;m, autora de artigos sobre Responsabilidade Social e Sustentabilidade.</p>\r\n'),
	(42, 'sustentabilidade-um-valor-para-a-nova-geracao-orientacoes-para-o-professor-do-ensino-fundamental', 'Sustentabilidade, um valor para a nova geração: orientações para o professor do ensino fundamental', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Sustentabilidade--Um-Valor-Para-A-Nova-Geracao--Orientacoes-Para-O-Professor-Do-Ensino-Fundamental/OCWVALEAD-01slsh2011-1/OCWVALEAD_00/SEM_TURNO/357/', 'cursos/2015/05/resp-social-sustentabilidade-int.jpg', '<p>O Curso Sustentabilidade, um valor para a nova gera&ccedil;&atilde;o: orienta&ccedil;&otilde;es para o professor de ensino fundamental &eacute; uma ferramenta de reflex&atilde;o acerca da Sustentabilidade que serve de apoio a professores do Ensino Fundamental. O Walmart demonstra sua preocupa&ccedil;&atilde;o com o planeta e seus viventes disponibilizando uma s&eacute;rie de meios multiplicadores que colaboram na expans&atilde;o de ideias e h&aacute;bitos que garantam uma vida mais sustent&aacute;vel, como este curso gratuito elaborado em parceria com o FGV Online.&nbsp;</p>\r\n\r\n<p>Objetivo</p>\r\n\r\n<p>Analisar o papel do professor na sustentabilidade e propor ideias, an&aacute;lises, v&iacute;deos e uma s&eacute;rie de outros materiais que o ajudar&atilde;o a levar uma nova pr&aacute;tica de vida aos seus alunos em sala de aula e fora dela tamb&eacute;m.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 15 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Kellen Dias de Barros</p>\r\n\r\n<p>Kellen Dias de Barros &eacute; Doutora em Literatura Comparada pela UERJ, Mestre em Literatura Brasileira pela UERJ e Licenciada em Letras tamb&eacute;m pela Universidade do Estado do Rio de Janeiro. Atuou no Magist&eacute;rio e na Coordena&ccedil;&atilde;o Padag&oacute;gica, em todos os segmentos de educa&ccedil;&atilde;o - da Educa&ccedil;&atilde;o Infantil ao Ensino Superior -, na iniciativa p&uacute;blica e privada. Publicou uma s&eacute;rie de artigos e cap&iacute;tulos de livros na &aacute;rea de Literatura e Filosofia. Atualmente, trabalha junto ao FGV Online na &aacute;rea de Coordena&ccedil;&atilde;o Pedag&oacute;gica assessorando projetos de Certifica&ccedil;&atilde;o de Qualidade.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No Walmart Brasil, acreditamos que, para o mundo de hoje ser poss&iacute;vel amanh&atilde;, os padr&otilde;es de consumo, produ&ccedil;&atilde;o e uso de recursos naturais devem mudar. Essa cren&ccedil;a, potencializada pela cultura da empresa, impulsionou nossa decis&atilde;o de contribuir com esse processo de mudan&ccedil;a. Compreendemos tamb&eacute;m o potencial do segmento varejista e, consequentemente, nosso pr&oacute;prio potencial para engajar e mobilizar pessoas, e acelerar as transforma&ccedil;&otilde;es.</p>\r\n\r\n<p>Sendo assim, nossa estrat&eacute;gia de sustentabilidade n&atilde;o se limita a melhorar nossas pr&oacute;prias opera&ccedil;&otilde;es e reduzir os impactos diretos. Queremos tamb&eacute;m construir parcerias que nos possibilitem ampliar os resultados e torn&aacute;-los mais duradouros.</p>\r\n\r\n<p>Atuando em diversos pa&iacute;ses no segmento de supermercados, temos contato direto com mais de 200 milh&otilde;es de clientes por semana, possuindo uma rede de fornecedores que alcan&ccedil;a 100 mil empresas. Ao escolherem, conscientemente, o que e como consomem, as pessoas estimulam melhores pr&aacute;ticas em toda a cadeia de valor e se tornam o principal agente de mudan&ccedil;a.</p>\r\n\r\n<p>O trabalho conjunto &eacute; primordial para construir um futuro mais justo e sustent&aacute;vel. N&oacute;s, do Walmart Brasil, queremos participar como agentes dessa constru&ccedil;&atilde;o.</p>\r\n'),
	(43, 'sustentabilidade-aplicada-aos-negocios-orientacoes-para-gestores', 'Sustentabilidade aplicada aos negócios: orientações para gestores', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Sustentabilidade-Aplicada-Aos-Negocios--Orientacoes-Para-Gestores/OCWOGEAD-01slsh2012-1/OCWOGEAD_00/SEM_TURNO/884/', 'cursos/2015/05/download.jpg', '<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 10 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Objetivos<br />\r\nApresentar os principais fatos e conceitos relativos &agrave; sustentabilidade;<br />\r\nProvocar reflex&atilde;o nos participantes do curso sobre seus h&aacute;bitos e atitudes em rela&ccedil;&atilde;o &agrave; sustentabilidade;<br />\r\nConhecer as possibilidades de mudan&ccedil;a na gest&atilde;o empresarial.&nbsp;</p>\r\n\r\n<p><br />\r\nRoberta de Carvalho Cardoso</p>\r\n\r\n<p>Doutora com estudos na &aacute;rea de Sustentabilidade pela Funda&ccedil;&atilde;o Getulio Vargas/EAESP e P&oacute;s-Graduada em Administra&ccedil;&atilde;o, com &ecirc;nfase em Marketing, pela Funda&ccedil;&atilde;o Getulio Vargas/EAESP e pelo ISA/Institut Sup&eacute;rieur d&ecirc;s Affaires, Jouy-em-Josas, Fran&ccedil;a. Atualmente, &eacute; professora da FGV/EAESP e do SENAC. Atua ainda como Coordenadora T&eacute;cnica do Programa de Responsabilidade Social e Sustentabilidade no Varejo da FGV-EAESP, como Conselheira do Conselho Regional de Adestra&ccedil;&atilde;o do Estado de S&atilde;o Paulo (CRASP) e como membro do Grupo de &Eacute;tica e Sustentabilidade do CRASP. Al&eacute;m de instrutora e consultora do Instituto Ethos, &eacute; tamb&eacute;m, autora de artigos sobre Responsabilidade Social e Sustentabilidade.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No Walmart Brasil, acreditamos que, para o mundo de hoje ser poss&iacute;vel amanh&atilde;, os padr&otilde;es de consumo, produ&ccedil;&atilde;o e uso de recursos naturais devem mudar. Essa cren&ccedil;a, potencializada pela cultura da empresa, impulsionou nossa decis&atilde;o de contribuir com esse processo de mudan&ccedil;a. Compreendemos tamb&eacute;m o potencial do segmento varejista e, consequentemente, nosso pr&oacute;prio potencial para engajar e mobilizar pessoas, e acelerar as transforma&ccedil;&otilde;es.</p>\r\n\r\n<p>Sendo assim, nossa estrat&eacute;gia de sustentabilidade n&atilde;o se limita a melhorar nossas pr&oacute;prias opera&ccedil;&otilde;es e reduzir os impactos diretos. Queremos tamb&eacute;m construir parcerias que nos possibilitem ampliar os resultados e torn&aacute;-los mais duradouros.</p>\r\n\r\n<p>Atuando em diversos pa&iacute;ses no segmento de supermercados, temos contato direto com mais de 200 milh&otilde;es de clientes por semana, possuindo uma rede de fornecedores que alcan&ccedil;a 100 mil empresas. Ao escolherem, conscientemente, o que e como consomem, as pessoas estimulam melhores pr&aacute;ticas em toda a cadeia de valor e se tornam o principal agente de mudan&ccedil;a.</p>\r\n\r\n<p>O trabalho conjunto &eacute; primordial para construir um futuro mais justo e sustent&aacute;vel. N&oacute;s, do Walmart Brasil, queremos participar como agentes dessa constru&ccedil;&atilde;o.</p>\r\n'),
	(44, 'introducao-ao-private-equity-e-venture-capital-para-empreendedores', 'Introdução ao Private Equity  e Venture Capital para Empreendedores', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Introducao-Ao-Private-Equity-E-Venture-Capital-Para-Empreendedores/OCWPEVCEAD-01slsh2010-1/OCWPEVCEAD_00/SEM_TURNO/358/', 'cursos/2015/05/introduction-to-private-equity-and-venture-capital-for-entrepreneurs.png', '<p>O curso Introdu&ccedil;&atilde;o ao Private Equity e Venture Capital para Empreendedores &eacute; um curso completo de inicia&ccedil;&atilde;o ao Private Equity e Venture Capital para empreendedores. Com 40 horas de dura&ccedil;&atilde;o, o conte&uacute;do est&aacute; estruturado em oito m&oacute;dulos que abordam os seguintes temas: Empreendedorismo e Private Equity e Venture Capital; Caracter&iacute;sticas Gerais da Ind&uacute;stria e Aspectos da Capta&ccedil;&atilde;o de Recursos; Perfil dos Neg&oacute;cios em Private Equity e Venture Capital; An&aacute;lise dos Investimentos e das Alternativas para os Empreendedores; Processo de Investimento e Aspectos Contratuais; Gest&atilde;o e Monitoramento Cont&iacute;nuo; Desinvestimento e Retorno e Estudo de Casos.&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 40 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>GVCepe</p>\r\n\r\n<p>Este curso online foi elaborado por:&nbsp;</p>\r\n\r\n<p>Organizadores<br />\r\nCaio Ramalho<br />\r\nClaudio Furtado<br />\r\nFilipe Mattos<br />\r\nLucas Martins<br />\r\nRafael Rold&atilde;o<br />\r\nRodrigo Lara</p>\r\n\r\n<p>Revisores T&eacute;cnicos<br />\r\nCaio Ramalho<br />\r\nClaudio Furtado<br />\r\nFilipe Mattos<br />\r\nFl&aacute;vio Fioranti<br />\r\nLucas Martins<br />\r\nMarcelo Cour&atilde;o<br />\r\nRafael Rold&atilde;o<br />\r\nRodrigo Lara<br />\r\nWilliam Luk</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A Ag&ecirc;ncia Brasileira de Desenvolvimento Industrial (ABDI), entidade ligada ao Minist&eacute;rio do Desenvolvimento, Ind&uacute;stria e Com&eacute;rcio Exterior, em conson&acirc;ncia com sua miss&atilde;o de promover a execu&ccedil;&atilde;o da Pol&iacute;tica de Desenvolvimento Industrial, atua em diferentes frentes institucionais.</p>\r\n\r\n<p>Por meio do subprojeto Promo&ccedil;&atilde;o do Empreendedorismo, Inova&ccedil;&atilde;o e Venture Capital, do Programa de Promo&ccedil;&atilde;o da Pol&iacute;tica de Desenvolvimento Produtivo e do Ambiente de Inova&ccedil;&atilde;o, a ABDI visa ampliar o acesso aos instrumentos de desenvolvimento e inova&ccedil;&atilde;o pela ind&uacute;stria nacional.</p>\r\n'),
	(45, 'fundamentos-da-gestao-de-ti', 'Fundamentos da Gestão de TI', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Fundamentos-Da-Gestao-De-Ti/OCWTIEAD-01slsh2012-1/OCWTIEAD_00/SEM_TURNO/659', 'cursos/2015/05/graduacao-gestao-ti-requisitos-de-informatica.jpg', '<p>O curso aborda diversos conceitos a respeito do papel da tecnologia nos neg&oacute;cios.&nbsp;</p>\r\n\r\n<p>&Eacute; apresentado o conceito de empresa digital, o fen&ocirc;meno da bolha da internet, tamb&eacute;m chamado de nova economia, o impacto social da revolu&ccedil;&atilde;o da nova economia, incluindo a chamada gera&ccedil;&atilde;o virtual ou gera&ccedil;&atilde;o V, al&eacute;m das principais tend&ecirc;ncias em tecnologia da informa&ccedil;&atilde;o..&nbsp;</p>\r\n\r\n<p>Pr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 5 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p>Andr&eacute; Bittencourt do Valle</p>\r\n\r\n<p>Doutor em Engenharia pela UFF, Mestre em Engenharia pela PUC/RJ e Engenheiro pela UFRJ. Trabalhou na ISO como Secret&aacute;rio T&eacute;cnico do Comit&ecirc; sobre Office Equipment (ISO/IEC JTC1 SC28) entre 1997 e 2003, na ABNT, como Secret&aacute;rio T&eacute;cnico do Comit&ecirc; Brasileiro de Inform&aacute;tica entre 1994 e 2003 e na Rede Nacional de Ensino e Pesquisa (RNP), como gerente do projeto de implanta&ccedil;&atilde;o da Escola Superior de Redes. Atualmente participa da ABNT/CEE 93 (Gest&atilde;o de Projetos) e &eacute; delegado brasileiro junto ao comit&ecirc; ISO TC 236 (Project Management). Recebeu em 2015, 2014, 2013, 2011, 2010, 2009, 2008 e 2007 o Pr&ecirc;mio de Professor Destaque do FGV Management, em 2008 o Pr&ecirc;mio de Professor mais representativo do IDE-SP, em 2001 o Pr&ecirc;mio Visa de Com&eacute;rcio Eletr&ocirc;nico e em 2000 o Pr&ecirc;mio iBest. &Eacute; co-autor dos livros &quot;Sistemas de Informa&ccedil;&atilde;o para Organiza&ccedil;&otilde;es de Sa&uacute;de&quot;, &quot;Gest&atilde;o de Projetos&quot;, &quot;E-commerce&quot;, &quot;Fundamentos de Gerenciamento de Projetos&quot;, &quot;Gest&atilde;o Estrat&eacute;gica de Cl&iacute;nicas e Hospitais&quot;, &quot;MP3 - A revolu&ccedil;&atilde;o do som via Internet&quot; , &quot;Guia de EDI e Com&eacute;rcio Eletr&ocirc;nico&quot;, &quot;Netscape Navigator para Principiantes&quot;, &quot;Internet Explorer para Principiantes&quot;, &quot;Java - Manual de Introdu&ccedil;&atilde;o&quot; e &quot;Internet Quickref&quot;. Foi editor-t&eacute;cnico da revista InternetWorld e colaborador das revistas Computerworld, PC World, Developer&#39;s Magazine, WebGuide, Internet Business e Internet.br.</p>\r\n'),
	(46, 'qualidade-em-servicos', 'Qualidade em Serviços', 'http://www5.fgv.br/fgvonline/Cursos/Gratuitos/Qualidade-Em-Servicos/OCWQESEAD-01slsh2012-1/OCWQESEAD_00/SEM_TURNO/660', 'cursos/2015/05/5571logo-selo-de-qualidade-em-servic3a7os.jpg', '<p>O curso trata dos conceitos de qualidade no setor de servi&ccedil;os, apresentando os enfoques global e sist&ecirc;mico ancorados &agrave;s dimens&otilde;es da qualidade, aos conceitos inerentes a excel&ecirc;ncia da organiza&ccedil;&atilde;o.&nbsp;</p>\r\n\r\n<p>O objetivo do curso &eacute; analisar os modelos de gest&atilde;o pela qualidade no ambiente empresarial.&nbsp;</p>\r\n\r\n<p><br />\r\nPr&eacute;-requisito: Nenhum<br />\r\nIn&iacute;cio do curso: Imediato<br />\r\nPer&iacute;odo de inscri&ccedil;&atilde;o: Imediato<br />\r\nCarga hor&aacute;ria: 15 horas</p>\r\n\r\n<p>Contatos: (21) 3799-4790 ou (11) 3799-3290 | cursosfgvonlineocwc@fgv.br</p>\r\n\r\n<p><br />\r\nStavros Panagiotis Xanthopoylos &eacute; Doutor em Administra&ccedil;&atilde;o de Empresas pela FGV-Eaesp, graduou-se em Engenharia de Produ&ccedil;&atilde;o, com Especializa&ccedil;&atilde;o em Qualidade e Produtividade, pela Escola Polit&eacute;cnica da USP.</p>\r\n\r\n<p>Desde 1994, &eacute; professor do Departamento de Opera&ccedil;&otilde;es da FGV-Eaesp. Leciona e coordena cursos, em n&iacute;vel de p&oacute;s-gradua&ccedil;&atilde;o, em EAD h&aacute; mais de 15 anos pela FGV. &Eacute; convidado para ministrar palestras como especialista sobre EAD, Recursos Educacionais Abertos - OER&#39;s - e Educa&ccedil;&atilde;o Corporativa, em &acirc;mbito nacional e internacional. Atuou, por dois anos consecutivos, como juiz especialista no Learning Impact Awards - IMS Global Learning Consortium. Atualmente, &eacute; Vice-Diretor do Instituto de Desenvolvimento Educacional - IDE - da Funda&ccedil;&atilde;o Getulio Vargas, al&eacute;m de Vice-Presidente da Abed - Associa&ccedil;&atilde;o Brasileira de Educa&ccedil;&atilde;o a Dist&acirc;ncia -, e Conselheiro do OCWC - Open Course Ware Consortium -, do MIT.</p>\r\n');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.empregos_atuacao
CREATE TABLE IF NOT EXISTS `empregos_atuacao` (
  `atuacao_id` int(11) NOT NULL AUTO_INCREMENT,
  `atuacao_nome` varchar(50) NOT NULL,
  `atuacao_url_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`atuacao_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Tipos de atuação';

-- Copiando dados para a tabela _acirm_2015.empregos_atuacao: ~6 rows (aproximadamente)
DELETE FROM `empregos_atuacao`;
/*!40000 ALTER TABLE `empregos_atuacao` DISABLE KEYS */;
INSERT INTO `empregos_atuacao` (`atuacao_id`, `atuacao_nome`, `atuacao_url_name`) VALUES
	(1, 'Adminsitração', 'administracao'),
	(2, 'Comércio', 'comercio'),
	(3, 'Indústria', 'industria'),
	(4, 'Informática', 'informatica'),
	(5, 'Prestação de Serviços', 'prestacao-de-servicos'),
	(6, 'Profissionais Liberais', 'profissionais-liberais');
/*!40000 ALTER TABLE `empregos_atuacao` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.empregos_candidatei
CREATE TABLE IF NOT EXISTS `empregos_candidatei` (
  `candidatei_id` int(11) NOT NULL AUTO_INCREMENT,
  `candidatei_vaga` int(11) NOT NULL,
  `candidatei_candidato` int(11) NOT NULL,
  `candidatei_selecionado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`candidatei_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Vagas que o candidato se candidatou';

-- Copiando dados para a tabela _acirm_2015.empregos_candidatei: ~1 rows (aproximadamente)
DELETE FROM `empregos_candidatei`;
/*!40000 ALTER TABLE `empregos_candidatei` DISABLE KEYS */;
INSERT INTO `empregos_candidatei` (`candidatei_id`, `candidatei_vaga`, `candidatei_candidato`, `candidatei_selecionado`) VALUES
	(1, 1, 1, 0),
	(8, 1, 17, 0);
/*!40000 ALTER TABLE `empregos_candidatei` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.empregos_candidato
CREATE TABLE IF NOT EXISTS `empregos_candidato` (
  `candidato_id` int(11) NOT NULL AUTO_INCREMENT,
  `candidato_areaatuacao` varchar(50) NOT NULL,
  `candidato_nome` varchar(200) NOT NULL,
  `candidato_sexo` varchar(30) NOT NULL,
  `candidato_estadocivil` varchar(30) NOT NULL,
  `candidato_datanasc` date NOT NULL,
  `candidato_tel1` varchar(14) NOT NULL,
  `candidato_tel2` varchar(14) DEFAULT NULL,
  `candidato_cep` varchar(9) DEFAULT NULL,
  `candidato_endereco` varchar(180) DEFAULT NULL,
  `candidato_numero` varchar(20) DEFAULT NULL,
  `candidato_bairro` varchar(30) DEFAULT NULL,
  `candidato_cidade` varchar(180) NOT NULL,
  `candidato_uf` varchar(2) NOT NULL,
  `candidato_email` varchar(200) NOT NULL,
  `candidato_senha` varchar(250) NOT NULL,
  PRIMARY KEY (`candidato_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Cadastro de Candidatos';

-- Copiando dados para a tabela _acirm_2015.empregos_candidato: ~11 rows (aproximadamente)
DELETE FROM `empregos_candidato`;
/*!40000 ALTER TABLE `empregos_candidato` DISABLE KEYS */;
INSERT INTO `empregos_candidato` (`candidato_id`, `candidato_areaatuacao`, `candidato_nome`, `candidato_sexo`, `candidato_estadocivil`, `candidato_datanasc`, `candidato_tel1`, `candidato_tel2`, `candidato_cep`, `candidato_endereco`, `candidato_numero`, `candidato_bairro`, `candidato_cidade`, `candidato_uf`, `candidato_email`, `candidato_senha`) VALUES
	(1, 'comercio', 'Maria Izabela de Lima', 'feminino', 'solteiro', '1997-08-05', '(69) 3442-5743', '(69) 8456-1650', '76940-000', 'Rua Rondônia ', '4004', 'Centenário ', 'Rolim de Moura', 'RO', 'Izabela.lima06@hotmail.com', '58effe1984763e9c8a3e00a5bc5f990b'),
	(2, 'comercio', 'Maria  Izabela Lima', 'feminino', 'solteiro', '1997-08-05', '(69) 3442-5743', '(69) 8456-1650', '76940-000', 'Rua Rondônia', '4004', 'Centenário', 'Rolim de Moura', 'RO', 'izabela.lima06@gmail.com', '58effe1984763e9c8a3e00a5bc5f990b'),
	(3, 'informatica', 'Sergio Augusto Cortez Ferreira', 'masculino', 'divorciado', '1967-03-14', '(69) 8441-0697', '(69) 3442-1950', '76940-000', 'Av 25 de agosto', '6838', 'Industrial', 'Rolim de Moura', 'RO', 'iconerm@gmail.com', '91b514270fdb81451e1604bd7b05ee87'),
	(4, 'administracao', 'lucilene gomes da silva ramos', 'feminino', 'casado', '1987-06-12', '(69) 8489-3535', '(69) 8421-1028', '76940-000', 'rua 07', '0104', 'cidade alta 02', 'Rolim de moura', 'ro', 'lucilene.silva@live.com', '642bfd5a1c278713ef55828717ae81d5'),
	(10, 'comercio', 'HEROM PROCOPIO DA SILVA', 'masculino', 'casado', '1984-09-06', '(69) 8476-8961', '(69) 8447-9722', '76940-000', 'RUA BRASFOREST', '5084', 'JARDIM TROPICAL', 'ROLIM DE MOURA', 'RO', 'herompros@hotmail.com', '35a36b0fbadc2e11c6138deee886375e'),
	(12, 'administracao', 'DEBORAH FREIRE DAMACENO', 'masculino', 'casado', '1969-12-31', '(69) 8401-8188', '(69) 9942-9969', '76940-000', 'TRAVESSA RELIQUIA ', '3818', 'OLIMPICO', 'ROLIM DE MOURA', 'RO', 'deborahfreire.27@hotmail.com', '591c84121a13b1a14042304033b27403'),
	(13, 'informatica', 'Weliton Pires Fogaça', 'masculino', 'solteiro', '1993-12-31', '(69) 8489-6516', '(69) 9340-6531', '76940-000', 'Avenida Salvador', '5683', 'Planalto', 'Rolim de Moura', 'RO', 'weliton_mg_@hotmail.com', 'b69b0fd1e25d3c23a7debd40b71e1776'),
	(14, 'industria', 'Samara Mateus de Medeiros', 'feminino', 'solteiro', '1995-04-30', '(69) 8415-6006', '(69) 8431-8214', '76940-000', 'Rua Araguaia', '4662', 'Industrial', 'Rolim de Moura', 'RO', 'samara_2009medeiros@hotmail.com', '491df96026c4b241601f96f4f9b9bb9f'),
	(15, 'informatica', 'Anderson Batista dos Santos', 'masculino', 'solteiro', '1995-07-22', '(69) 8458-8158', '(69) 3442-2391', '76940-000', 'Rua A1', '0932', 'Cidade Alta', 'Rolim de Moura', 'RO', 'pessoal.andersonbatista@gmail.com', 'bcf42c797e07f39fa4da54d3a22d5f0a'),
	(16, 'prestacao-de-servicos', 'EDINAURA HELL', 'feminino', 'solteiro', '1985-07-17', '(69) 8431-5031', '(69) 8431-5031', '76940-000', 'AV. POETA AUGUSTO DOS ANJOS', '4845', 'BEIRA RIO', 'ROLIM DE MOURA', 'RO', 'edinaura-jornalismo@hotmail.com', 'f8ffac064318b8f548f7b187963ba6c7'),
	(17, 'informatica', 'GEAN MARQUES DA SILVA BERTANI', 'masculino', 'solteiro', '1992-08-21', '(69) 8428-5809', '(69) 8418-9899', '76940-000', 'Avenida Campo Grande', '3694', 'Olimpico', 'Rolim de Moura', 'RO', 'suporte@creativewebsites.com.br', '3158b6c2ef2ec314bcf7ab99faedcd1f');
/*!40000 ALTER TABLE `empregos_candidato` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.empregos_curriculo
CREATE TABLE IF NOT EXISTS `empregos_curriculo` (
  `curriculo_id` int(11) NOT NULL AUTO_INCREMENT,
  `curriculo_candidato` int(11) NOT NULL,
  `curriculo_formacao` text,
  `curriculo_qualificacao` text,
  `curriculo_cursos` text,
  `curriculo_empregos` text,
  `curriculo_cargo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`curriculo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Curriculo de Candidatos';

-- Copiando dados para a tabela _acirm_2015.empregos_curriculo: ~0 rows (aproximadamente)
DELETE FROM `empregos_curriculo`;
/*!40000 ALTER TABLE `empregos_curriculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `empregos_curriculo` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.empregos_empregador
CREATE TABLE IF NOT EXISTS `empregos_empregador` (
  `empregador_id` int(11) NOT NULL AUTO_INCREMENT,
  `empregador_areaatuacao` varchar(50) NOT NULL,
  `empregador_razsoc` varchar(200) NOT NULL,
  `empregador_fantasia` varchar(200) NOT NULL,
  `empregador_cnpj` varchar(20) NOT NULL,
  `empregador_tipoempresa` varchar(30) NOT NULL,
  `empregador_site` varchar(180) NOT NULL,
  `empregador_telefone` varchar(14) NOT NULL,
  `empregador_cep` varchar(9) NOT NULL,
  `empregador_endereco` varchar(180) NOT NULL,
  `empregador_numero` varchar(20) NOT NULL,
  `empregador_bairro` varchar(30) NOT NULL,
  `empregador_cidade` varchar(180) NOT NULL,
  `empregador_uf` varchar(2) NOT NULL,
  `empregador_email` varchar(200) NOT NULL,
  `empregador_senha` varchar(250) NOT NULL,
  PRIMARY KEY (`empregador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cadastro de Empregadores';

-- Copiando dados para a tabela _acirm_2015.empregos_empregador: ~0 rows (aproximadamente)
DELETE FROM `empregos_empregador`;
/*!40000 ALTER TABLE `empregos_empregador` DISABLE KEYS */;
INSERT INTO `empregos_empregador` (`empregador_id`, `empregador_areaatuacao`, `empregador_razsoc`, `empregador_fantasia`, `empregador_cnpj`, `empregador_tipoempresa`, `empregador_site`, `empregador_telefone`, `empregador_cep`, `empregador_endereco`, `empregador_numero`, `empregador_bairro`, `empregador_cidade`, `empregador_uf`, `empregador_email`, `empregador_senha`) VALUES
	(1, 'prestacao-de-servicos', 'FERREIRA & CORTEZ LTDA ME', 'ICONE', '12.187.283/0001-01', 'contratante', '', '(69) 8441-0697', '76940-000', 'AV 25 de agosto', '6838', 'Industrial', 'Rolim de Moura', 'RO', 'iconerm@gmail.com', '91b514270fdb81451e1604bd7b05ee87');
/*!40000 ALTER TABLE `empregos_empregador` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.empregos_vagas
CREATE TABLE IF NOT EXISTS `empregos_vagas` (
  `vaga_id` int(11) NOT NULL AUTO_INCREMENT,
  `vaga_empregador` int(11) NOT NULL,
  `vaga_areaatuacao` varchar(50) NOT NULL,
  `vaga_servico` varchar(200) NOT NULL,
  `vaga_quant` int(11) NOT NULL,
  `vaga_info` text NOT NULL,
  `vaga_data` date DEFAULT NULL,
  PRIMARY KEY (`vaga_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Vagas de Empregos';

-- Copiando dados para a tabela _acirm_2015.empregos_vagas: ~0 rows (aproximadamente)
DELETE FROM `empregos_vagas`;
/*!40000 ALTER TABLE `empregos_vagas` DISABLE KEYS */;
INSERT INTO `empregos_vagas` (`vaga_id`, `vaga_empregador`, `vaga_areaatuacao`, `vaga_servico`, `vaga_quant`, `vaga_info`, `vaga_data`) VALUES
	(1, 1, 'informatica', 'Desenvolvedor Web (Jr)', 3, 'Programar, testar e implantar sistemas, programando as linhas de código do sistema, de acordo com a documentação técnica, testar as funcionalidades programadas, a fim de detectar falhas, e implantar os sistemas programados, em ambiente de produção, com o intuito de criar e entregar o software ao cliente com o mínimo de falhas, de acordo com suas expectativas. Trabalhar com lógica de programação, SQL, modelagem de dados, banco de dados, PHP e BI.\r\nNecessário ter experiência com BI, PHP, modelagem de banco de dados, SQL, análise de negócios e lógica de programação.\r\nDesejável Ensino Superior completo em Sistemas da Informação, TI ou Ciência da Computação.\r\nNecessário ter conhecimentos em BI e PHP, MySQL, SQL, lógica de programação e modelagem de banco de dados.', '2015-09-07');
/*!40000 ALTER TABLE `empregos_vagas` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.equipe
CREATE TABLE IF NOT EXISTS `equipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_conselho` int(11) NOT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_equipe_id_conselho` (`id_conselho`),
  CONSTRAINT `fk_equipe_id_conselho` FOREIGN KEY (`id_conselho`) REFERENCES `conselhos` (`id_conselho`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Informações da Equipe';

-- Copiando dados para a tabela _acirm_2015.equipe: ~29 rows (aproximadamente)
DELETE FROM `equipe`;
/*!40000 ALTER TABLE `equipe` DISABLE KEYS */;
INSERT INTO `equipe` (`id`, `nome`, `cargo`, `telefone`, `email`, `id_conselho`, `qm_cadastr`, `qm_alterou`) VALUES
	(1, 'Ester Caliani', 'Secretária executiva', '(69) 3442-3328', 'diretoria@acirmro.com.br', 5, 53, 53),
	(2, 'Gisele Pereira Frá', 'Secretaria', '(69) 3442-1950', 'falecom@acirmro.com.br', 5, 53, NULL),
	(3, 'Rhawagge Henrique Gonsalves Thomazin', 'Secretario financeiro', '(69) 3442-1950', 'financeiro@acirmro.com.br', 5, 53, 53),
	(4, 'Renata Bianchi Fuzinatto', 'Coordenadora de eventos', '(69) 3442-1950', 'acirmeventos@acirmro.com.br', 5, 53, NULL),
	(5, 'Kelly Naahmara Rodrigues Jorge', 'Presidente', '(69) 3442-3328', 'kellygraficakl@msn.com', 1, 53, 53),
	(6, 'Ezequiel Pereira Gonçalves', 'Vice - Presidente', '(69) 3442-3328', 'ezequiel_luanova@hotmail.com', 1, 53, 53),
	(7, 'Margarida Hening', '1º Diretor Administrativo', '(69) 3442-3328', 'meghenning@hotmail.com', 1, 53, 53),
	(8, 'Sávio Franzner', '2º Diretor Administrativo', '(69) 3442-3328', 'savio@nutrizon.com.br', 1, 53, 53),
	(9, 'Silvano Frutuoso da Silva', '1º Diretor Financeiro', '(69) 3442-3328', 'silvano@falcaomagazine.com.br', 1, 53, 53),
	(10, 'Cleide Ramos Silva Glowatzke', '2º Diretor Financeiro', '(69) 3442-3328', 'cleide@escritoriorolim.com.br', 1, 53, 53),
	(12, 'Sávio Franzner', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'savio@nutrizon.com.br', 2, 53, NULL),
	(13, 'Gilberto Costa Borche', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'gilborche2012@hotmail.com', 2, 53, NULL),
	(14, 'Patricia de Picoli', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'guaranabrasilrm@hotmail.com', 2, 53, 53),
	(15, 'Alysson Teixeira Andrade', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'alysson.odontomais@hotmail.com', 2, 53, 53),
	(16, 'Ademar Lino Caetano', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'anafrm@hotmail.com', 2, 53, NULL),
	(17, 'Vanderlei Batista de Oliveira Junior', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'mais.rm.junior@bol.com.br', 2, 53, NULL),
	(18, 'Dihonis Teixeira de Oliveira', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'midas.rm@hotmail.com', 2, 53, NULL),
	(19, 'Oelison Rigonato da Silva', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'oelisongerente@hotmail.com', 2, 53, NULL),
	(20, 'Deivson Zaninn', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'deivsonzaninn@gmail.com', 2, 53, NULL),
	(21, 'André Gonçalves Andrade', 'Membro Conselho Deliberativo', '(69) 3442-1950', 'andre.miraella@hotmail.com', 2, 53, NULL),
	(22, 'Ademir Batista Vilarinho', 'Membro Conselho Fiscal', '(69) 3442-1950', 'compunet_ro@hotmail.com', 3, 53, NULL),
	(23, 'Andréia Cristiane Gregory', 'Membro Conselho Fiscal', '(69) 3422-1950', 'Gfacontabilidade.andreia@gmail.com', 3, 53, NULL),
	(24, 'Ivonei Miranda', 'Membro Conselho Fiscal', '(69) 3442-1950', 'ivoneimiranda@hotmail.com', 3, 53, NULL),
	(25, 'Wagner de Andrade', 'Membro Conselho Fiscal (Suplente)', '(69) 3442-1950', 'poconeveiculos@hotmail.com', 4, 53, NULL),
	(26, 'Leonardo Schlickmann Vilela', 'Membro Conselho Fiscal (Suplente)', '(69) 3442-1950', 'vilela_rm@hotmail.com', 4, 53, NULL),
	(27, 'Ademir Jorge de Oliveira', 'Membro Conselho Fiscal (Suplente)', '(69) 3442-1950', 'Ademirmapim2015@gmail.com', 4, 53, NULL),
	(28, 'Fernanda da Silva Faria', 'Aux Financeiro', '(69) 3442-1950', 'proeacirmro@acirmro.com.br', 5, 53, 53),
	(29, 'Wallner Jhonson', 'Comercial', '(69) 3442-1950', 'acirmcomercial@acirmro.com.br', 5, 53, 53),
	(30, 'Gislaine Araujo', 'Comercial', '(69) 3442-1950', 'comercialacirm@acirmro.com.br', 5, 53, 53);
/*!40000 ALTER TABLE `equipe` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.eventos
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

-- Copiando dados para a tabela _acirm_2015.eventos: ~2 rows (aproximadamente)
DELETE FROM `eventos`;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` (`id`, `url_name`, `evento`, `data`, `local`, `cidadeuf`, `foto`, `marca_foto`, `destaque`, `fotografo`, `qm_cadastr`, `qm_alterou`) VALUES
	(4, 'trofeu-acirm-2014', 'Troféu ACIRM 2014 -', '2015-05-12 08:22:44', 'CTG - Centro de Tradições Gaúchas - 20:00 horas', 'Rolim de Moura RO', 'eventos/2015/05/trofeu-acirm-2014-1431433364.jpg', NULL, 'sim', 'Acirm', NULL, NULL),
	(5, 'acirm-na-expoagro-2015', 'ACIRM na Expoagro 2015', '2015-05-10 08:56:23', 'Parque de Exposição Jorge Teixeira', 'Rolim de Moura RO', 'eventos/2015/08/acirm-na-expoagro-2015.jpg', NULL, 'sim', 'Acirm', NULL, NULL);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.galerias
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

-- Copiando dados para a tabela _acirm_2015.galerias: ~0 rows (aproximadamente)
DELETE FROM `galerias`;
/*!40000 ALTER TABLE `galerias` DISABLE KEYS */;
/*!40000 ALTER TABLE `galerias` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.institucional
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

-- Copiando dados para a tabela _acirm_2015.institucional: ~0 rows (aproximadamente)
DELETE FROM `institucional`;
/*!40000 ALTER TABLE `institucional` DISABLE KEYS */;
INSERT INTO `institucional` (`id`, `instituicao`, `fanpage`, `sobre`, `missao`, `visao`, `valores`, `id_presidente`, `qm_cadastr`, `qm_alterou`) VALUES
	(1, 'ACIRM - ASSOCIAÇÃO EMPRESARIAL DE ROLIM DE MOURA', 'https://www.facebook.com/groupcreativewebsites', '<p>A Associa&ccedil;&atilde;o Empresarial de Rolim de Moura &ndash; ACIRM &eacute; uma entidade associativa, civil, sem&nbsp;fins lucrativos, fundada em 22 de novembro 1983, desde ent&atilde;o n&atilde;o cessou o exerc&iacute;cio da&nbsp;representatividade e as a&ccedil;&otilde;es que beneficiam e contribuem para a melhoria das condi&ccedil;&otilde;es de&nbsp;neg&oacute;cios das empresas rolimourenses. Atua diretamente na classe empresarial, apoiando suas&nbsp;iniciativas, ajudando e orientando seus associados perante poderes P&uacute;blicos/Municipais,&nbsp;Estaduais e Federais, dando-lhes suporte legal e assessoramento t&eacute;cnico na solu&ccedil;&atilde;o de&nbsp;problemas e, na defesa de seus direitos sempre que necess&aacute;rios.</p>\r\n\r\n<p>O prop&oacute;sito da ACIRM &eacute; atuar no desenvolvimento da popula&ccedil;&atilde;o e toda a comunidade&nbsp;empresarial de Rolim de Moura, tendo como compromisso n&atilde;o s&oacute; criar riqueza na nossa&nbsp;cidade, mas, acima de tudo, fazer com que essa riqueza fique na nossa comunidade, de&nbsp;maneira que esta possa ser melhor distribu&iacute;da e alavancar o progresso.</p>\r\n\r\n<p>A ACIRM trabalha em parceria com v&aacute;rias outras entidades para melhor atender as empresas,&nbsp;seus colaboradores e a popula&ccedil;&atilde;o em geral, melhorando a capacidade de neg&oacute;cios das&nbsp;empresas e a efici&ecirc;ncia de seus colaboradores na presta&ccedil;&atilde;o de servi&ccedil;os.</p>\r\n', '<p>Desenvolvimento econ&ocirc;mico e social dos empreendedores e da cidade de Rolim de&nbsp;Moura, de maneira a estimular o desenvolvimento cont&iacute;nuo e sustent&aacute;vel da regi&atilde;o.</p>\r\n', '<p>Consolidar o reconhecimento da entidade pela excel&ecirc;ncia em produtos e servi&ccedil;os oferecidos&nbsp;aos associados e atuar como &oacute;rg&atilde;o representativo nas discuss&otilde;es pol&iacute;ticas, econ&ocirc;micas e&nbsp;sociais em prol do empresariado Rolimourense.</p>\r\n', '<p>1. Lideran&ccedil;a e defesa do empresariado;</p>\r\n\r\n<p>2. Fomento ao empreendedorismo;</p>\r\n\r\n<p>3. Cria&ccedil;&atilde;o de valor aos associados e &agrave; sociedade;</p>\r\n\r\n<p>4. Respeito &agrave; tradi&ccedil;&atilde;o empresarial e social;</p>\r\n\r\n<p>5. Excel&ecirc;ncia na conduta das atividades;</p>\r\n\r\n<p>6. Criatividade e inova&ccedil;&atilde;o nas realiza&ccedil;&otilde;es;</p>\r\n\r\n<p>7. Integridade, Seriedade, &Eacute;tica;</p>\r\n\r\n<p>8. Responsabilidade socioambiental;</p>\r\n\r\n<p>9. Solidariedade e respeito &agrave; diversidade humana.</p>\r\n', 1, 1, 1);
/*!40000 ALTER TABLE `institucional` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.links
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `link` varchar(250) NOT NULL,
  `id_tplink` int(11) NOT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_links_id_tipo` (`id_tplink`),
  CONSTRAINT `fk_links_id_tipo` FOREIGN KEY (`id_tplink`) REFERENCES `links_tipo` (`id_tplink`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='Informações do links cadastros';

-- Copiando dados para a tabela _acirm_2015.links: ~42 rows (aproximadamente)
DELETE FROM `links`;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` (`id`, `nome`, `link`, `id_tplink`, `qm_cadastr`, `qm_alterou`) VALUES
	(1, 'Certidão de FGTS', 'https://www.sifge.caixa.gov.br/Cidadao/Crf/FgeCfSCriteriosPesquisa.asp', 1, 1, NULL),
	(2, 'Certidão Estadual', 'http://portal.intranet.sefin.ro.gov.br/PortalContribuinte/Publico/certidaoNegativa.jsp', 1, 1, NULL),
	(3, 'Certidão Municipal', 'http://201.67.42.106:8080/TributosWeb/', 1, 1, 1),
	(5, 'Certidão Previdenciária', 'http://www.receita.fazenda.gov.br/previdencia/CND/defaultpj.htm', 1, 1, NULL),
	(6, 'Certidão Receita Federal', 'http://www.receita.fazenda.gov.br/Aplicacoes/ATSPO/Certidao/CndConjuntaInter/InformaNICertidao.asp?Tipo=1', 1, 1, NULL),
	(7, 'Certidão Trabalhista', 'http://www.tst.jus.br/certidao', 1, 1, NULL),
	(8, 'Consulta de Indicadores Econômicos', 'http://www.debit.com.br/consulta10.php', 1, 1, NULL),
	(9, 'SENAC', 'http://www.ro.senac.br/', 2, 1, NULL),
	(10, 'SENAI', 'http://ro.senai.br/portal/', 2, 1, NULL),
	(11, 'SEBRAE RO', 'http://www.sebrae.com.br/sites/PortalSebrae/ufs/ro?codUf=23', 2, 1, NULL),
	(12, 'Banco Central', 'http://www.bcb.gov.br/pt-br/paginas/default.aspx', 3, 1, NULL),
	(13, 'BNDES', 'http://www.bndes.gov.br/', 3, 1, NULL),
	(14, 'Indicadores Econômicos', 'http://www.debit.com.br/consulta10.php', 3, 1, NULL),
	(15, 'Sicoob Credip', 'https://sicoobcredip.wordpress.com/', 3, 1, NULL),
	(16, 'Rolim Cred', 'http://www.credisis.com.br/', 3, 1, NULL),
	(17, 'Banco do Brasil', 'http://www.bb.com.br/portalbb/home29,116,116,1,1,1,1.bb', 3, 1, NULL),
	(18, 'Bradesco', 'http://www.bradesco.com.br/html/classic/index.shtm', 3, 1, NULL),
	(19, 'Itaú', 'https://www.itau.com.br/', 3, 1, NULL),
	(20, 'Basa', 'http://www.bancoamazonia.com.br/', 3, 1, NULL),
	(21, 'InfoMoney', 'http://www.infomoney.com.br/', 3, 1, NULL),
	(22, 'Brasil', 'http://www.brasil.gov.br/', 7, 1, NULL),
	(23, 'Governo de Rondônia', 'http://www.rondonia.ro.gov.br/', 7, 1, NULL),
	(24, 'Prefeitura Municipal', 'http://rolimdemoura.ro.gov.br/', 7, 1, NULL),
	(25, 'Câmara Municipal', 'http://www.rolimdemoura.ro.leg.br/', 7, 1, NULL),
	(26, 'Tribunal de Contas do Estado de Rondônia', 'http://www.tce.ro.gov.br/', 7, 1, NULL),
	(27, 'Receita Federal', 'http://idg.receita.fazenda.gov.br/', 7, 1, NULL),
	(28, 'SICOOB', 'http://www.sicoob.com.br/', 8, 1, NULL),
	(29, 'SEBRAE RO', 'http://www.sebrae.com.br/sites/PortalSebrae/ufs/ro?codUf=23', 8, 1, NULL),
	(30, 'Prefeitura Municipal', 'http://rolimdemoura.ro.gov.br/', 8, 1, NULL),
	(31, 'Observatório Social', 'http://www.observatoriorm.org.br/', 8, 1, NULL),
	(32, 'Fecomércio', 'http://www.fecomercio-ro.com.br/', 8, 1, NULL),
	(33, 'Fiero', 'http://www.fiero.org.br/', 8, 1, NULL),
	(34, 'SENAC', 'http://www.ro.senac.br/', 8, 1, 1),
	(35, 'SENAI', 'http://ro.senai.br/portal/', 8, 1, 1),
	(36, 'Governo de Rondonia', 'http://www.rondonia.ro.gov.br/', 9, 1, NULL),
	(37, 'Prefeitura Municipal', 'http://rolimdemoura.ro.gov.br/', 9, 1, NULL),
	(38, 'Câmara Municipal', 'http://www.rolimdemoura.ro.leg.br/', 9, 1, NULL),
	(39, 'Eletro Norte', 'http://www.eletrobrasrondonia.com/', 9, 1, NULL),
	(40, 'Caerd', 'http://www.caerd-ro.com.br/', 9, 1, NULL),
	(41, 'Correios', 'http://www.correios.com.br/para-voce', 9, 1, NULL),
	(42, 'Detran RO', 'http://www.detran.ro.gov.br/', 9, 1, NULL),
	(43, 'Tempo', 'http://www.climatempo.com.br/', 9, 1, NULL);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.links_tipo
CREATE TABLE IF NOT EXISTS `links_tipo` (
  `id_tplink` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_link` varchar(100) NOT NULL,
  `qm_cadastr` int(11) DEFAULT NULL,
  `qm_alterou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tplink`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Tipo de link';

-- Copiando dados para a tabela _acirm_2015.links_tipo: ~6 rows (aproximadamente)
DELETE FROM `links_tipo`;
/*!40000 ALTER TABLE `links_tipo` DISABLE KEYS */;
INSERT INTO `links_tipo` (`id_tplink`, `tipo_link`, `qm_cadastr`, `qm_alterou`) VALUES
	(1, 'Certidões', 1, 1),
	(2, 'Educação', 1, 1),
	(3, 'Financeiro', 1, 1),
	(7, 'Governamentais', 1, NULL),
	(8, 'Parceiros ACIRM', 1, NULL),
	(9, 'Úteis', 1, NULL);
/*!40000 ALTER TABLE `links_tipo` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.menu
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

-- Copiando dados para a tabela _acirm_2015.menu: ~13 rows (aproximadamente)
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id_menu`, `id_menu_tipo`, `titulo`, `case`, `pagina`, `ico_menu`) VALUES
	(1, 1, 'Usuários', 'usuarios', '#', 'fa-users'),
	(2, 1, 'Eventos', 'eventos', '#', 'fa-camera'),
	(3, 1, 'Produtos / Serviços', 'produtos', '#', 'fa-archive'),
	(4, 1, 'Convênios', 'convenios', '#', 'fa-credit-card'),
	(5, 1, 'Videos', 'videos', '#', 'fa-video-camera'),
	(6, 1, 'Notícias', 'noticias', '#', 'fa-bullhorn'),
	(7, 1, 'Revistas', 'revista', '#', 'fa-tablet'),
	(8, 1, 'Cursos', 'cursos', '#', 'fa-laptop'),
	(9, 1, 'Contatos', 'contatos', '#', 'fa-comments'),
	(11, 1, 'ACIRM', 'acirm', '#', 'fa-home'),
	(12, 1, 'Agenda', 'agenda', '#', 'fa-calendar-o'),
	(13, 1, 'Associações', 'associacoes', '#', 'fa-suitcase'),
	(14, 1, 'Banners', 'banners', '#', 'fa-photo');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.menu_sub
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

-- Copiando dados para a tabela _acirm_2015.menu_sub: ~31 rows (aproximadamente)
DELETE FROM `menu_sub`;
/*!40000 ALTER TABLE `menu_sub` DISABLE KEYS */;
INSERT INTO `menu_sub` (`id_menu_sub`, `id_menu`, `titulo`, `case`, `pagina`, `ico_menu`) VALUES
	(1, 1, 'Novo Cadastro', 'usuarios', 'cadastrar', 'fa-angle-double-right'),
	(2, 1, 'Listar Cadastros', 'usuarios', 'listar', 'fa-angle-double-right'),
	(3, 2, 'Novo Cadastro', 'eventos', 'cadastrar', 'fa-angle-double-right'),
	(4, 2, 'Listar Cadastros', 'eventos', 'listar', 'fa-angle-double-right'),
	(5, 9, 'Listar Contatos', 'contatos', 'listar', 'fa-angle-double-right'),
	(6, 4, 'Novo Cadastro', 'convenios', 'cadastrar', 'fa-angle-double-right'),
	(7, 4, 'Listar Cadastros', 'convenios', 'listar', 'fa-angle-double-right'),
	(8, 8, 'Novo Cadastro', 'cursos', 'cadastrar', 'fa-angle-double-right'),
	(9, 8, 'Listar Cadastros', 'cursos', 'listar', 'fa-angle-double-right'),
	(10, 6, 'Novo Cadastro', 'noticias', 'cadastrar', 'fa-angle-double-right'),
	(11, 6, 'Listar Cadastros', 'noticias', 'listar', 'fa-angle-double-right'),
	(12, 3, 'Novo Cadastro', 'produtos', 'cadastrar', 'fa-angle-double-right'),
	(13, 3, 'Listar Cadastros', 'produtos', 'listar', 'fa-angle-double-right'),
	(14, 7, 'Novo Cadastro', 'revistas', 'cadastrar', 'fa-angle-double-right'),
	(15, 7, 'Listar Cadastros', 'revistas', 'listar', 'fa-angle-double-right'),
	(16, 5, 'Novo Cadastro', 'videos', 'cadastrar', 'fa-angle-double-right'),
	(17, 5, 'Listar Cadastros', 'videos', 'listar', 'fa-angle-double-right'),
	(18, 11, 'Sistema ACIRM', 'sistema', '#', 'fa-angle-double-right'),
	(19, 11, 'Conselhos e Diretoria', 'conselhos', '#', 'fa-angle-double-right'),
	(20, 11, 'Links', 'links', '#', 'fa-angle-double-right'),
	(21, 11, 'Institucional', 'institucional', '#', 'fa-angle-double-right'),
	(22, 11, 'Equipe', 'equipe', '#', 'fa-angle-double-right'),
	(23, 11, 'Prestação de Contas', 'contas', '#', 'fa-angle-double-right'),
	(24, 11, 'Economia Rolimourense', 'economia', '#', 'fa-angle-double-right'),
	(25, 12, 'Novo Cadastro', 'agenda', 'cadastrar', 'fa-angle-double-right'),
	(26, 12, 'Listar Cadastros', 'agenda', 'listar', 'fa-angle-double-right'),
	(27, 13, 'Listar Cadastros', 'associacoes', 'listar', 'fa-angle-double-right'),
	(28, 11, 'Presidentes', 'presidentes', '#', 'fa-angle-double-right'),
	(29, 11, 'Palavras do Presidente', 'presidentes', '#', 'fa-angle-double-right'),
	(30, 14, 'Novo Cadastro', 'banners', 'cadastrar', 'fa-angle-double-right'),
	(31, 14, 'Listar Cadastros', 'banners', 'listar', 'fa-angle-double-right');
/*!40000 ALTER TABLE `menu_sub` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.menu_sub_nav
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

-- Copiando dados para a tabela _acirm_2015.menu_sub_nav: ~19 rows (aproximadamente)
DELETE FROM `menu_sub_nav`;
/*!40000 ALTER TABLE `menu_sub_nav` DISABLE KEYS */;
INSERT INTO `menu_sub_nav` (`id_menu_sub_nav`, `id_menu_sub`, `titulo`, `case`, `pagina`, `ico_menu`) VALUES
	(1, 18, 'Novo Cadastro', 'sistema', 'cadastrar', 'fa-angle-double-right'),
	(2, 18, 'Listar Cadastros', 'sistema', 'listar', 'fa-angle-double-right'),
	(3, 19, 'Novo Cadastro', 'conselhos', 'cadastrar', 'fa-angle-double-right'),
	(4, 19, 'Listar Cadastros', 'conselhos', 'listar', 'fa-angle-double-right'),
	(5, 20, 'Novo Tipo', 'links', 'cadastrar-tipo', 'fa-angle-double-right'),
	(6, 20, 'Listar Tipo', 'links', 'listar-tipo', 'fa-angle-double-right'),
	(7, 21, 'Editar Dados', 'institucional', 'editar', 'fa-angle-double-right'),
	(9, 22, 'Novo Cadastro', 'equipe', 'cadastrar', 'fa-angle-double-right'),
	(10, 22, 'Listar Cadastros', 'equipe', 'listar', 'fa-angle-double-right'),
	(11, 23, 'Novo Cadastro', 'contas', 'cadastrar', 'fa-angle-double-right'),
	(12, 23, 'Listar Cadastros', 'contas', 'listar', 'fa-angle-double-right'),
	(13, 24, 'Novo Cadastro', 'economia', 'cadastrar', 'fa-angle-double-right'),
	(14, 24, 'Listar Cadastros', 'economia', 'listar', 'fa-angle-double-right'),
	(15, 28, 'Novo Cadastro', 'presidentes', 'cadastrar', 'fa-angle-double-right'),
	(16, 28, 'Listar Cadastros', 'presidentes', 'listar', 'fa-angle-double-right'),
	(17, 29, 'Novo Cadastro', 'palavras', 'cadastrar', 'fa-angle-double-right'),
	(18, 29, 'Listar Cadastros', 'palavras', 'listar', 'fa-angle-double-right'),
	(19, 20, 'Novo Cadastro', 'links', 'cadastrar', 'fa-angle-double-right'),
	(20, 20, 'Listar Cadastros', 'links', 'listar', 'fa-angle-double-right');
/*!40000 ALTER TABLE `menu_sub_nav` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.menu_tipo
CREATE TABLE IF NOT EXISTS `menu_tipo` (
  `id_menu_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_menu_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Menu Tipo';

-- Copiando dados para a tabela _acirm_2015.menu_tipo: ~2 rows (aproximadamente)
DELETE FROM `menu_tipo`;
/*!40000 ALTER TABLE `menu_tipo` DISABLE KEYS */;
INSERT INTO `menu_tipo` (`id_menu_tipo`, `tipo`) VALUES
	(1, 'painel_adm_sidebar'),
	(2, 'painel_est_sidebar');
/*!40000 ALTER TABLE `menu_tipo` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.newsletter_user
CREATE TABLE IF NOT EXISTS `newsletter_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Usuário Cadastrados na Newsletter ';

-- Copiando dados para a tabela _acirm_2015.newsletter_user: ~17 rows (aproximadamente)
DELETE FROM `newsletter_user`;
/*!40000 ALTER TABLE `newsletter_user` DISABLE KEYS */;
INSERT INTO `newsletter_user` (`id`, `nome`, `email`, `data`) VALUES
	(2, 'Gean Marques', 'suporte@creativewebsites.com.br', '2015-04-20 21:11:19'),
	(3, 'Silvano', 'Silva', '2015-05-03 20:49:24'),
	(4, 'SERGIO VARGAS MARCONDES', 'marcondes07@hotmail.com', '2015-05-05 10:02:32'),
	(5, 'carlão', 'carlossouza_rm23@hotmail.com', '2015-05-06 16:56:46'),
	(6, 'Meg', 'meg_cb@hotmail.com', '2015-05-15 14:47:11'),
	(7, 'AGRONORTE', 'agronorte.mi@gmail.com', '2015-05-18 14:42:03'),
	(8, 'Fabricio Pedroso', 'formulario@acirmro.com.br', '2015-06-05 13:08:56'),
	(9, 'Viviane', 'vivirm_vls@hotmail.com', '2015-06-08 18:50:57'),
	(10, 'Page Web', 'thiago@pageweb.com.br', '2015-06-16 00:28:33'),
	(11, 'sandra', 'sandrarosadasilva@outlook.com', '2015-06-16 16:07:39'),
	(12, 'maria jose da silva', 'mariadasilva1902@hotmail.com', '2015-06-17 16:42:10'),
	(13, 'TIAGO SILVA LUCIANO', 'tiagoluciano70@gmail.com', '2015-06-25 13:12:00'),
	(14, 'Isabel Vieira da Silva', 'isabbellyy28rm2010@hotmail.com', '2015-06-30 16:42:33'),
	(15, 'Claudete lopes cordeiro', 'claudete.revy@hotmail.com', '2015-07-05 20:30:51'),
	(16, 'Paulo vinicios Lopes Salomão', 'paulo_vinicios2014@hotmail.com', '2015-07-05 20:31:38'),
	(17, 'bruna pereira demarchi', 'bruna_pedagogia@hotmail.com', '2015-07-21 15:51:20'),
	(18, 'Recpção acirm', 'falecom@acirmro.com.br', '2015-07-27 10:42:56');
/*!40000 ALTER TABLE `newsletter_user` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.noticias
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

-- Copiando dados para a tabela _acirm_2015.noticias: ~40 rows (aproximadamente)
DELETE FROM `noticias`;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` (`id`, `url_name`, `titulo`, `subtitulo`, `colunista`, `fonte`, `destaque`, `noticia`, `data`, `video`, `foto`, `marca_foto`, `categoria`, `contador`, `qm_cadastr`, `qm_alterou`) VALUES
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


-- Copiando estrutura para tabela _acirm_2015.presidentes
CREATE TABLE IF NOT EXISTS `presidentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_name` varchar(255) NOT NULL,
  `presidente` varchar(200) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Registra os presidentes da associação. ';

-- Copiando dados para a tabela _acirm_2015.presidentes: ~0 rows (aproximadamente)
DELETE FROM `presidentes`;
/*!40000 ALTER TABLE `presidentes` DISABLE KEYS */;
INSERT INTO `presidentes` (`id`, `url_name`, `presidente`, `foto`) VALUES
	(1, 'kelly-naahmara-rodrigues-jorge', 'Kelly Naahmara Rodrigues Jorge', 'presidentes/2015/04/kelly-teste.jpg');
/*!40000 ALTER TABLE `presidentes` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.presidentes_palavra
CREATE TABLE IF NOT EXISTS `presidentes_palavra` (
  `id_palavra` int(11) NOT NULL AUTO_INCREMENT,
  `id_presidente` varchar(11) NOT NULL,
  `palavras` text NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_palavra`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Palavras dos presidentes';

-- Copiando dados para a tabela _acirm_2015.presidentes_palavra: ~0 rows (aproximadamente)
DELETE FROM `presidentes_palavra`;
/*!40000 ALTER TABLE `presidentes_palavra` DISABLE KEYS */;
INSERT INTO `presidentes_palavra` (`id_palavra`, `id_presidente`, `palavras`, `data`) VALUES
	(1, '1', '<p>Kelly Naahmara Rodrigues Jorge,&nbsp;presidente da Associa&ccedil;&atilde;o Empresarial de Rolim de Moura comenta, acredito que &eacute; de extrema import&acirc;ncia estreitarmos os la&ccedil;os entre Entidade, Associados e Popula&ccedil;&atilde;o. Atrav&eacute;s de nosso novo web site, disponibilizamos canais de atendimento, proporcionando maior agilidade na comunica&ccedil;&atilde;o com nossa entidade, al&eacute;m de divulgarmos as a&ccedil;&otilde;es realizadas em nossa cidade.</p>\r\n', '2015-04-06 23:19:28');
/*!40000 ALTER TABLE `presidentes_palavra` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_name` varchar(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `descricao` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Cadastros de Produtos e Serviços';

-- Copiando dados para a tabela _acirm_2015.produtos: ~3 rows (aproximadamente)
DELETE FROM `produtos`;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` (`id`, `url_name`, `nome`, `foto`, `descricao`, `link`) VALUES
	(2, 'scpc-servico-central-de-protecao-ao-credito', 'SCPC - Serviço Central de Proteção ao Crédito', 'produtos/2015/03/scpc-servico-central-de-protecao-ao-credito.png', '<p><strong>Presta&ccedil;&atilde;o de Servi&ccedil;os na An&aacute;lise de Cr&eacute;dito</strong></p>\r\n\r\n<p>A Boa Vista Servi&ccedil;os e um bureau de cr&eacute;dito brasileiro que oferece solu&ccedil;&otilde;es inteligentes para a tomada de decis&otilde;es de cr&eacute;dito e gest&atilde;o de neg&oacute;cios. &Eacute; administradora do SCPC, banco de dados com mais de 350 milh&otilde;es de informa&ccedil;&otilde;es comerciais sobre consumidores e 42 milh&otilde;es de registros transa&ccedil;&otilde;es entre emrpesas. Criada em 2010, &eacute; resultado da uni&atilde;o da Associa&ccedil;&atilde;o Comercial de S&atilde;o Paulo.</p>\r\n\r\n<p>Hoje, atua com um rede nacional de mais de 2,2 mil entidades representativas do varejo em todas as regi&otilde;es do Brasil. A riqueza de informa&ccedil;&otilde;e do braco de dados permite &agrave; Boa Vista Servi&ccedil;os oferecer solu&ccedil;&otilde;es inteligentes para auxiliar o processo de tomada de decis&otilde;es de neg&oacute;cios de seus cerca de 1,2 milh&atilde;o de clientes diretos e indiretos em todos os segmentos da economia.</p>\r\n\r\n<p><strong>Especializa&ccedil;&otilde;es</strong></p>\r\n\r\n<p>Solu&ccedil;&otilde;es para Cr&eacute;dito e Cobran&ccedil;a, An&aacute;lise e Aprova&ccedil;&atilde;o de Cr&eacute;dito, Acompanhamento da Carteira de Cr&eacute;dito, Cobran&ccedil;a, Cadastro Positivo, Servi&ccedil;o Central de Prote&ccedil;&atilde;o ao Cr&eacute;dito (SCPC), Informa&ccedil;&otilde;es Cadastrais, Orienta&ccedil;&otilde;es Financeiras para o Consumidor.</p>\r\n\r\n<p>Oferecemos diversas solu&ccedil;&otilde;es para ajud&aacute;-lo a conceder cr&eacute;dito com seguran&ccedil;a.</p>\r\n\r\n<p>Essas solu&ccedil;&otilde;es foram organizadas em grupos e formaram as fam&iacute;lias de produtos: Informa&ccedil;&atilde;o, Intelig&ecirc;ncia, Estrat&eacute;gia e Rede de Relacionamento.</p>\r\n', 'https://www.scpc.inf.br/cgi-bin/spcnweb?HTML_PROGRAMA=md000008.int&HTML_IMAGEM=/spcn/imagens/logosentrada/rolimdemoura.jpg&HTML_CSS=/spcn/imagens/logosentrada/rolimdemoura.css&HTML_ENTIDADE=76940'),
	(4, 'sim-card', 'SIM CARD', 'produtos/2015/04/sim-card.png', '<p>Tem o objetivo de dar maior sustentabilidade aos seus associados e diminuir a inadimpl&ecirc;ncia, com um sistema moderno e eficiente.</p>\r\n\r\n<p>Os funcion&aacute;rios das empresas associadas poder&atilde;o adquirir o cart&atilde;o que ter&aacute; como saldo parte de seu sal&aacute;rio, os gastos ser&atilde;o lan&ccedil;ados em sua folha de pagamento, assim podendo ter at&eacute; 45 dias para pagar suas contas. O sistema &eacute; totalmente on-line. O usu&aacute;rio, o empregador e o lojista tem acesso di&aacute;rio a suas compras, limites e gastos.</p>\r\n', 'https://www.convcard.com.br/crt/credenciada/'),
	(5, 'instituto-proe', 'INSTITUTO PROE', 'produtos/2015/04/instituto-proe.jpg', '<p>Servi&ccedil;os de integra&ccedil;&atilde;o entre educa&ccedil;&atilde;o e o trabalho, com confiabilidade e seguran&ccedil;a. Proporcionado aos empres&aacute;rios qualidade na contrata&ccedil;&atilde;o de seus estagi&aacute;rios.</p>\r\n', 'http://www.proe.org.br/portal/index.html');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.revistas
CREATE TABLE IF NOT EXISTS `revistas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `edicao` varchar(50) NOT NULL,
  `link` varchar(250) NOT NULL,
  `foto` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Cadastros de Revistas';

-- Copiando dados para a tabela _acirm_2015.revistas: ~14 rows (aproximadamente)
DELETE FROM `revistas`;
/*!40000 ALTER TABLE `revistas` DISABLE KEYS */;
INSERT INTO `revistas` (`id`, `titulo`, `edicao`, `link`, `foto`) VALUES
	(4, 'Informativo ACIRM 2015', 'Edição 01 - Março/2015', 'http://www.youblisher.com/p/1100525-INFORMATIVO-ACIRM/', 'revistas/2015/03/informativo-acirm-2015.JPG'),
	(6, 'Regulamento Troféu ACIRM 2014', 'Edição 02 Março/2015', 'http://issuu.com/acirm/docs/regulamento', 'revistas/2015/03/regulamento-trofeu-acirm-2014.jpg'),
	(7, 'Centro de Treinamento ACIRM', 'Edição 03 - Março/2015', 'http://issuu.com/acirm/docs/youblisher.com-1103528-cursos_abril', 'revistas/2015/03/centro-de-treinamento-acirm.jpg'),
	(8, 'Revista Folha nova', 'Edição 04 - Março/2015', 'http://issuu.com/acirm/docs/youblisher.com-1101472-revista_folh', 'revistas/2015/03/revista-folha-nova.jpg'),
	(9, 'Revista governanca tributaria 2011', 'Revista governanca tributaria - 1ª Edição', 'http://issuu.com/acirm/docs/revista-governanca-tributaria-2011', 'revistas/2015/05/revista-governanca-tributaria-2011.jpg'),
	(10, 'Revista governanca tributaria 2012', 'Revista governanca tributaria - 2ª Edição', 'http://issuu.com/acirm/docs/revista-governanca-tributaria-2012', 'revistas/2015/05/revista-governanca-tributaria-2012.jpg'),
	(11, 'Revista governanca tributaria 2013', 'Revista governanca tributaria - 3ª Edição', 'http://issuu.com/acirm/docs/revista-governanca-tributaria-2013', 'revistas/2015/05/revista-governanca-tributaria-2013.jpg'),
	(12, 'Revista governanca tributaria 2014', 'Revista governanca tributaria - 4ª Edição', 'http://issuu.com/acirm/docs/revista-governanca-tributaria-2014', 'revistas/2015/05/revista-governanca-tributaria-2014.jpg'),
	(13, 'Empretec - Sebrae', 'O Sebrae e você.', 'http://issuu.com/sebraebahia/docs/folder_empretec_sebrae', 'revistas/2015/05/empretec-sebrae.jpg'),
	(14, 'Motivação. Você é realmente motivado?', 'Motivação é um impulso, um sentimento que faz com ', 'http://issuu.com/carlosasimao/docs/motiva____o', 'revistas/2015/05/motivacao-voce-e-realmente-motivado.jpg'),
	(15, 'A bíblia do vendedor', 'A bíblia do vendedor', 'http://issuu.com/unicaeditora/docs/1cap_biblia_web', 'revistas/2015/05/a-biblia-do-vendedor.jpg'),
	(16, 'A menina do vale como o empreendedorismo pode mudar sua vida', 'Faculdade Apogeu', 'http://issuu.com/apogeu/docs/a_menina_do_vale_como_o_empreendedo/1', 'revistas/2015/05/a-menina-do-vale-como-o-empreendedorismo-pode-mudar-sua-vida.jpg'),
	(17, 'Projeto ACIRM e você, visita na reinauguração da VETCLIN', 'ACIRM e você nª0001', 'http://issuu.com/acirm/docs/vetclin', 'revistas/2015/08/projeto-acirm-e-voce-visita-na-reinauguracao-da-vetclin.jpg'),
	(18, 'EMPRESAS PARTICIPANTES DO LIQUIDA ROLIM 2015', 'Edição 04 - agosto/2015', 'http://issuu.com/acirm/docs/liquida_rolim_2015', 'revistas/2015/08/empresas-participantes-do-liquida-rolim-2015.jpg');
/*!40000 ALTER TABLE `revistas` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.usuarios
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

-- Copiando dados para a tabela _acirm_2015.usuarios: ~2 rows (aproximadamente)
DELETE FROM `usuarios`;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nome`, `email`, `data_nasc`, `sexo`, `login`, `senha`, `foto`, `ativo`, `nivel`, `cont_acesso`, `ip`, `ultimo_acesso`, `qm_cadastr`, `dt_cadastr`, `qm_alterou`, `dt_alterou`) VALUES
	(1, 'Creative Websites', 'suporte@creativewebsites.com.br', '2015-02-14', 1, 'creative', '19d910ef608e4947aa0c6dcee352a3e8', 'usuarios/2015/03/creative.jpeg', 's', 1, 40, '::1', '2015-02-13 22:33:25', 1, NULL, 1, '2015-03-25 21:57:12'),
	(53, 'Sergio Augusto Cortez Ferreira', 'caquirm@gmail.com', '1972-03-14', 1, 'sergio', '79d8a1497fee797644db4f1faf517cd6', 'usuarios/2015/03/sergio.png', 's', 1, 0, NULL, NULL, NULL, '2015-03-28 02:02:45', NULL, '2015-03-28 02:05:10');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.videos
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

-- Copiando dados para a tabela _acirm_2015.videos: ~11 rows (aproximadamente)
DELETE FROM `videos`;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` (`id`, `url_name`, `titulo`, `url`, `link`, `destaque`, `autor`, `data`, `foto`, `qm_cadastr`, `dt_cadastr`, `qm_alterou`, `dt_alterou`) VALUES
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


-- Copiando estrutura para tabela _acirm_2015.ws_siteviews
CREATE TABLE IF NOT EXISTS `ws_siteviews` (
  `siteviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `siteviews_date` date NOT NULL,
  `siteviews_users` decimal(10,0) NOT NULL,
  `siteviews_views` decimal(10,0) NOT NULL,
  `siteviews_pages` decimal(10,0) NOT NULL,
  PRIMARY KEY (`siteviews_id`),
  KEY `idx_1` (`siteviews_date`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela _acirm_2015.ws_siteviews: ~7 rows (aproximadamente)
DELETE FROM `ws_siteviews`;
/*!40000 ALTER TABLE `ws_siteviews` DISABLE KEYS */;
INSERT INTO `ws_siteviews` (`siteviews_id`, `siteviews_date`, `siteviews_users`, `siteviews_views`, `siteviews_pages`) VALUES
	(1, '2015-09-02', 2, 8, 45),
	(2, '2015-09-03', 1, 1, 20),
	(3, '2015-09-05', 2, 2, 135),
	(4, '2015-09-06', 1, 1, 59),
	(5, '2015-09-07', 2, 2, 117),
	(6, '2015-09-09', 1, 1, 2),
	(7, '2015-11-06', 1, 1, 21);
/*!40000 ALTER TABLE `ws_siteviews` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.ws_siteviews_agent
CREATE TABLE IF NOT EXISTS `ws_siteviews_agent` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agent_views` decimal(10,0) NOT NULL,
  PRIMARY KEY (`agent_id`),
  KEY `idx_1` (`agent_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela _acirm_2015.ws_siteviews_agent: ~2 rows (aproximadamente)
DELETE FROM `ws_siteviews_agent`;
/*!40000 ALTER TABLE `ws_siteviews_agent` DISABLE KEYS */;
INSERT INTO `ws_siteviews_agent` (`agent_id`, `agent_name`, `agent_views`) VALUES
	(1, 'Firefox', 2),
	(2, 'Chrome', 8);
/*!40000 ALTER TABLE `ws_siteviews_agent` ENABLE KEYS */;


-- Copiando estrutura para tabela _acirm_2015.ws_siteviews_online
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela _acirm_2015.ws_siteviews_online: ~1 rows (aproximadamente)
DELETE FROM `ws_siteviews_online`;
/*!40000 ALTER TABLE `ws_siteviews_online` DISABLE KEYS */;
INSERT INTO `ws_siteviews_online` (`online_id`, `online_session`, `online_startview`, `online_endview`, `online_ip`, `online_url`, `online_agent`, `agent_name`) VALUES
	(12, 'c1v633g6bqtbkivlqipk3u0in1', '2015-11-06 07:41:13', '2015-11-06 08:00:21', '::1', '/servidor/rolnews/2015/', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 'Chrome');
/*!40000 ALTER TABLE `ws_siteviews_online` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
