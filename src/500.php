<?php

require_once "app/global.php";
require_once "lib/Template.php";

http_response_code(500);

$redirection = "src/index.php";
$redirection_name = "Torna alla home";
$message = "Siamo spiacenti, ti invitiamo a riprovare più tardi. Se per caso l'errore persiste, non esitare a contattarci.";
$error_type = "Not found";

$not_found_template = new utilities\Template("templates/errors/500.html");
$possible_actions_template = new utilities\Template("templates/errors/possible-actions.html");

$possible_actions = $possible_actions_template->build(array(
    "message" => $message,
    "redirection" => $redirection,
    "redirectionName" => $redirection_name,
));

echo $not_found_template->build(array(
    "base" => BASE,
    "possibleActions" => $possible_actions,
    "header" => buildHeader(),
    "footer" => buildFooter(),
));