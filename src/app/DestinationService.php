<?php

use components\Destination;

require_once 'Destination.php';

// Thanks, PHP, for no enum
abstract class DestinationType {
    const sea = "sea";
    const city = "city";
    const mountain = "mountain";
    const safari = "safari";
}

class DestinationService
{

    static public function getDestinationsByType(\utilities\DatabaseLayer $db, string $type) {
        $query = "SELECT * FROM destination WHERE primary_type = '$type'";
        $destinations = array();
        $result = $db->executeStatement($query);

        return self::createDestinationFromQuery($result, $db, $destinations);
    }

    /**
     * @throws Exception if there are some errors with database communication
     */
    static public function  getAllDestinations(\utilities\DatabaseLayer $db): array {
        $destinations = [];
        $result = $db->executeStatement("SELECT * FROM destination");

        return self::createDestinationFromQuery($result, $db, $destinations);
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
}