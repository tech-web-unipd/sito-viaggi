<?php
use utilities\Template;
require_once "lib/Template.php";
require_once 'app/global.php';

$agenzia = new Template("templates/agenzia.html");

echo $agenzia->build(
    array(
        "header" => buildHeader(),
        "footer" => buildFooter(),
    )
);