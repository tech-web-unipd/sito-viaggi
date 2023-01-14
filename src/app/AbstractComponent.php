<?php
namespace components;
use Exception;

require_once "Image.php";

class IdNotDefined extends Exception
{
    public function __construct()
    {
        parent::__construct("Id not defined");
    }
}

class FieldNotLoaded extends Exception
{
    public function __construct($field)
    {
        parent::__construct("Field $field not loaded");
    }
}

class UndefinedField extends Exception
{
    public function __construct()
    {
        parent::__construct("There are on or more fields not defined");
    }
}

abstract class AbstractComponent
{
    protected ?string $id;
    protected ?string $name;
    protected ?string $description;
    private string $image_table;
    private string $image_foreign_key;
    protected ?array $images;
    protected ?Image $cover;

    public function __construct(string $image_table, string $image_foreign_key, string $id = null, string $name = null, string $description = null, array $images = null, Image $cover = null)
    {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        $this->image_table = $image_table;
        $this->image_foreign_key = $image_foreign_key;
        $this->images = $images;
        $this->cover = $cover;
    }

    public abstract function loadFromDatabase(\utilities\DatabaseLayer $db): void;

    public abstract function insertIntoDatabase(\utilities\DatabaseLayer $db): void;

    /**
     * @throws IdNotDefined if the id value is null
     * @throws Exception in case of errors with database communication
     */
    protected function loadImages(\utilities\DatabaseLayer $db): void
    {
        if ($this->id === null) {
            throw new IdNotDefined();
        }
        $this->images = array();
        $results = $db->executeStatement("SELECT * FROM " . $this->image_table . " WHERE " . $this->image_foreign_key . " = ?", [$this->id]);
        foreach ($results as $row) {
            $image = new Image($row['path'], $row['alt'], $row['is_cover']);
            $this->images[] = $image;
            if ($image->is_cover) {
                $this->cover = $image;
            }
        }
    }

    /**
     * @throws UndefinedField if there are on or more fields not defined
     * @throws Exception in case of errors with database communication
     */
    protected function insertImagesIntoDatabase(\utilities\DatabaseLayer $db): void
    {
        if (!($this->images == null)) {
            if ($this->id === null) {
                throw new IdNotDefined();
            }
            if ($this->cover == null) {
                $this->cover = $this->images[0];
                $this->images[0]->is_cover = true;
            }
            foreach ($this->images as $image) {
                $db->executeStatement("INSERT INTO " . $this->image_table . " (path, alt, is_cover, " . $this->image_foreign_key . ") VALUES (?, ?, ?, ?)", [$image->getPath(), $image->getAlt(), $image->is_cover ? 1 : 0, $this->id]);
            }
        } else {
            throw new UndefinedField();
        }
    }

    /**
     * @throws FieldNotLoaded if name value is null
     */
    public function getName(): string
    {
        if ($this->name != null) {
            return $this->name;
        } else {
            throw new FieldNotLoaded('name');
        }
    }

    /**
     * @throws FieldNotLoaded if description value is null
     */
    public function getDescription(): string
    {
        if ($this->description != null) {
            return $this->description;
        } else {
            throw new FieldNotLoaded('description');
        }
    }

    /**
     * @throws FieldNotLoaded if images value is null
     */
    public function getImages(): array
    {
        if ($this->images != null) {
            return $this->images;
        } else {
            throw new FieldNotLoaded('images');
        }
    }

    /**
     * @throws FieldNotLoaded if cover value is null
     */
    public function getCover(): Image
    {
        if ($this->cover != null) {
            return $this->cover;
        } else {
            throw new FieldNotLoaded('cover');
        }
    }
}