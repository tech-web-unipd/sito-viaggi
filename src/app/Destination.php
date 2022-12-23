<?php
class DestinationNotFound extends Exception {
    public function __construct($id) {
        parent::__construct("Destination with id: $id not found");
    }
}
class Destination extends AbstractComponent
{
    private ?string $continent;
    private ?string $state;

    public function __construct(string $id = null, string $name = null, string $description = null, array $images = null, Image $cover = null, string $continent = null, string $state = null) {
        $this->continent = $continent;
        $this->state = $state;
        parent::__construct("image_destination", "destination", $id, $name, $description, $images, $cover);
    }

    /**
     * @throws DestinationNotFound if the destination is not in the database
     * @throws IdNotDefined if the id value is null
     * @throws Exception in case of errors with database communication
     */
    public function loadFromDatabase(DatabaseLayer $db): void
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
        } else {
            throw new IdNotDefined();
        }
    }

    /**
     * @throws UndefinedField if one or more fields are not defined
     * @throws Exception in case of errors with database communication
     */
    public function insertIntoDatabase(DatabaseLayer $db): void
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
}