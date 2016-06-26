<?php

$tpl = new WTemplate(WPath::tpl());


$conteudo = new Conteudo();
$tpl->release = $conteudo->getHtmlByChave("release");


$videos = new Destaque();
$rows = $videos->select("where publicado = 1","order by id_destaque desc");

if (count($rows)) {
	foreach ($rows as $i => $row) {
		$tpl->link = $row->url;
		$tpl->titulo = $row->titulo;
		$tpl->subtitulo = $row->subtitulo;
		$tpl->thumb = WPath::arquivo("".$row->imagem,"destaque"); 
		$tpl->parseBlock("VIDEO_ITEM");
	}
	$tpl->parseBlock("VIDEO_CONTAINER");
} 

$tpl->url_form = WSEOUrl::format("index.php?option=contato&Itemid=11");

$tpl->show();

?>