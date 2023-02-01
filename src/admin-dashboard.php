<?php

require_once "app/global.php";
require_once "lib/Template.php";
require_once "app/DestinationService.php";

if(session_status() == PHP_SESSION_NONE) {
    session_start();
}

if(isset($_SESSION['user'])) {
    if($_SESSION['user']->isAdmin()) {
        $outcome = "";
        $admin_dashboard_template = new \utilities\Template("templates/admin/admin-dashboard.html");
        $destinations = \DestinationService::getAllDestinations($db);

        if($_GET['dataModified']) {
            $outcome = "<p class='positive-outcome'>I dati sono stati modificati con successo</p>";
        }

        if($_GET['wrongDate']) {
            $outcome = "<p class='negative-outcome'>La data di ritorno non può essere antecedente a quella di partenza</p>";
        }

        $destination_options = "";
        foreach ($destinations as $destination) {
            $destination_option_template = new \utilities\Template("templates/admin/option-destination.html");
            $destination_options .= $destination_option_template->build(
                array(
                    "value" => $destination->getId(),
                    "name" => $destination->getNameWithoutSpan(),
                )
            );
        }

        echo $admin_dashboard_template->build(
            array(
                "base" => BASE,
                "outcome" => $outcome,
                "destinationOptions" => $destination_options,
                "header" => buildHeader(),
                "footer" => buildFooter(),
            )
        );
    } else {
        header("Location: " . BASE . "src/index.php");
        exit();
    }
} else {
    header("Location: " . BASE . "src/login.php");
    exit();
}