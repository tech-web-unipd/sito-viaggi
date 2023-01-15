<?php
require_once 'lib/DatabaseLayer.php';
require_once 'lib/Template.php';
require_once 'app/Destination.php';
require_once 'app/global.php';

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    echo "NOT FOUND PLACEHOLDER";
}

$destination_template = new \utilities\Template("templates/destination.html");
$destination = new \components\Destination($_GET['id']);
try {
    $destination->loadFromDatabase($db);
} catch (\components\DestinationNotFound $e) {
    echo "Error not found destination";
}

echo $destination_template->build(
    array(
        "destinationName" => $destination->getName(),
        "header" => "HEADER PLACEHOLDER",
        "footer" => "FOOTER PLACEHOLDER",
        "description" => $destination->getDescription(),
    )
);