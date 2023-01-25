<?php
use Exception;

class PurchaseActivityNotFound extends Exception{
    public function __construct()
    {
        parent::__construct("Activity of the purchase not found");
    }
}

class UndefinedField extends Exception
{
    public function __construct($field)
    {
        parent::__construct("Field $field not loaded");
    }
}

class PurchaseActivity{
    private int $purchase;
    private int $activity;
    
    public function __construct(int $purchase, int $activity){
        $this->purchase = $purchase;
        $this->activity = $activity;
    }

    public function insertIntoDatabase(\utilities\DatabaseLayer $db): void
    {
        $db->executeStatement("INSERT INTO purchase_activity(purchase,activity) VALUES (\"$this->purchase\", \"$this->activity\")");
    }

    public function loadFromDatabase(\utilities\DatabaseLayer $db): 
    /* Siccome mi ritorna da 0 a x colonne dove x sono le attivita per quel viaggio, non posso impostare qui i campi*/
    {
        if($this->purchase != null){
            $result = $db->executeStatement("SELECT * FROM purchase_activity WHERE purchase = ?", [$this->purchase]," AND activity = ?", [$this->activity]);

            if(count($result) == 0){
                throw new PurchaseActivityNotFound();
            }
            return $result;
        }else {
            throw new UndefinedField("purchase");
        }
    }

    public function getPurchase(): int
    {
        if ($this->purchase) {
            return $this->purchase;
        } else {
            throw new UndefinedField('purchase');
        }
    }

    public function getActivity(): int
    {
        if ($this->activity) {
            return $this->activity;
        } else {
            throw new UndefinedField('activity');
        }
    }
}