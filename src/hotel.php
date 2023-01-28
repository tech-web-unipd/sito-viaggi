<?php
require_once 'lib/DatabaseLayer.php';
require_once 'lib/Template.php';
require_once 'app/Hotel.php';
require_once 'app/global.php';
require_once 'app/Destination.php';

if(!isset($_SESSION)) 
    { 
        session_start(); 
    }

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    echo "NOT FOUND PLACEHOLDER";
}

$hotel_template = new \utilities\Template("templates/hotel.html");
$hotel = new \components\Hotel($_GET['id']);

try
{
    $hotel->loadFromDatabase($db);
} catch (\components\HotelNotFound $e)
{
    echo "Error Hotel not found";
}

$carousel_template = new \utilities\Template("templates/carousel/carousel.html");
$carousel = "";

$carousel_slides = "";
$carousel_dots = "";
$counter = 0;
foreach($hotel->getImages() as $image){
    $counter += 1;

    $slide_template = new \utilities\Template("templates/carousel/slide.html");
    $dot_template = new \utilities\Template("templates/carousel/dot.html");

    $carousel_slides .= $slide_template->build(array(
            "slideNumber" => $counter,
            "total" => count($hotel->getImages()),
            "image" => $image->build(),
    ));

    $carousel_dots .= $dot_template->build(array(
        "index" => $counter,
    ));
}

$carousel = $carousel_template->build(array(
    "slides" => $carousel_slides,
    "dots" => $carousel_dots,
));

$breadcrumb;

if(!isset($_SESSION["destination_visited"])){
    $breadcrumb_template = new \utilities\Template("templates/breadcrumbs/basic.html");
    $breadcrummb = $breadcrumb_template->build(array(
            "name" => $hotel->getName(),
        ));
}else{
    $destination_visited = $_SESSION['destination_visited'];
    $breadcrumb_template = new \utilities\Template("templates/breadcrumbs/hotel.html");
    $breadcrumb = $breadcrumb_template->build(array(
        "destinationId" => $destination_visited->getId(),
        "destinationName" => $destination_visited->getName(),
        "hotelName" => $hotel->getName(),
    ));
}

echo $hotel_template->build(array(
        "header" => buildHeader(),
        "hotelName" => $hotel->getName(),
        "carousel" => $carousel,
        "footer" => buildFooter(),
        "description" => $hotel->getDescription(),
        "breadcrumb" => $breadcrumb,
        "link" => $hotel->getLink(),
    ));