<?php
use Exception;

require_once "Date.php";

class PurchaseNotFound extends Exception{
    public function __construct($id)
    {
        parent::__construct("Purchase with id: $id not found");
    }
}

class UndefinedField extends Exception
{
    public function __construct($field)
    {
        parent::__construct("Field $field not loaded");
    }
}

class Purchase
{
    private int $id;
    private ?Date $moment;
    private ?string $username;
    private ?string $card;
    private ?int $destination;
    private ?Date $start_date;
    private ?Date $end_date;
    private ?int $hotel;
    private ?int $airline;

    private ?array $activities;

    public function __construct(int $id, Date $moment = null, string $username = null, string $card = null, int $destination = null, Date $start_date = null, Date $end_date = null, int $hotel = null, int $airline = null, array $activities = []){
        $this->id = $id;
        $this->moment = $moment;
        $this->username = $username;
        $this->card = $card;
        $this->destination = $destination;
        $this->start_date = $start_date;
        $this->end_date = $end_date;
        $this->hotel = $hotel;
        $this->airline = $airline;
        $this->activities = $activities;
    }

    public function insertIntoDatabase(\utilities\DatabaseLayer $db): void
    {
        $db->executeStatement("INSERT INTO purchase (id,moment,username,card,destination,start_date,end_date,hotel,airline) VALUES (\"$this->id\", \"$this->moment\", \"$this->username\", \"$this->card\", \"$this->destination\", \"$this->start_date\", \"$this->end_date\", \"$this->hotel\", \"$this->airline\")");
        
        for($i = 0; $i < count($this->activities); $i++){
            $db->executeStatement("INSERT INTO purchase_activity(purchase,activity) VALUES (\"$this->id\",\"$this->activities[$i]\")");
        }
    
    }

    public function loadFromDatabase(\utilities\DatabaseLayer $db): void
    {
        if($this->id != null){
            $result = $db->executeStatement("SELECT * FROM purchase WHERE id = ?", [$this->id]);

            if (count($result) == 0){
                throw new PurchaseNotFound($this->id);
            }

            $this->id = $result[0]['id'];
            $this->moment = new Date($result[0]['moment']);
            $this->username = $result[0]['username'];
            $this->card = $result[0]['card'];
            $this->destination = $result[0]['destination'];
            $this->start_date = new Date($result[0]['start_date']);
            $this->end_date = new Date($result[0]['end_date']);
            $this->hotel = $result[0]['hotel'];
            $this->airline = $result[0]['airline'];

            $result = $db->executeStatement("SELECT * FROM purchase_activity WHERE purchase = ?", [$this->id]);
            if(count($result) == 0){
                $this->activities = [];
            }else{
                for($i = 0; $i < count($result); $i++){
                    array_push($this->activities, $result[$i]['activity']);
                }
            }

        } else {
            throw new UndefinedField("id");
        }
    }
    public function getId(): int
    {
        if ($this->id) {
            return $this->id;
        } else {
            throw new PurchaseNotFound('id');
        }
    }

    public function getMoment(): Date
    {
        if ($this->moment) {
            return $this->moment;
        } else {
            throw new UndefinedField('moment');
        }
    }

    public function getUsername(): string
    {
        if ($this->username) {
            return $this->username;
        } else {
            throw new UndefinedField('username');
        }
    }
    public function getCard(): string
    {
        if ($this->card) {
            return $this->card;
        } else {
            throw new UndefinedField('card');
        }
    }

    public function getDestination(): int
    {
        if ($this->destination) {
            return $this->destination;
        } else {
            throw new UndefinedField('destination');
        }
    }

    public function getStartDate(): Date
    {
        if ($this->start_date) {
            return $this->start_date;
        } else {
            throw new UndefinedField('start date');
        }
    }

    public function getEndDate(): Date
    {
        if ($this->end_date) {
            return $this->end_date;
        } else {
            throw new UndefinedField('end date');
        }
    }

    public function getHotel(): int
    {
        if ($this->hotel) {
            return $this->hotel;
        } else {
            throw new UndefinedField('hotel');
        }
    }

    public function getAirline(): int
    {
        if ($this->airline) {
            return $this->airline;
        } else {
            throw new UndefinedField('airline');
        }
    }

    public function setId(\utilities\DatabaseLayer $db): void{
        $result = $db->executeStatement("SELECT MAX(id) AS id FROM purchase");
        $this->id = $result[0]['id'];
    }

    public function setMoment(): void
    {
        $this->moment = new Date(date("Y-m-d"));
    }

    public function setCard($card): void
    {
        if($card == null){
            throw new UndefinedField('card');
        } else
            $this->card = $card;
    }

}