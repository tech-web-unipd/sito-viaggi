<?php

require_once "global.php";
require_once "User.php";

class WrongCredentials extends Exception
{
    public function __construct()
    {
        parent::__construct("Username or password was not correct");
    }
}

class AlreadyLoggedIn extends Exception {
    public function __construct() {
        parent::__construct("There is another running");
    }
}

class UserService
{
    public static function usernameAlreadyExists(string $username, \utilities\DatabaseLayer $db): bool {
        if($db->executeStatement("SELECT username FROM userprofile WHERE username = ?", array($username))[0]['username']) {
            return true;
        } else {
            return false;
        }
    }

    private static function getPassword(string $username, \utilities\DatabaseLayer $db) {
        if(self::usernameAlreadyExists($username, $db)) {
            return $db->executeStatement("SELECT pw_hash FROM userprofile WHERE username = ?", array($username))[0]['pw_hash'];
        } else {
            throw new UserNotFound($username);
        }
    }

    /**
     * @throws AlreadyLoggedIn
     * @throws UserNotFound
     * @throws WrongCredentials
     * @throws UndefinedField
     */
    public static function login(string $username, string $password, \utilities\DatabaseLayer $db): User
    {
        if(session_status() === PHP_SESSION_NONE) {
            $expected_password = self::getPassword($username, $db);
            if(password_verify($password, $expected_password)) {
                $user = new User($username);
                $user->loadFromDatabase($db);
                if(session_start()) {
                    $_SESSION['user'] = $user;
                    $_SESSION['is_admin'] = $user->getPermission() == Permission::ADMIN;
                    return $user;
                } else {
                    throw new Exception("UNABLE TO START SESSION");
                }
            } else {
                throw new WrongCredentials();
            }
        } else {
            throw new AlreadyLoggedIn();
        }
    }

    public static function userRegistration(User $user, \utilities\DatabaseLayer $db) {
        if(!self::usernameAlreadyExists($user->getUsername(), $db)) {
            $user->insertIntoDatabase($db);
        } else {
            throw new UserExistent($user->getUsername());
        }
    }

}