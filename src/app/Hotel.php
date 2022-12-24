<?php
class HotelNotFound extends Exception
{
    public function __construct($id)
    {
        parent::__construct("Hotel with id: $id not found");
    }
}
class Hotel extends AbstractComponent
{
    private const IMAGE_TABLE = "image_hotel";
    private const IMAGE_FOREIGN_KEY = "hotel";
    private ?string $link;

    public function __construct(string $id = null, string $name = null, string $link = null, string $description = null, array $images = null, Image $cover = null)
    {
        $this->link = $link;
        parent::__construct(self::IMAGE_TABLE, self::IMAGE_FOREIGN_KEY, $id, $name, $description, $images, $cover);
    }

    public function __toString()
    {
        return "Hotel with id: $this->id named $this->name";
    }
    /**
     * @throws HotelNotFound if the hotel is not in the database
     * @throws IdNotDefined if the id value is null
     * @throws Exception in case of errors with database communication
     */
    public function loadFromDatabase(DatabaseLayer $db): void
    {
        if ($this->id != null) {
            $result = $db->executeStatement("SELECT * FROM hotel WHERE id = ?", [$this->id]);

            if (count($result) == 0) {
                throw new HotelNotFound($this->id);
            }

            $this->name = $result[0]['name'];
            $this->link = $result[0]['link'];
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
        if (!($this->name == null || $this->link == null || $this->description == null || $this->images == null)) {
            if ($this->id == null) {
                $last_id = $db->executeStatement("SELECT MAX(id) AS last_id FROM hotel");
                $this->id = $last_id[0]['last_id'] + 1;
            }

            $db->executeStatement("INSERT INTO hotel (id, name, link, description) VALUES (?, ?, ?, ?)", [$this->id, $this->name, $this->link, $this->description]);
            $this->insertImagesIntoDatabase($db);
        } else {
            throw new UndefinedField();
        }
    }

    /**
     * @throws FieldNotLoaded if link is not loaded
     */
    public function getLink(): string
    {
        if($this->link != null) {
            return $this->link;
        } else {
            throw new FieldNotLoaded('link');
        }
    }
}