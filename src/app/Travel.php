<?php

namespace components;

use Date;

class Travel
{
    private int $destination;
    private Date $departure;
    private Date $return;
    private int $price;

    public function __construct(int $destination, Date $departure, Date $return, int $price)
    {
        $this->destination = $destination;
        $this->departure = $departure;
        $this->return = $return;
        $this->price = $price;
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