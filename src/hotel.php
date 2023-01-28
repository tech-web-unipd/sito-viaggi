<?php

use components\Hotel;
use components\HotelNotFound;
use utilities\Template;

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

$hotel_template = new Template("templates/hotel.html");
$hotel = new Hotel($_GET['id']);

try
{
    $hotel->loadFromDatabase($db);
} catch (HotelNotFound $e)
{
    echo "Error Hotel not found";
}

$carousel_template = new Template("templates/carousel/carousel.html");
$carousel = "";

$carousel_slides = "";
$carousel_dots = "";
$counter = 0;
foreach($hotel->getImages() as $image){
    $counter += 1;

    $slide_template = new Template("templates/carousel/slide.html");
    $dot_template = new Template("templates/carousel/dot.html");

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
    $breadcrumb_template = new Template("templates/breadcrumbs/basic.html");
    $breadcrummb = $breadcrumb_template->build(array(
            "name" => $hotel->getName(),
        ));
}else{
    $destination_visited = $_SESSION['destination_visited'];
    $breadcrumb_template = new Template("templates/breadcrumbs/hotel.html");
    $breadcrumb = $breadcrumb_template->build(array(
        "destinationId" => $destination_visited->getId(),
        "destinationName" => $destination_visited->getName(),
        "hotelName" => $hotel->getName(),
    ));
}

echo $hotel_template->build(array(
        "base" => BASE,
        "header" => buildHeader(),
        "hotelName" => $hotel->getNameWithoutSpan(),
        "carousel" => $carousel,
        "footer" => buildFooter(),
        "description" => $hotel->getDescription(),
        "breadcrumb" => $breadcrumb,
        "link" => $hotel->getLink(),
    ));