<?php

class Profil extends Model {
    private int $idp;
    private string $libp;

    public function __construct() {
            $this->table = "profil";
            $this->class = "ProfilModel"; 
    }
}