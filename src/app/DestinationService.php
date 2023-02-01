<?php

use components\Destination;
use components\BasicDestination;
use components\IdNotDefined;
use utilities\DatabaseLayer;

require_once 'Destination.php';
require_once 'BasicDestination.php';


abstract class DestinationType {
    const sea = "sea";
    const city = "city";
    const mountain = "mountain";
    const safari = "safari";
}

class DestinationService
{

    static public function getDestinationsByType(DatabaseLayer $db, string $type, string $load_type = "complete") {
        $query = "SELECT * FROM destination WHERE primary_type = '$type'";
        $destinations = array();
        $result = $db->executeStatement($query);

        if($load_type === "complete") {
            return self::createDestinationFromQuery($result, $db, $destinations);
        } elseif ($load_type === "basic") {
            return self::createBasicDestinationFromQuery($result, $db, $destinations);
        } else {
            throw new Exception("Invalid load type");
        }
    }

    /**
     * @throws Exception if there are some errors with database communication
     */
    static public function  getAllDestinations(DatabaseLayer $db, string $load_type = "complete"): array {
        $destinations = [];
        $result = $db->executeStatement("SELECT * FROM destination");

        if($load_type === "complete") {
            return self::createDestinationFromQuery($result, $db, $destinations);
        } elseif ($load_type === "basic") {
            return self::createBasicDestinationFromQuery($result, $db, $destinations);
        } else {
            throw new Exception("Invalid load type");
        }
    }

    static public function getDestinationsByNumOfPurchase(DatabaseLayer $db, string $load_type = "complete", int $limit = 10): array
    {
        $destinations = array();
        $result = $db->executeStatement("SELECT * FROM destination ORDER BY purchased DESC LIMIT $limit");

        if($load_type === "complete") {
            return self::createDestinationFromQuery($result, $db, $destinations);
        } elseif ($load_type === "basic") {
            return self::createBasicDestinationFromQuery($result, $db, $destinations);
        } else {
            throw new Exception("Invalid load type");
        }
    }

    /**
     * @param array $result
     * @param DatabaseLayer $db
     * @param array $destinations
     * @return array
     * @throws IdNotDefined
     */
    public static function createDestinationFromQuery(array $result, DatabaseLayer $db, array $destinations): array
    {
        foreach ($result as $row) {
            $destination = new Destination($row['id'], $row['name'], $row['description'], null, null, $row['continent'], $row['state'], null, null, null, null, $row['primary_type'], $row['secondary_type']);
            $destination->loadImages($db);
            $destinations[] = $destination;
        }

        return $destinations;
    }

    public static function createBasicDestinationFromQuery(array $result, DatabaseLayer $db, array $destinations): array
    {
        foreach ($result as $row) {
            $destination = new BasicDestination($row['id'], $row['name'], $row['description'], null, null, $row['continent'], $row['primary_type'], $row['secondary_type']);
            $destination->loadImages($db);
            $destinations[] = $destination;
        }

        return $destinations;
    }
}