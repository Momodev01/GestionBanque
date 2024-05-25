<?php

class Agence extends Model {
    private $ida;
    private $numero;
    private $adresse;

    public function __construct() {
        $this->table = "agence";
        $this->class = "AgenceModel";
    }

    public function getAida() {
        return $this->ida;
    }
}