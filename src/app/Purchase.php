<?php
use Exception;

require_once "Date.php";

class PurchaseNotFound extends Exception{
    public function __construct($id)
    {
        parent::__construct("Purchase with id: $id not found");
    }
}

class UndefinedFieldPurchase extends Exception
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
    private ?string $airline;

    private ?float $price;

    private ?array $activities;

    private ?string $cvc;
    private ?Date $expiration;
    private ?string $name;
    private ?string $surname;
   

    public function __construct(int $id, Date $moment = null, string $username = null, string $card = null, int $destination = null, Date $start_date = null, Date $end_date = null, int $hotel = null, string $airline = null, array $activities = [], float $price = null, string $cvc = null, Date $expiration = null, string $name = null, string $surname = null){
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
        $this->price = $price;
        $this->cvc = $cvc;
        $this->expiration = $expiration;    
        $this->name = $name;
        $this->surname = $surname;    
    }

    public function insertIntoDatabase(\utilities\DatabaseLayer $db): void
    {
        $result = $db->executeStatement("SELECT * FROM payment_method WHERE card_number = ?", [$this->card]);
        if(count($result) == 0){
            $db->executeStatement("INSERT INTO payment_method(card_number,cvc,expiration,name,surname,username) VALUES(\"$this->card\", \"$this->cvc\",\"$this->expiration\",\"$this->name\",\"$this->surname\",\"$this->username\")");
        }
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

            $result = $db->executeStatement("SELECT * FROM payment_method WHERE card_number = ?", [$this->card]);
            $this->cvc = $result[0]['cvc'];
            $this->expiration = $result[0]['expiration'];
            $this->name = $result[0]['name'];
            $this->surname = $result[0]['surname'];

        } else {
            throw new UndefinedFieldPurchase("id");
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
            throw new UndefinedFieldPurchase('moment');
        }
    }

    public function getUsername(): string
    {
        if ($this->username) {
            return $this->username;
        } else {
            throw new UndefinedFieldPurchase('username');
        }
    }
    public function getCard(): string
    {
        if ($this->card) {
            return $this->card;
        } else {
            throw new UndefinedFieldPurchase('card');
        }
    }

    public function getDestination(): int
    {
        if ($this->destination) {
            return $this->destination;
        } else {
            throw new UndefinedFieldPurchase('destination');
        }
    }

    public function getStartDate(): Date
    {
        if ($this->start_date) {
            return $this->start_date;
        } else {
            throw new UndefinedFieldPurchase('start date');
        }
    }

    public function getEndDate(): Date
    {
        if ($this->end_date) {
            return $this->end_date;
        } else {
            throw new UndefinedFieldPurchase('end date');
        }
    }

    public function getHotel(): string
    {
        if ($this->hotel) {
            return $this->hotel;
        } else {
            throw new UndefinedFieldPurchase('hotel');
        }
    }

    public function getAirline(): string
    {
        if ($this->airline) {
            return $this->airline;
        } else {
            throw new UndefinedFieldPurchase('airline');
        }
    }

    public function getPrice(\utilities\DatabaseLayer $db): float
    {
        if($this->price == null){
            $price_travel = $db->executeStatement("SELECT T.price as price FROM travel as T, WHERE D.id = T.destination AND T.destination = ? AND T.start = ? AND T.end = ?", [$this->destination, $this->start_date, $this->end_date]);
            $price_activities = (float) 0;
            foreach($this->activities as $activity){
                $price_activity = $db->executeStatement("SELECT A.price as price FROM purchase_activity as PA, activity as A WHERE PA.activity = A.id and PA.purchase = ? AND PA.activity = ?",[$this->id, $activity]);
                $price_activities += (float)($price_activity[0]['price']);
            }
            $this->price = $price_travel + $price_activities;
        }
        return $this->price;
    }

    public function getActivities(): array
    {
        return $this->activities;
    }

    public function getName(): string
    {
        if ($this->name) {
            return $this->name;
        } else {
            throw new UndefinedFieldPurchase('name');
        }
    }

    public function getSurname(): string
    {
        if ($this->surname) {
            return $this->surname;
        } else {
            throw new UndefinedFieldPurchase('surname');
        }
    }
    public function setId(\utilities\DatabaseLayer $db): void{
        $result = $db->executeStatement("SELECT MAX(id) AS id FROM purchase");
        if(count($result) == 0){
            $this->id = 1;
        }else{
            $id_max = (int)$result[0]['id'];
            $this->id = $id_max + 1;
        }
    }

    public function setMoment(): void
    {
        $this->moment = new Date(date("Y-m-d"));
    }

    public function setCard($card): void
    {
        if($card == null){
            throw new UndefinedFieldPurchase('card');
        } else
            $this->card = $card;
    }

    public function setCvc($cvc): void
    {
        if($cvc == null){
            throw new UndefinedFieldPurchase('cvc');
        } else
            $this->cvc = $cvc;
    }

    public function setExpiration($expiration): void
    {
        if($expiration == null){
            throw new UndefinedFieldPurchase('exxpiration');
        } else
            $this->expiration = $expiration;
    }

    public function setName($name): void
    {
        if($name == null){
            throw new UndefinedFieldPurchase('name');
        } else
            $this->name = $name;
    }

    public function setSurname($surname): void
    {
        if($surname == null){
            throw new UndefinedFieldPurchase('surname');
        } else
            $this->surname = $surname;
    }
}
