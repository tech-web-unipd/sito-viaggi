<?php
namespace components;

use http\Exception;
use utilities\DatabaseLayer;

require_once "AbstractComponent.php";

class BasicDestination extends AbstractComponent
{
    private const IMAGE_TABLE = "image_destination";
    private const IMAGE_FOREIGN_KEY = "destination";
    protected ?string $continent;
    protected ?string $primary_type;
    protected ?string $secondary_type;
    protected ?int $purchased;

    public function __construct(string $id = null, string $name = null, string $description = null, array $images = null, Image $cover = null, string $continent = null, string $primary_type = null, string $secondary_type = null, int $purchased = null)
    {
        parent::__construct(self::IMAGE_TABLE, self::IMAGE_FOREIGN_KEY, $id, $name, $description, $images, $cover);
        $this->continent = $continent;
        $this->primary_type = $primary_type;
        $this->secondary_type = $secondary_type;
        $this->purchased = $purchased;
    }

    public function loadFromDatabase(DatabaseLayer $db): void
    {
        if ($this->id != null) {
            $result = $db->executeStatement("SELECT * FROM destination WHERE id = ?", [$this->id]);

            if (count($result) == 0) {
                throw new DestinationNotFound($this->id);
            }

            $this->name = $result[0]['name'];
            $this->continent = $result[0]['continent'];
            $this->description = $result[0]['description'];
            $this->loadImages($db);
            $this->primary_type = $result[0]['primary_type'];
            $this->secondary_type = $result[0]['secondary_type'];
            $this->purchased = $result[0]['purchased'];
        } else {
            throw new IdNotDefined();
        }
    }

    public function insertIntoDatabase(DatabaseLayer $db): void
    {
        throw new \Exception("You can insert only complete destinations");
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
     * @throws FieldNotLoaded if primary type value is null
     */
    public function getPrimaryType(): string {
        if ($this->primary_type != null) {
            return $this->primary_type;
        } else {
            throw new FieldNotLoaded('primary type');
        }
    }

    /**
     * @throws FieldNotLoaded if secondary type value is null
     */
    public function getSecondaryType(): string {
        if ($this->secondary_type != null) {
            return $this->secondary_type;
        } else {
            throw new FieldNotLoaded('primary type');
        }
    }

    public function getPurchased(): int{
        if ($this->purchased != null) {
            return $this->purchased;
        } else {
            throw new FieldNotLoaded('purchased');
        }
    }

    public function updatePurchased(DatabaseLayer $db): void{
        $this->purchased += 1;
        $db->executeStatement("UPDATE destination as D SET D.purchased = $this->purchased WHERE D.id = $this->id");
    }
}