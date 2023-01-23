<?php
use Exception;

require_once "Date.php";

class UserNotFound extends Exception
{
    public function __construct($username)
    {
        parent::__construct("User with username: $username not found");
    }
}

class UserIsUnderage extends Exception
{
    public function __construct()
    {
        parent::__construct("User is underage");
    }
}

class UserExistent extends Exception
{
    public function __construct($username)
    {
        parent::__construct("User with username: $username already exists");
    }
}

class UndefinedField extends Exception
{
    public function __construct($field)
    {
        parent::__construct("Field $field not loaded");
    }
}

class WrongField extends Exception
{
    public function __construct($field)
    {
        parent::__construct("$field is wrong");
    }
}

class ErrorOccured extends Exception
{
    public function __construct($field)
    {
        parent::__construct("Some error occured while modifying field: $field");
    }
}




abstract class Sex
{
    const MALE = "M";
    const WOMAN = "W";
    const UNDEFINED = "U";

    public function __toString()
    {
        return "$this";
    }
}

abstract class Permission
{
    const USER = "user";
    const ADMIN = "admin";
}


class User
{

    private string $username;
    private ?string $name;
    private ?string $surname;
    private ?string $gender;
    private ?Date $date_of_birth;
    private ?string $pw_hash;
    private ?string $email;
    private ?int $numero;
    private ?string $permission;


    public function __construct(string $username, string $permission = null, string $name = null, string $surname = null, string $gender = null, Date $date_of_birth = null, string $email = null, int $phone_number = null, string $password = null)
    {
        $this->username = $username;
        $this->name = $name;
        $this->surname = $surname;
        $this->gender = $gender;
        $this->date_of_birth = $date_of_birth;
        $this->pw_hash = password_hash($password, PASSWORD_DEFAULT);
        $this->email = $email;
        $this->numero = $phone_number;
        $this->permission = $permission;
    }

    public function userAge(): string
    {
        $dateOfBirth = $this->date_of_birth;
        $today = date("Y-m-d");
        $diff = date_diff(date_create($dateOfBirth), date_create($today));
        return $diff->format('%y');

    }

    public function insertIntoDatabase(\utilities\DatabaseLayer $db): void
    {
        $db->executeStatement("INSERT INTO userprofile (username, name, surname, gender, date_of_birth, pw_hash, email, numero, permission) VALUES (\"$this->username\", \"$this->name\", \"$this->surname\", \"$this->gender\", \"$this->date_of_birth\", \"$this->pw_hash\", \"$this->email\", \"$this->numero\", \"$this->permission\")");
    }

    public function loadFromDatabase(\utilities\DatabaseLayer $db): void
    {
        if ($this->username != null) {
            $result = $db->executeStatement("SELECT * FROM userprofile WHERE username = ?", [$this->username]);

            if (count($result) == 0) {
                throw new UserNotFound($this->username);
            }

            $this->username = $result[0]['username'];
            $this->name = $result[0]['name'];
            $this->surname = $result[0]['surname'];
            $this->gender = $result[0]['gender'];
            $this->date_of_birth = new Date($result[0]['date_of_birth']);
            $this->pw_hash = $result[0]['pw_hash'];
            $this->email = $result[0]['email'];
            $this->numero = $result[0]['numero'];
            $this->permission = $result[0]['permission'];

        } else {
            throw new UndefinedField("username");
        }
    }

    public function getPermission(): string
    {
        if ($this->permission) {
            return $this->permission;
        } else {
            throw new UndefinedField('permission');
        }
    }

    public function getUsername(): string
    {
        if ($this->username) {
            return $this->username;
        } else {
            throw new UserNotFound('username');
        }
    }

    public function getName(): string
    {
        if ($this->name) {
            return $this->name;
        } else {
            throw new UndefinedField('name');
        }
    }

    public function getSurname(): string
    {
        if ($this->surname) {
            return $this->surname;
        } else {
            throw new UndefinedField('surname');
        }
    }

