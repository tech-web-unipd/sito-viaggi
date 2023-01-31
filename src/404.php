<?php

require_once "app/global.php";
require_once "lib/Template.php";

http_response_code(404);

$redirection = "src/index.php";
$redirection_name = "Torna alla home";
$message = "Ci dispiace che tu non abbia trovato ciò che stavi cercando, ma non preoccuparti, puoi sempre tornare alla home";
$error_type = "Not found";

$not_found_template = new utilities\Template("templates/404.html");
$possible_actions_template = new utilities\Template("templates/errors/possible-actions.html");

if($_GET['errorType']) {
    if($_GET['errorType'] == "destination") {
        $error_type = "Destinazione non trovata";
        $message = "Prova a cercare la destinazione tra tutte quelle disponibili, magari è solo cambiato l'indirizzo";
        $redirection = BASE . "src/destinations.php";
        $redirection_name = "Vai a tutte le destinazioni";
    } elseif($_GET['errorType'] == "hotel") {
        $error_type = "Hotel non trovato";
        $message = "Ci dispiace che tu non abbia trovato l'hotel che stavi cercando, è possibile che la struttura non collabori più con noi. Ma non ti preoccupare se la destinazione è ancora disponibile ci sarà un'altra struttura altrettanto qualificata per il tuo soggiorno.";
        $redirection = BASE . "src/index.php";
    } elseif($_GET['errorType'] == "activity") {
        $error_type = "Attività non trovata";
        $message = "Ci dispiace che tu non abbia trovato l'attività che stavi cercando, è possibile che l'organizzazione non collabori più con noi. Ma non ti preoccupare se la destinazione è ancora disponibile ci saranno altre attività tra cui scegliere.";
        $redirection = BASE . "src/index.php";
    }
}

$possible_actions = $possible_actions_template->build(array(
    "message" => $message,
    "redirection" => $redirection,
    "redirectionName" => $redirection_name,
));

echo $not_found_template->build(array(
    "errorType" => $error_type,
    "base" => BASE,
    "possibleActions" => $possible_actions,
    "header" => buildHeader(),
    "footer" => buildFooter(),
));