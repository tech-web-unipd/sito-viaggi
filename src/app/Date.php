<?php

class Date
{
    private string $day;
    private string $month;
    private string $year;

    public function __construct(string $date)
    {
        if(substr($date, 8, 2)) $this->day = substr($date, 8, 2);
        else $this->day = "01";
        $this->month = substr($date, 5, 2);
        $this->year = substr($date, 0, 4);
    }

    public function __toString()
    {
        return "$this->year-$this->month-$this->day";
    }

    public function isBefore(Date $date): bool
    {
        if ($this->year < $date->year) {
            return true;
        } elseif ($this->year == $date->year) {
            if ($this->month < $date->month) {
                return true;
            } elseif ($this->month == $date->month) {
                if ($this->day < $date->day) {
                    return true;
                }
            }
        }
        return false;
    }
}