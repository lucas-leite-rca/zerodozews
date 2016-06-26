<?php

$toolbar = new WAdminToolbar();

switch (WMain::$task) {
	case "novo":
	case "edit":
		$toolbar->form();
		break;
	default:
		
		$button = new stdClass();
		$button->task   = 'novo';
		$button->alt    = 'Novo Video';
		$button->checkSelected = false;
		$toolbar->vButton[] = $button;		
		
		$toolbar->btRemover();
		$toolbar->btEditar();
		break;
}

$toolbar->show();

?>