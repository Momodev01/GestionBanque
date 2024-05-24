<?php

class Compte extends Model {
    private int $idc;
    private string $numero;
    private float $solde;
    private string $dateCrea;
    private float $taux;
    private float $frais;
    private string $etat;

    public function __construct() {
        $this->table = "compte";
        $this->class = "CompteModel";
    }

}