<?php

global $modelos;

$form = new WAdminForm($row);

//---------------------------------------------

$field = new WHtmlInput("Título","titulo");
$form->add($field);

$field = new WHtmlInput("Subtítulo","subtitulo");
$form->add($field);

// $field = new WHtmlUpload("Thumb","imagem");
// $form->add($field);

$field = new WHtmlInput("Link YouTube","url");
$form->add($field);

$field = new WHtmlCheck("Publicado","publicado");
$form->add($field);

//---------------------------------------------

$form->show();

?>