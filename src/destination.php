<?php
require_once 'lib/DatabaseLayer.php';
require_once 'lib/Template.php';
require_once 'app/Destination.php';
require_once 'app/global.php';

$id = 1;
if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    $id = 1;
}

$destination_template = new \utilities\Template("templates/destination.html");
$destination = new \components\Destination($id);
try {
    $destination->loadFromDatabase($db);
} catch (\components\DestinationNotFound $e) {
    echo "Error not found destination";
}
$carousel_template = new \utilities\Template("templates/carousel/carousel.html");
$carousel = "";
$carousel_slides = "";
$counter = 0;
foreach ($destination->getImages() as $image) {
    $counter += 1;
    $slide_template = new \utilities\Template("templates/carousel/slide.html");
    $carousel_slides .= $slide_template->build(array(
        "slideNumber" => $counter,
        "total" => count($destination->getImages()),
        "image" => $image->build(),
    ));
}

$carousel = $carousel_template->build(array(
    "slides" => $carousel_slides,
    "dots" => "OLLARE",
));

echo $destination_template->build(
    array(
        "destinationName" => $destination->getName(),
        "carousel" => $carousel,
        "header" => "HEADER PLACEHOLDER",
        "footer" => "FOOTER PLACEHOLDER",
        "description" => $destination->getDescription(),
    )
);
