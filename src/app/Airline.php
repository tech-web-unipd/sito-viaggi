<?php
namespace components;
use Exception;
use utilities\DatabaseLayer;

class AirlineNotFound extends Exception
{
    public function __construct($id)
    {
        parent::__construct("Airline with id: $id not found");
    }
}

class NameNotDefined extends Exception
{
    public function __construct()
    {
        parent::__construct("Airline name not defined");
    }
}
class Airline
{
    private string $name;
    private ?array $images;
    private ?Image $logo;

    public function __construct(string $name, array $images = null, Image $logo = null)
    {
        $this->name = $name;
        $this->images = $images;
        $this->logo = $logo;
    }

    public function __toString()
    {
        return "Airline named $this->name";
    }

    /**
     * @throws Exception in case of errors with database communication
     */
    public function loadImages(DatabaseLayer $db) {
        $result = $db->executeStatement("SELECT * FROM image_airline WHERE airline = ?", [$this->name]);
        foreach ($result as $row) {
            $this->images[] = new Image($row['path'], $row['alt'], $row['is_cover']);
            if(end($this->images)->is_cover) {
                $this->logo = end($this->images);
            }
        }

        if($this->logo == null) {
            $this->logo = $this->images[0];
        }
    }

    /**
     * @throws Exception in case of errors with database communication
     */
    private function insertImagesIntoDatabase(DatabaseLayer $db) {
        foreach ($this->images as $image) {
            $db->executeStatement("INSERT INTO image_airline (path, alt, is_cover, airline) VALUES (?, ?, ?, ?)", [$image->getPath(), $image->getAlt(), $image->is_cover, $this->name]);
        }
    }

    /**
     * @throws Exception in case of errors with database communication
     */
    public function insertIntoDatabase(DatabaseLayer $db) {
        $db->executeStatement("INSERT INTO airline (name) VALUES (?)", [$this->name]);
        $this->insertImagesIntoDatabase($db);
    }

    /**
     * @throws NameNotDefined
     */
    public function getName(): string {
        if($this->name != null) {
            return $this->name;
        } else {
            throw new NameNotDefined();
        }
    }

    private function isThereSpan($string): bool {
        $pattern_begin = "<span";
        $pattern_end = "</span>";
        $pattern = sprintf("~(%s)(.*)>(.*)(%s)~", $pattern_begin, $pattern_end);
        return preg_match_all($pattern, $string);
    }

    public function getNameWithoutSpan(): string {
        if($this->name != null) {
            $name = $this->name;
            if($this->isThereSpan($name)) {
                $name = str_replace("</span>", "", $name);
                $name = preg_replace("~(<span)(.*)(>)~", "", $name);
            }
            return $name;
        } else {
            throw new NameNotDefined();
        }
    }

    public function getLogo(): Image {
        if($this->logo != null) {
            return $this->logo;
        } else {
            throw new NameNotDefined();
        }
    }
}