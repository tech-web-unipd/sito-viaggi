<?php

use components\Activity;
use components\Destination;
use utilities\Template;

require_once "app/UserService.php";
require_once "app/global.php";
require_once "lib/Template.php";
require_once "lib/DatabaseLayer.php";
require_once "app/User.php";
require_once "app/Purchase.php";
require_once "app/Activity.php";
require_once "app/Destination.php";

if(!isset($_SESSION)) 
    { 
        session_start(); 
    }

if(!isset($_SESSION['user'])){
    header("location: /sito-viaggi/src/access.php");
    exit();
}

$template_purchases_made = new Template("templates/purchases_made.html");
$purchase_made = "";

$bought_trips = $_SESSION['user']->getPurchase($db);
if(count($bought_trips) == 0){
    $purchase_made_template = new Template("templates/purchase_made/nothing.html");
    $purchase_made .= $purchase_made_template->build();
}else{
    for($i = 0; $i < count($bought_trips); $i++){
        $id = $bought_trips[$i]['id'];
        $purchase = new Purchase($id);
        $purchase->loadFromDatabase($db);
        $activities_template_build = "";
        if(count($purchase->getActivities())){
            $activities = "";
            foreach($purchase->getActivities() as $activity){
                $activity_want = new Activity($activity);
                $activity_want->loadFromDatabase($db);
                $activity_template = new Template("templates/purchase_made/activity.html");
                $activities .= $activity_template->build(array(
                    "Name" => $activity_want->getName(),
                ));
            }
            $activities_template = new Template("templates/purchase_made/contenitor_activities.html");
            $activities_template_build .= $activities_template->build(array("Activity" => $activities,));
        }else{
            $activities_template_build_template = new Template("templates/purchase_made/noactivities.html");
            $activities_template_build = $activities_template_build_template->build();
        }

        $destination = new Destination($purchase->getDestination());
        $destination->loadFromDatabase($db);
        $one_template_purchase = new Template("templates/purchase_made/purchase.html");
        $purchase_made .= $one_template_purchase->build(array(
            "Id" => $purchase->getId(),
            "Moment" => $purchase->getMoment(),
            "Card" => $purchase->getCard(),
            "Name" => $purchase->getName(),
            "Surname" => $purchase->getSurname(),
            "Destination" => $destination->getName(),
            "Start" => $purchase->getStartDate(),
            "End" => $purchase->getEndDate(),
            "Activities" => $activities_template_build,
            "Price" => $purchase->getPrice($db),
        ));    
    }
}

echo $template_purchases_made->build(array(
    "base" => BASE,
    "header" => buildHeader(),
    "footer" => buildFooter(),
    "PurchaseMade" => $purchase_made,
));