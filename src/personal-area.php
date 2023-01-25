<?php

require_once "app/User.php";
require_once "lib/Template.php";
require_once "app/global.php";

$personal_area_template = new \utilities\Template("templates/personal-area.html");

session_start();
if(isset($_SESSION['user'])) {
    $user = $_SESSION['user'];
    $male = "";
    $female = "";
    $others = "";
    $outcome = "";
    $password_outcome = "";

    if(isset($_GET['dataModified'])) {
        if($_GET['dataModified'] == true) {
            $outcome = "<p class='positive-outcome'>I dati sono stati modificati con successo</p>";
        } else {
            $outcome = "<p class='negative-outcome'>Si è verificato un errore durante la modifica dei dati. Ti preghiamo di riprovare</p>";
        }
    }

    if(isset($_GET['wrongPassword'])) {
        if($_GET['wrongPassword'] == true) {
            $password_outcome = "<p class='negative-outcome'>La vecchia password non è corretta. Di conseguenza non è stata modificata</p>";
        } else {
            $password_outcome = "<p class='positive-outcome'>La password è stata modificata.</p>";
        }
    }

    switch ($user->getGender()) {
        case "M": $male = 'selected="selected"';
        break;
        case "W": $female = 'selected="selected"';
        break;
        case "U": $others = 'selected="selected"';
    }

    echo $personal_area_template->build(
        array(
            "header" => buildHeader(),
            "outcome" => $outcome,
            "passwordOutcome" => $password_outcome,
            "name" => $user->getName(),
            "surname"  => $user->getSurname(),
            "username" => $user->getUsername(),
            "male" => $male,
            "female" => $female,
            "others" => $others,
            "birthday" => $user->getDateOfBirth(),
            "email" => $user->getEmail(),
            "phoneNumber" => $user->getNumber(),
            "footer" => buildFooter(),
        )
    );
}