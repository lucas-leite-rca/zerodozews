<?php

error_reporting(E_ALL ^ E_WARNING ^ E_NOTICE ^ E_DEPRECATED ^ E_STRICT);
ini_set("default_charset", "iso-8859-1");

define("SHARE_DIR_PROJ", "/zerodozews/");
define("SHARE_LIVE", "http://".$_SERVER["HTTP_HOST"] . SHARE_DIR_PROJ);
define("SHARE_ROOT", $_SERVER["DOCUMENT_ROOT"] . SHARE_DIR_PROJ);

define("DIR_PROJ", "/zerodozews/");
define("LIVE", "http://".$_SERVER["HTTP_HOST"] . DIR_PROJ);
define("ROOT", $_SERVER["DOCUMENT_ROOT"] . DIR_PROJ);
define("NAME_ADMIN", "admin");
define("LIVE_ADMIN", LIVE . NAME_ADMIN ."/");
define("ROOT_ADMIN", ROOT . NAME_ADMIN ."/");
define("INC_PATH", ROOT."/includes/");
define("API_PATH", INC_PATH."/api/");
define("WAPI", INC_PATH."/wapiloader.php");

define("IN_DEVEL",true);
define("IN_PRODUCTION",false);

class WConfig {

	// ===========================================================
	// Head Configs
	// ===========================================================
	public static $siteName = "Zero Doze Website";
	public static $facebookDescription = "Zero Doze Website";	
	public static $nameGroup = "Zero Doze Website";
	public static $siteEncoding = "utf-8";

	// ===========================================================
	// Database Configs
	// ===========================================================
	public static $dbDriver = "mysql";
	public static $dbHost = "127.0.0.1";
	public static $dbUser = "root";
	public static $dbPassword = "";
	public static $dbDatabase = "zerodozews";

	public static $dbPrefix = array("#__" => "ws_", "#U_" => "ws_", "#M_" => "ws_", "#D_" => "ws_", "#C_" => "ws_", "#S_" => "ws_");

	// ===========================================================
	// CAPTCHA
	// ===========================================================
	public static $captchaPublicKey = "";
	public static $captchaPrivateKey = "";

	// ===========================================================
	// Mail Configs
	// ===========================================================
	public static $mailFrom = "no-reply@mailtrap.io"; // Em caso de envio SMTP, este e-mail deve pertencer ao mesmo dom?nio de $smtpUser
	public static $mailTo   = "no-reply@mailtrap.io";
	public static $mailContato = "no-reply@mailtrap.io";
	public static $mailSend = "smtp"; // "mail", "sendmail" ou "smtp"
	public static $mailDebug = true;

	// ===========================================================
	// SMTP Configs
	// ===========================================================
	public static $smtpHost     = "mailtrap.io";
	public static $smtpAuth     = true;
	public static $smtpTls      = false;
	public static $smtpPort     = 465;
	public static $smtpUser     = "3c206f6653323c";
	public static $smtpPassword = "2e464fa49e4dfe";

	// ===========================================================
	// Path Configs
	// ===========================================================
	public static $live = LIVE;
	public static $root = ROOT;
	public static $liveAdmin = LIVE_ADMIN;
	public static $rootAdmin = ROOT_ADMIN;

	// ===========================================================
	// SEO
	// ===========================================================
	public static $seoUrl = false;
	public static $facebookUserModerator = "";
	public static $seoUrlDisabledFolders = array(NAME_ADMIN, "forum");

	// ===========================================================
	// Ambiente
	// ===========================================================
	public static $editor = "tinymce";
	public static $sessionLifeTime = "1400";
	public static $offline = false;
	public static $offlineIPRestrito = array("187.39.226.32");
	public static $regPorPag = 6;
	public static $habilitaPermissoes = false;
	public static $encodeResponse = false;
	public static $encodeRequest = "utf8_decode";
	public static $packedHtml = false;

	// ===========================================================
	// Default Template Marks
	// ===========================================================
	function tplMarks() {
		return array("live_site"      => LIVE,
				"site_name"      => WConfig::$siteName,
				"Itemid"         => WMain::$Itemid,
				"option"         => WMain::$option,
				"dir_img"        => LIVE."images",
				"dir_flash"      => LIVE."images/media",
				"dir_css"        => LIVE."templates/css",
				"dir_js"         => LIVE."templates/js",
				"dir_arquivos"   => LIVE."arquivos",
				"dir_banner"     => LIVE."arquivos/banner",
				"link_voltar"    => "javascript:history.go(-1);");
	}

	function tplMarksAdmin() {
		return array("live_admin"     => LIVE_ADMIN,
				"Adminid"        => WMain::$Adminid,
				"diradmin_img"   => LIVE_ADMIN."images",
				"diradmin_flash" => LIVE_ADMIN."images/media",
				"diradmin_css"   => LIVE_ADMIN."templates/css",
				"diradmin_js"    => LIVE_ADMIN."templates/js",
				"dir_arquivos"   => LIVE."arquivos",
				"link_voltar"    => "javascript:history.go(-1);");
	}

}
?>