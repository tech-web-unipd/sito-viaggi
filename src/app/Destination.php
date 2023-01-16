<?php
namespace components;
use Exception;
use utilities\WrongParamType;

require_once 'AbstractComponent.php';
require_once 'Activity.php';
require_once 'Hotel.php';
require_once 'Airline.php';

class DestinationNotFound extends Exception {
    public function __construct($id) {
        parent::__construct("Destination with id: $id not found");
    }
}
class Destination extends AbstractComponent
{
    private const IMAGE_TABLE = "image_destination";
    private const IMAGE_FOREIGN_KEY = "destination";
    private ?string $continent;
    private ?string $state;
    private ?array $activities;
    private ?array $hotels;
    private ?array $airlines;

    public function __construct(string $id = null, string $name = null, string $description = null, array $images = null, Image $cover = null, string $continent = null, string $state = null, array $activities = null, array $hotels = null, array $airlines = null)
    {
        parent::__construct(self::IMAGE_TABLE, self::IMAGE_FOREIGN_KEY, $id, $name, $description, $images, $cover);
        $this->continent = $continent;
        $this->state = $state;
        $this->activities = $activities;
        $this->hotels = $hotels;
        $this->airlines = $airlines;
    }

    public function __toString()
    {
        return "Destination with id: $this->id named $this->name";
    }

    /**
     * @throws Exception if there are some errors with database communication
     */
    static public function  getAllDestinations(\utilities\DatabaseLayer $db): array {
        $destinations = [];
        $query = "SELECT * FROM destination";
        $result = $db->executeStatement($query);
        foreach ($result as $row) {
            $destination = new Destination($row['id'], $row['name'], $row['description'], null, null, $row['continent'], $row['state'], null);
            $destination->loadImages($db);

            $destinations[] = $destination;
        }

        return $destinations;
    }

    /**
     * @throws IdNotDefined if the id value is null
     * @throws Exception
     */
    private function  loadActivities(\utilities\DatabaseLayer $db): void {
        if ($this->id === null) {
            throw new IdNotDefined();
        }

        $this->activities = array();
        $result = $db->executeStatement("SELECT activity FROM offers WHERE destination = ?", array($this->id));

        foreach ($result as $row) {
            $activity = new Activity($row['activity']);
            $activity->loadFromDatabase($db);
            $this->activities[] = $activity;
        }
    }

    /**
     * @throws IdNotDefined in case id value is null
     * @throws WrongParamType if one of the statement's parameters is of a non-valid type
     * @throws Exception in case of errors with database communication
     */
    private function loadHotels(\utilities\DatabaseLayer $db): void {
        if ($this->id === null) {
            throw new IdNotDefined();
        }

        $this->hotels = array();
        $result = $db->executeStatement("SELECT * FROM hotel WHERE destination = ?", array($this->id));

        foreach ($result as $row) {
            $hotel = new Hotel($row['id']);
            $hotel->loadFromDatabase($db);
            $this->hotels[] = $hotel;
        }
    }

    /**
     * @throws IdNotDefined in case id value is null
     * @throws WrongParamType if one of the statement's parameters is of a non-valid type
     * @throws Exception in case of errors with database communication
     */
    private function loadAirlines(\utilities\DatabaseLayer $db) {
        if ($this->id === null) {
            throw new IdNotDefined();
        }

        $this->airlines = array();
        $result = $db->executeStatement("SELECT * FROM flight WHERE destination = ?", array($this->id));

        foreach ($result as $row) {
            $airline = new Airline($row['airline']);
            $airline->loadImages($db);
            $this->airlines[] = $airline;
        }
    }

    /**
     * @throws DestinationNotFound if the destination is not in the database
     * @throws IdNotDefined if the id value is null
     * @throws Exception in case of errors with database communication
     */
    public function loadFromDatabase(\utilities\DatabaseLayer $db): void
    {
        if ($this->id != null) {
            $result = $db->executeStatement("SELECT * FROM destination WHERE id = ?", [$this->id]);

            if (count($result) == 0) {
                throw new DestinationNotFound($this->id);
            }

            $this->name = $result[0]['name'];
            $this->continent = $result[0]['continent'];
            $this->state = $result[0]['state'];
            $this->description = $result[0]['description'];
            $this->loadImages($db);
            $this->loadActivities($db);
            $this->loadHotels($db);
            $this->loadAirlines($db);
        } else {
            throw new IdNotDefined();
        }
    }

    /**
     * @throws UndefinedField if one or more fields are not defined
     * @throws Exception in case of errors with database communication
     */
    public function insertIntoDatabase(\utilities\DatabaseLayer $db): void
    {
        if (!($this->name == null || $this->continent == null || $this->state == null || $this->description == null || $this->images == null)) {
            if ($this->id == null) {
                $last_id = $db->executeStatement("SELECT MAX(id) AS last_id FROM destination");
                $this->id = $last_id[0]['last_id'] + 1;
            }

            $db->executeStatement("INSERT INTO destination (id, name, continent, state, description) VALUES (?, ?, ?, ?, ?)", [$this->id, $this->name, $this->continent, $this->state, $this->description]);
            $this->insertImagesIntoDatabase($db);
        } else {
            throw new UndefinedField();
        }
    }

    /**
     * @throws FieldNotLoaded if continent value is null
     */
    public function getContinent(): string
    {
        if ($this->continent != null) {
            return $this->continent;
        } else {
            throw new FieldNotLoaded('continent');
        }
    }

    /**
     * @throws FieldNotLoaded if state value is null
     */
    public function getState(): string
    {
        if ($this->state != null) {
            return $this->state;
        } else {
            throw new FieldNotLoaded('state');
        }
    }

    /**
     * @throws FieldNotLoaded if activities value is null
     */
    public function getActivities(): array {
        if ($this->activities != null) {
            return $this->activities;
        } else {
            throw new FieldNotLoaded('activities');
        }
    }

    /**
     * @throws FieldNotLoaded if hotels value is null
     */
    public function getHotels(): array {
        if ($this->hotels != null) {
            return $this->hotels;
        } else {
            throw new FieldNotLoaded('hotels');
        }
    }

    /**
     * @throws FieldNotLoaded if airlines value is null
     */
    public function getAirlines(): array {
        if ($this->airlines != null) {
            return $this->airlines;
        } else {
            throw new FieldNotLoaded('airlines');
        }
    }
}