<?php
require_once './lib/DatabaseLayer.php';
require_once './app/Image.php';

class ActivityNotFound extends Exception {
    public function __construct($id) {
        parent::__construct("Activity with id: $id not found");
    }
}
class FieldNotLoaded extends Exception {
    public function __construct($field) {
        parent::__construct("Field $field not loaded");
    }
}
class IdNotDefined extends Exception {
    public function __construct() {
        parent::__construct("Id not defined");
    }
}
class UndefinedField extends Exception {
    public function __construct() {
        parent::__construct("There are on or more fields not defined");
    }
}
class Activity
{
    private string $id;
    private string $name;
    private int $price;
    private string $description;
    private array $images;
    private Image $cover;

    public function __construct(string $id = null, string $name = null, int $price = null, string $description = null, array $images = null, Image $cover = null)
    {
        $this->id = $id;
        $this->name = $name;
        $this->price = $price;
        $this->description = $description;
        $this->images = $images;
        $this->cover = $cover;
    }

    public function __toString()
    {
        return "Activity with id: $this->id named $this->name";
    }

    /**
     * @throws Exception in case of errors with database communication
     */
    private function loadImages(DatabaseLayer $db): void {
        $this->images = array();
        $results = $db->executeStatement("SELECT * FROM image_activity WHERE activity = ?", [$this->id]);
        foreach ($results as $row) {
            $image = new Image($row['path'], $row['alt'], $row['is_cover']);
            $this->images[] = $image;
            if($image->is_cover) {
                $this->cover = $image;
            }
        }
    }

    /**
     * @throws ActivityNotFound if the activity is not in the database
     * @throws IdNotDefined if the id value is null
     * @throws Exception in case of errors with database communication
     */
    public function loadFromDatabase(DatabaseLayer $db): void {
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
     * @throws Exception in case of errors with database communication
     */
    private function insertImagesIntoDatabase(DatabaseLayer $db): void {
        if (!($this->images == null)) {
            if($this->cover == null) {
                $this->cover = $this->images[0];
                $this->images[0]->is_cover = true;
            }
            foreach ($this->images as $image) {
                $db->executeStatement("INSERT INTO image_activity (path, alt, is_cover, activity) VALUES (?, ?, ?, ?)", [$image->path, $image->alt, $image->is_cover, $this->id]);
            }
        } else {
            throw new UndefinedField();
        }
    }

    /**
     * @throws UndefinedField if one or more fields are not defined
     * @throws Exception in case of errors with database communication
     */
    public function saveIntoDatabase(DatabaseLayer $db): void {
        if (!($this->name == null || $this->price == null || $this->description == null || $this->images == null)) {
            if($this->id == null) {
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
     * @throws FieldNotLoaded if name value is null
     */
    public function getName(): string {
        if($this->name != null) {
            return $this->name;
        } else {
            throw new FieldNotLoaded('name');
        }
    }

    /**
     * @throws FieldNotLoaded if price value is null
     */
    public function getPrice(): int {
        if($this->price != null) {
            return $this->price;
        } else {
            throw new FieldNotLoaded('price');
        }
    }

    /**
     * @throws FieldNotLoaded if description value is null
     */
    public function getDescription(): string {
        if ($this->description != null) {
            return $this->description;
        } else {
            throw new FieldNotLoaded('description');
        }
    }

    /**
     * @throws FieldNotLoaded if images value is null
     */
    public function getImages(): array {
        if ($this->images != null) {
            return $this->images;
        } else {
            throw new FieldNotLoaded('images');
        }
    }

    /**
     * @throws FieldNotLoaded if cover value is null
     */
    public function getCover(): Image {
        if ($this->cover != null) {
            return $this->cover;
        } else {
            throw new FieldNotLoaded('cover');
        }
    }
}