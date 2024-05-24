<?php

abstract class Model {
    protected $table;
    protected $class;
    protected \PDO $msqlClient;

    public function findAll() {
        $SQL_SELECT_ALL = "SELECT * FROM $this->table";
        
        $result = $this->openConnexion()-> query($SQL_SELECT_ALL, PDO::FETCH_ASSOC);
        $recup = $result->fetchAll(PDO::FETCH_CLASS, $this->class);
        return $recup;
    }
    protected function openConnexion() {
        return new PDO (
            "mysql:host=localhost;dbname=gesbank",
            "root",
            "" 
        );
    }
}