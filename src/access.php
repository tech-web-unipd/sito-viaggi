<?php

require_once "lib/Template.php";
require_once "app/global.php";

$login_template = new \utilities\Template("templates/access.html");

echo $login_template->build(array(
    "header" => buildHeader(),
    "footer" => buildFooter(),
));