    public function getGender(): Sex
    {
        if ($this->gender) {
            return $this->gender;
        } else {
            throw new UndefinedField('gender');
        }
    }

    public function getNumber(): int
    {
        if ($this->numero) {
            return $this->numero;
        } else {
            throw new UndefinedField('numero');
        }
    }
    public function getDateOfBirth(): string
    {
        if ($this->date_of_birth) {
            return $this->date_of_birth;
        } else {
            throw new UndefinedField('date of birth');
        }
    }
    public function getEmail(): string
    {
        if ($this->email) {
            return $this->email;
        } else {
            throw new UndefinedField('email');
        }
    }

    public function getPwHash(): string
    {
        if ($this->pw_hash) {
            return $this->pw_hash;
        } else {
            throw new UndefinedField('pw_hash');
        }
    }

    //funzioni per la modifica dei singoli campi ---> modifico l'oggetto di invocazione ---> cancello/sostituisco quella nel database con quella nuova

    public function modPassword($pw_typed, \utilities\DatabaseLayer $db)
    {
        $new_pw = password_hash($pw_typed, PASSWORD_DEFAULT);
        $this->pw_hash = $new_pw;
        if ($db->executeStatement("UPDATE userprofile SET pw_hash = $this->pw_hash WHERE username = $this->username")) {
            return true;
        } else {
            throw new ErrorOccured('password');
        }
    }

    public function modUsername($username_typed, \utilities\DatabaseLayer $db)
    {
        if (!($db->executeStatement("SELECT username AS username_existent FROM userprofile WHERE username = $this->username"))) {
            $old_username = $this->username;
            $this->username = $username_typed;
            if ($db->executeStatement("UPDATE userprofile SET username = $this->username WHERE username = $old_username")) {
                return true;
            } else {
                throw new ErrorOccured('username');
            }
        } else {
            throw new UserNotFound($this->username);
        }

    }

    public function modName($name_typed, \utilities\DatabaseLayer $db)
    {
        $this->name = $name_typed;
        if ($db->executeStatement("UPDATE userprofile SET name = $this->name WHERE username = $this->username")) {
            return true;
        } else {
            throw new ErrorOccured('name');
        }
    }

    public function modSurname($surname_typed, \utilities\DatabaseLayer $db)
    {
        $this->surname = $surname_typed;
        if ($db->executeStatement("UPDATE userprofile SET surname = $this->surname WHERE username = $this->username")) {
            return true;
        } else {
            throw new ErrorOccured('surname');
        }
    }

    public function __toString()
    {
        return "$this->name, $this->surname, $this->gender";
    }


    public function modGender($gender_typed, \utilities\DatabaseLayer $db)
    {
        $this->gender = $gender_typed;
        $new_gender = $this->__toString();
        if ($db->executeStatement("UPDATE userprofile SET gender = $new_gender WHERE username = $this->username")) {
            return true;
        } else {
            throw new ErrorOccured('gender');
        }
    }



    public function modEmail($email_typed, \utilities\DatabaseLayer $db)
    {
        $this->email = $email_typed;
        if ($db->executeStatement("UPDATE userprofile SET email = $this->email WHERE username = $this->username")) {
            return true;
        } else {
            throw new ErrorOccured('email');
        }
    }


    public function modNumero($numero_typed, \utilities\DatabaseLayer $db)
    {
        $this->numero = $numero_typed;
        if ($db->executeStatement("UPDATE userprofile SET numero = $this->numero WHERE username = $this->username")) {
            return true;
        } else {
            throw new ErrorOccured('numero');
        }
    }

    public function modDateOfBirth(Date $date_of_birth_typed, \utilities\DatabaseLayer $db)
    {
        $this->date_of_birth = $date_of_birth_typed;
        if ($db->executeStatement("UPDATE userprofile SET date_of_bith = $this->date_of_birth WHERE username = $this->username")) {
            return true;
        } else {
            throw new ErrorOccured('date_of_birth');
        }
    }

}