<?php

global $modelos;

$grid = new WAdminLista(array(), array(), "", WMain::$option.pega("classe").pega("classe_id"));
$grid->setObj($this->obj);

//---------------------------------------------

// $col = new WAdminListaColuna("Imagem","imagem");
// $col->setImage("destaque","");
// $col->largura = 120;
// $grid->add($col);

$col = new WAdminListaColuna("Título","titulo");
$grid->add($col);

$col = new WAdminListaColuna("Subtitulo","subtitulo");
$grid->add($col);

$col = new WAdminListaColuna("Publicado","publicado");
$col->setFlag();
$grid->add($col);

$grid->autoLista($rows, $total);
$grid->show();

?>