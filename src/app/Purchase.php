<?php
require_once "User.php";
require_once "Date.php";

class Purchase{
    private string $id;
    private Date $moment;
    private ?string $username;
    private ?string $gender;
    private ?Date $date_of_birth;
    private ?string $pw_hash;
    private ?string $email;
    private ?int $numero;
    private ?string $permission;
}