<?php

$grid = new WAdminLista(array(), array(), "", WMain::$option.pega("classe").pega("classe_id"));
$grid->setObj($this->obj);

//---------------------------------------------

$col = new WAdminListaColuna("Imagem","imagem");
$col->setImage("evento","thumb_");
$col->largura = 120;
$grid->add($col);

$col = new WAdminListaColuna("Nome do Vídeo","titulo");
$grid->add($col);

$col = new WAdminListaColuna("Subtitulo","chamada");
$grid->add($col);

$col = new WAdminListaColuna("Publicado","publicado");
$col->setFlag();
$grid->add($col);

$grid->autoLista($rows, $total);
$grid->show();

?>