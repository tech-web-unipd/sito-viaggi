<?php

class Date
{
    private int $day;
    private int $month;
    private int $year;

    public function __construct(string $date)
    {
        $this->day = (int)substr($date, 8, 2);
        $this->month = (int)substr($date, 5, 2);
        $this->year = (int)substr($date, 0, 4);
    }

    public function __toString()
    {
        return "$this->year-$this->month-$this->day";
    }
}