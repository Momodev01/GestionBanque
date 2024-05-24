<?php

class Recu extends Model {
    private int $idr;
    private string $reference;
    private string $type;
    private string $dater;
    private float $montant;

    public function __construct() {
        $this->table = "recu";
        $this->class = "RecuModel";
    }

}