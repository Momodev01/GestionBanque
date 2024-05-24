<?php

class User extends Model {
    private int $idu;
    private string $nom;
    private string $prenom;
    private string $telephone;
    private string $email;
    private string $pwd;
    private string $justificatif;

    public function __construct() {
        $this->table = "users";
        $this->class = "UserModel";
    }

}