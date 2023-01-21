<?php

require_once "lib/DatabaseLayer.php";

$db = new \utilities\DatabaseLayer("127.0.0.1", "sapo", "Ollare123", "progetto_tec_web");

function buildHeader(): string
{
    $header_template = new utilities\Template("templates/header/header.html");
    $unknown_template = new utilities\Template("templates/header/unknown-user.html");

    return $header_template->build(array(
        "user" => $unknown_template->build(),
    ));
}