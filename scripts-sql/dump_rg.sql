-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_conteudo" -----------------------------
DROP TABLE IF EXISTS `ws_conteudo` CASCADE;

CREATE TABLE `ws_conteudo` ( 
	`id_conteudo` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`id_conteudo_categoria` Int( 11 ) NULL, 
	`titulo` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`texto` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`publicado` Smallint( 6 ) NULL, 
	`chave` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`id_main` Int( 11 ) NULL, 
	`id_lang` Int( 11 ) NULL, 
	`link` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`limit_char` Int( 11 ) NULL, 
	`tem_video` Int( 11 ) NULL,
	 PRIMARY KEY ( `id_conteudo` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_conteudo_categoria" -------------------
DROP TABLE IF EXISTS `ws_conteudo_categoria` CASCADE;

CREATE TABLE `ws_conteudo_categoria` ( 
	`id_conteudo_categoria` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`nome` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`ordering` Int( 11 ) NULL, 
	`id_main` Int( 11 ) NULL, 
	`id_lang` Int( 11 ) NULL,
	 PRIMARY KEY ( `id_conteudo_categoria` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_conteudo_midia" -----------------------
DROP TABLE IF EXISTS `ws_conteudo_midia` CASCADE;

CREATE TABLE `ws_conteudo_midia` ( 
	`id_conteudo_midia` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`id_conteudo` Int( 11 ) NOT NULL DEFAULT '0', 
	`tipo` VarChar( 10 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`arquivo` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`descricao` VarChar( 250 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`id_main` Int( 11 ) NULL, 
	`id_lang` Int( 11 ) NULL, 
	`is_arquivo_main` Int( 11 ) NULL, 
	`width` Int( 11 ) NULL, 
	`height` Int( 11 ) NULL, 
	`is_original` Int( 11 ) NULL,
	 PRIMARY KEY ( `id_conteudo_midia` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_destaque" -----------------------------
DROP TABLE IF EXISTS `ws_destaque` CASCADE;

CREATE TABLE `ws_destaque` ( 
	`id_destaque` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`titulo` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`imagem` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`data` Date NULL, 
	`publicado` Int( 11 ) NULL, 
	`url` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`ordering` Int( 11 ) NOT NULL DEFAULT '0', 
	`subtitulo` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	 PRIMARY KEY ( `id_destaque` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_lang" ---------------------------------
DROP TABLE IF EXISTS `ws_lang` CASCADE;

CREATE TABLE `ws_lang` ( 
	`id_lang` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`nome` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`sigla` VarChar( 10 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`imagem` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	 PRIMARY KEY ( `id_lang` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_menu" ---------------------------------
DROP TABLE IF EXISTS `ws_menu` CASCADE;

CREATE TABLE `ws_menu` ( 
	`id_menu` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`titulo` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`link` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`publicado` Int( 1 ) NULL DEFAULT '0', 
	`parent` Int( 11 ) NULL DEFAULT '0', 
	`id_conteudo` Int( 11 ) NULL, 
	`ordering` Int( 11 ) NULL DEFAULT '0', 
	`id_main` Int( 11 ) NULL, 
	`id_lang` Int( 11 ) NULL, 
	`introducao` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	 PRIMARY KEY ( `id_menu` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 7;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_menu_admin" ---------------------------
DROP TABLE IF EXISTS `ws_menu_admin` CASCADE;

CREATE TABLE `ws_menu_admin` ( 
	`id_menu_admin` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`titulo` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`subtitulo` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`link` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`icone` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`is_painel` Int( 11 ) NULL DEFAULT '0', 
	`parent` Int( 11 ) NULL DEFAULT '0', 
	`ordering` Int( 11 ) NULL DEFAULT '0', 
	`publicado` Int( 1 ) NULL,
	 PRIMARY KEY ( `id_menu_admin` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 16;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_modulo" -------------------------------
DROP TABLE IF EXISTS `ws_modulo` CASCADE;

CREATE TABLE `ws_modulo` ( 
	`id_modulo` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`titulo` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`posicao` VarChar( 20 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`ordering` Int( 11 ) NULL, 
	`publicado` Smallint( 6 ) NULL, 
	`arquivo` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	 PRIMARY KEY ( `id_modulo` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_modulo_menu" --------------------------
DROP TABLE IF EXISTS `ws_modulo_menu` CASCADE;

CREATE TABLE `ws_modulo_menu` ( 
	`id_modulo_menu` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`id_modulo` Int( 11 ) NOT NULL DEFAULT '0', 
	`id_menu` Int( 11 ) NOT NULL DEFAULT '0',
	 PRIMARY KEY ( `id_modulo_menu` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_seo_menu" -----------------------------
DROP TABLE IF EXISTS `ws_seo_menu` CASCADE;

CREATE TABLE `ws_seo_menu` ( 
	`id_seo_menu` Int( 11 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`id_menu` Int( 11 ) NULL, 
	`page_title` VarChar( 100 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`meta_description` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`meta_keywords` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`url_add` VarChar( 100 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	 PRIMARY KEY ( `id_seo_menu` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_seo_url" ------------------------------
DROP TABLE IF EXISTS `ws_seo_url` CASCADE;

CREATE TABLE `ws_seo_url` ( 
	`id_seo_url` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`url_old` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`url_new` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`is_ativa` Smallint( 6 ) NULL DEFAULT '1', 
	`is_automatica` Smallint( 6 ) NULL DEFAULT '1', 
	`id_main` Int( 11 ) NULL, 
	`id_lang` Int( 255 ) NULL DEFAULT '1', 
	`page_title` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	 PRIMARY KEY ( `id_seo_url` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_templates_menu" -----------------------
DROP TABLE IF EXISTS `ws_templates_menu` CASCADE;

CREATE TABLE `ws_templates_menu` ( 
	`template` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`menuid` Int( 11 ) NOT NULL DEFAULT '0', 
	`id_lang` Int( 11 ) NOT NULL DEFAULT '0',
	 PRIMARY KEY ( `template`,`menuid`,`id_lang` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_texto_layout" -------------------------
DROP TABLE IF EXISTS `ws_texto_layout` CASCADE;

CREATE TABLE `ws_texto_layout` ( 
	`id_texto_layout` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`texto` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`chave` VarChar( 100 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`id_main` Int( 11 ) NULL, 
	`id_lang` Int( 11 ) NULL DEFAULT '1',
	 PRIMARY KEY ( `id_texto_layout` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_usuario" ------------------------------
DROP TABLE IF EXISTS `ws_usuario` CASCADE;

CREATE TABLE `ws_usuario` ( 
	`id_usuario` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`nome` VarChar( 100 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`login` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`senha` VarChar( 100 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`email` VarChar( 80 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`session_id` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`ultimo_login` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
	`ultimo_acesso` Timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
	 PRIMARY KEY ( `id_usuario` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_usuario_grupo" ------------------------
DROP TABLE IF EXISTS `ws_usuario_grupo` CASCADE;

CREATE TABLE `ws_usuario_grupo` ( 
	`id_usuario_grupo` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`nome` VarChar( 100 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`ordering` Int( 11 ) NULL DEFAULT '0',
	 PRIMARY KEY ( `id_usuario_grupo` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_usuario_grupo_menu_admin" -------------
DROP TABLE IF EXISTS `ws_usuario_grupo_menu_admin` CASCADE;

CREATE TABLE `ws_usuario_grupo_menu_admin` ( 
	`id_usuario_grupo_menu_admin` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`id_usuario_grupo` Int( 11 ) NOT NULL DEFAULT '0', 
	`id_menu_admin` Int( 11 ) NOT NULL DEFAULT '0',
	 PRIMARY KEY ( `id_usuario_grupo_menu_admin` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_usuario_usuario_grupo" ----------------
DROP TABLE IF EXISTS `ws_usuario_usuario_grupo` CASCADE;

CREATE TABLE `ws_usuario_usuario_grupo` ( 
	`id_usuario_usuario_grupo` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`id_usuario` Int( 11 ) NULL, 
	`id_usuario_grupo` Int( 11 ) NULL,
	 PRIMARY KEY ( `id_usuario_usuario_grupo` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_destaque" -----------------------------
DROP TABLE IF EXISTS `ws_destaque` CASCADE;

CREATE TABLE `ws_destaque` ( 
	`id_destaque` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`imagem` VarChar( 30 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`ordering` Int( 11 ) NULL, 
	`publicado` Smallint( 6 ) NULL, 
	`url` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`titulo` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`modelo` Int( 255 ) NULL,
	 PRIMARY KEY ( `id_destaque` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- ---------------------------------------------------------


-- CREATE TABLE "ws_evento" -------------------------------
DROP TABLE IF EXISTS `ws_evento` CASCADE;

CREATE TABLE `ws_evento` ( 
	`id_evento` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`id_formato` Int( 11 ) NULL, 
	`id_liga` Int( 11 ) NULL, 
	`tipo` Int( 11 ) NULL, 
	`titulo` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`imagem` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`texto_anuncio` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`texto_report` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`premiacao` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`data` Date NULL, 
	`hora` VarChar( 5 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`publicado` Smallint( 6 ) NULL, 
	`chamada` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`id_ranking` Int( 255 ) NULL, 
	`dia_hora_permanente` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	 PRIMARY KEY ( `id_evento` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 10;
-- ---------------------------------------------------------



-- CREATE TABLE "ws_publicacao" ---------------------------
DROP TABLE IF EXISTS `ws_publicacao` CASCADE;

CREATE TABLE `ws_publicacao` ( 
	`id_publicacao` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`titulo` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`data` Date NULL, 
	`imagem` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`texto` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`publicado` Smallint( 6 ) NULL, 
	`chamada` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	 PRIMARY KEY ( `id_publicacao` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 7;
-- ---------------------------------------------------------


-- Dump data of "ws_conteudo" -----------------------------
INSERT INTO `ws_conteudo`(`id_conteudo`,`id_conteudo_categoria`,`titulo`,`texto`,`publicado`,`chave`,`id_main`,`id_lang`,`link`,`limit_char`,`tem_video`) VALUES ( '1', NULL, 'Quem Somos', '<p>
	Teste</p>
', '1', NULL, NULL, NULL, NULL, NULL, NULL );


-- Dump data of "ws_conteudo_categoria" -------------------
INSERT INTO `ws_conteudo_categoria`(`id_conteudo_categoria`,`nome`,`ordering`,`id_main`,`id_lang`) VALUES ( '1', 'Páginas de Texto', '2', '3', '1' );;
-- ---------------------------------------------------------


-- Dump data of "ws_conteudo_midia" -----------------------
-- ---------------------------------------------------------


-- Dump data of "ws_destaque" -----------------------------
-- ---------------------------------------------------------


-- Dump data of "ws_lang" ---------------------------------
INSERT INTO `ws_lang`(`id_lang`,`nome`,`sigla`,`imagem`) VALUES ( '1', 'Português (Brasil)', 'pt-br', 'br.png' );;
-- ---------------------------------------------------------



-- Dump data of "ws_menu_admin" ---------------------------
INSERT INTO `ws_menu_admin`(`id_menu_admin`,`titulo`,`subtitulo`,`link`,`icone`,`is_painel`,`parent`,`ordering`,`publicado`) VALUES ( '1', 'Início', NULL, 'option=control_panel', '', '0', '0', '0', '0' );
INSERT INTO `ws_menu_admin`(`id_menu_admin`,`titulo`,`subtitulo`,`link`,`icone`,`is_painel`,`parent`,`ordering`,`publicado`) VALUES ( '2', 'Usuários', NULL, 'option=usuario', 'system_users.png', '1', '13', '1', '1' );
INSERT INTO `ws_menu_admin`(`id_menu_admin`,`titulo`,`subtitulo`,`link`,`icone`,`is_painel`,`parent`,`ordering`,`publicado`) VALUES ( '3', 'Blocos de Texto', NULL, 'option=conteudo&classe=', 'accessories_text_editor.png', '1', '13', '3', '1' );
INSERT INTO `ws_menu_admin`(`id_menu_admin`,`titulo`,`subtitulo`,`link`,`icone`,`is_painel`,`parent`,`ordering`,`publicado`) VALUES ( '4', 'Alterar Senha', NULL, 'option=usuario&task=alterarSenha', 'accessories_text_editor.png', '1', '13', '2', '1' );
INSERT INTO `ws_menu_admin`(`id_menu_admin`,`titulo`,`subtitulo`,`link`,`icone`,`is_painel`,`parent`,`ordering`,`publicado`) VALUES ( '5', 'Cadastros Básicos', NULL, 'option=usuario', NULL, '0', '0', '2', '1' );
INSERT INTO `ws_menu_admin`(`id_menu_admin`,`titulo`,`subtitulo`,`link`,`icone`,`is_painel`,`parent`,`ordering`,`publicado`) VALUES ( '9', 'Artigos / Notícias', NULL, 'option=publicacao', NULL, '0', '14', '1', '1' );
INSERT INTO `ws_menu_admin`(`id_menu_admin`,`titulo`,`subtitulo`,`link`,`icone`,`is_painel`,`parent`,`ordering`,`publicado`) VALUES ( '11', 'Eventos', NULL, 'option=evento', NULL, '0', '14', '3', '1' );
INSERT INTO `ws_menu_admin`(`id_menu_admin`,`titulo`,`subtitulo`,`link`,`icone`,`is_painel`,`parent`,`ordering`,`publicado`) VALUES ( '13', 'Sistema', NULL, 'option=control_panel', NULL, '0', '0', '1', '1' );
-- ---------------------------------------------------------


-- Dump data of "ws_templates_menu" -----------------------
INSERT INTO `ws_templates_menu`(`template`,`menuid`,`id_lang`) VALUES ( '_principal', '0', '0' );;
-- ---------------------------------------------------------


-- Dump data of "ws_texto_layout" -------------------------
-- ---------------------------------------------------------


-- Dump data of "ws_usuario" ------------------------------
INSERT INTO `ws_usuario`(`id_usuario`,`nome`,`login`,`senha`,`email`,`session_id`,`ultimo_login`,`ultimo_acesso`) VALUES ( '1', 'Administrador do Sistema', 'admin', '202cb962ac59075b964b07152d234b70', 'email@email.com', '8456a2d7911f7d767d2a9ba2247d8bb2', '2013-11-28 02:26:23', '2013-11-28 02:40:51' );;
-- ---------------------------------------------------------


-- Dump data of "ws_usuario_grupo" ------------------------
INSERT INTO `ws_usuario_grupo`(`id_usuario_grupo`,`nome`,`ordering`) VALUES ( '1', 'Administrador', '1' );;
-- ---------------------------------------------------------


-- Dump data of "ws_usuario_grupo_menu_admin" -------------
-- ---------------------------------------------------------


-- Dump data of "ws_usuario_usuario_grupo" ----------------
INSERT INTO `ws_usuario_usuario_grupo`(`id_usuario_usuario_grupo`,`id_usuario`,`id_usuario_grupo`) VALUES ( '1', '1', '1' );;
-- ---------------------------------------------------------


-- Dump data of "ws_evento" -------------------------------
INSERT INTO `ws_evento`(`id_evento`,`id_formato`,`id_liga`,`tipo`,`titulo`,`imagem`,`texto_anuncio`,`texto_report`,`premiacao`,`data`,`hora`,`publicado`,`chamada`,`id_ranking`,`dia_hora_permanente`) VALUES ( '2', '5', NULL, '1', 'Mesão de Commander', '5292344b271fe.jpg', '<p>
	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna&nbsp;</p>
', '<p>
	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna&nbsp;</p>
', '<p>
	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna&nbsp;</p>
', '2013-11-25', '20:00', '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ', NULL, NULL );



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


