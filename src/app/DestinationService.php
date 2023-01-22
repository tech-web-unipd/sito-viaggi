<?php

use components\Destination;
use components\BasicDestination;

require_once 'Destination.php';
require_once 'BasicDestination.php';

// Thanks, PHP, for no enum
abstract class DestinationType {
    const sea = "sea";
    const city = "city";
    const mountain = "mountain";
    const safari = "safari";
}

class DestinationService
{

    static public function getDestinationsByType(\utilities\DatabaseLayer $db, string $type, string $load_type = "complete") {
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
    static public function  getAllDestinations(\utilities\DatabaseLayer $db, string $load_type = "complete"): array {
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

    /**
     * @param array $result
     * @param \utilities\DatabaseLayer $db
     * @param array $destinations
     * @return array
     * @throws \components\IdNotDefined
     */
    public static function createDestinationFromQuery(array $result, \utilities\DatabaseLayer $db, array $destinations): array
    {
        foreach ($result as $row) {
            $destination = new Destination($row['id'], $row['name'], $row['description'], null, null, $row['continent'], $row['state'], null, null, null, null, $row['primary_type'], $row['secondary_type']);
            $destination->loadImages($db);
            $destinations[] = $destination;
        }

        return $destinations;
    }

    public static function createBasicDestinationFromQuery(array $result, \utilities\DatabaseLayer $db, array $destinations): array
    {
        foreach ($result as $row) {
            $destination = new BasicDestination($row['id'], $row['name'], $row['description'], null, null, $row['continent'], $row['primary_type'], $row['secondary_type']);
            $destination->loadImages($db);
            $destinations[] = $destination;
        }

        return $destinations;
    }
}