<?php

 
class Demande extends Model {
    private int $idd;
    private string $dated;

    public function __construct() {
        $this->table = "demande";
        $this->class = "DemandeModel";
    }


}