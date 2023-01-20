<?php
namespace components;
use Exception;

class ActivityNotFound extends Exception
{
    public function __construct($id)
    {
        parent::__construct("Activity with id: $id not found");
    }
}

class Activity extends AbstractComponent
{
    private const IMAGE_TABLE = "image_activity";
    private const IMAGE_FOREIGN_KEY = "activity";
    private ?int $price;

    private ?array $destinations;

    public function __construct(string $id = null, string $name = null, int $price = null, string $description = null, array $images = null, Image $cover = null)
    {
        $this->price = $price;
        parent::__construct(self::IMAGE_TABLE, self::IMAGE_FOREIGN_KEY, $id, $name, $description, $images, $cover);
    }

    public function __toString()
    {
        return "Activity with id: $this->id named $this->name";
    }

    /**
     * @throws ActivityNotFound if the activity is not in the database
     * @throws IdNotDefined if the id value is null
     * @throws Exception in case of errors with database communication
     */

     private function  loadDestination(\utilities\DatabaseLayer $db): void {
        if ($this->id === null) {
            throw new IdNotDefined();
        }

        $this->destinations = array();
        $result = $db->executeStatement("SELECT destination FROM offers WHERE activity = ?", array($this->id));

        foreach ($result as $row) {
            $destination = new Destination($row['destination']);
            $destination->loadFromDatabase($db);
            $this->destinations[] = $destination;
        }
    }

    public function loadFromDatabase(\utilities\DatabaseLayer $db): void
    {
        if ($this->id != null) {
            $result = $db->executeStatement("SELECT * FROM activity WHERE id = ?", [$this->id]);

            if (count($result) == 0) {
                throw new ActivityNotFound($this->id);
            }

            $this->name = $result[0]['name'];
            $this->price = $result[0]['price'];
            $this->description = $result[0]['description'];
            $this->loadImages($db);
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
        if (!($this->name == null || $this->price == null || $this->description == null || $this->images == null)) {
            if ($this->id == null) {
                $last_id = $db->executeStatement("SELECT MAX(id) AS last_id FROM activity");
                $this->id = $last_id[0]['last_id'] + 1;
            }

            $db->executeStatement("INSERT INTO activity (id, name, price, description) VALUES (?, ?, ?, ?)", [$this->id, $this->name, $this->price, $this->description]);
            $this->insertImagesIntoDatabase($db);
        } else {
            throw new UndefinedField();
        }
    }

    /**
     * @throws FieldNotLoaded if price value is null
     */
    public function getPrice(): int
    {
        if ($this->price != null) {
            return $this->price;
        } else {
            throw new FieldNotLoaded('price');
        }
    }
    public function getDestinations(): array {
        if ($this->destinations != null) {
            return $this->destinations;
        } else {
            throw new FieldNotLoaded('activities');
        }
    }
}