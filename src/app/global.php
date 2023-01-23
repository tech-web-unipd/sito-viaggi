<?php

require_once "lib/DatabaseLayer.php";
require_once "app/User.php";

$db = new \utilities\DatabaseLayer("127.0.0.1", "sapo", "Ollare123", "progetto_tec_web");

function buildHeader(): string
{
    session_start();
    $header_template = new utilities\Template("templates/header/header.html");

    if(isset($_SESSION['user'])) {
        $user_template = new utilities\Template("templates/header/logged-user.html");
        $user = $user_template->build(array(
            "name" => $_SESSION['user']->getName(),
            "surname" => $_SESSION['user']->getSurname(),
        ));
    } else {
        $user_template = new \utilities\Template("templates/header/unknown-user.html");
        $user = $user_template->build();
    }

    return $header_template->build(array(
        "user" => $user,
    ));
}

function buildFooter(): string
{
    $footer_template = new utilities\Template("templates/footer.html");
    return $footer_template->build();
}