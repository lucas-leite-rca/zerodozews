<?

// debug($_POST);

$remetente = pega("email");
$nomeRemetente = pega("nome");
$destinatario = "dudacalvin@gmail.com";
$titulo = "Contato enviado pelo site em ".date("Y-m-d H:i:s");
$body = "Mensagem enviada: ".pega("mensagem");

WFunction::mandaEmail($remetente, $nomeRemetente, $destinatario, $titulo, $body);

?>

<hr />
<h1>Obrigado seu filho da puta</h1>