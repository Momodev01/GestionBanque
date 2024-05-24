<?php

class Transaction extends Model {
    private int $idtr;
    private string $datetr;
    private float $montant;
    private string $type;

    public function __construct() {
        $this->table = "transaction";
        $this->class = "TransactionModel";
    }

}