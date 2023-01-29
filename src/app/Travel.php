<?php

namespace components;

use Date;

class ReturnBeforeDeparture extends \Exception {
    public function __construct()
    {
        parent::__construct("Return date is before departure date");
    }
}

class Travel
{
    private int $destination;
    private Date $departure;
    private Date $return;
    private int $price;

    public function __construct(int $destination, Date $departure, Date $return, int $price)
    {
        $this->destination = $destination;
        if($return->isBefore($departure)) throw new ReturnBeforeDeparture();
        $this->departure = $departure;
        $this->return = $return;
        $this->price = $price;
    }

    public function insertIntoDatabase(\utilities\DatabaseLayer $db): void
    {
        $db->executeStatement("INSERT INTO travel (destination, start_date, end_date, price) VALUES (\"$this->destination\", \"$this->departure\", \"$this->return\", \"$this->price\")");
    }

    public function getDeparture(): Date
    {
        return $this->departure;
    }

    public function getDestination(): int
    {
        return $this->destination;
    }

    public function getPrice(): int
    {
        return $this->price;
    }

    public function getReturn(): Date
    {
        return $this->return;
    }
}