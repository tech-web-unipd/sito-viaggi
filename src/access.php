<?php

require_once "lib/Template.php";
require_once "app/global.php";

$login_template = new \utilities\Template("templates/access.html");

$wrong_credentials = "";

if(isset($_GET['wrongCredentials']) && $_GET['wrongCredentials']) {
    $wrong_credentials = "<p class='negative-outcome'>Le credenziali inserite non sono corrette</p>";
}

echo $login_template->build(array(
    "header" => buildHeader(),
    "wrongCredentials" => $wrong_credentials,
    "footer" => buildFooter(),
));