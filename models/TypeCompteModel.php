<?php

class TypeCompte extends Model {
    protected int $idtc;
    protected string $libtc;

    public function __construct() {
        $this->table = "typecpt";
        $this->class = "TypeCompteModel";
    }

}
