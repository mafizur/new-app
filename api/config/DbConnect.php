<?php

/**
 * Handling database connection
 *
 * @author Ravi Tamada
 * @link URL Tutorial link
 */
class DbConnect {

    private $conn;

    function __construct() {        
    }

    /**
     * Establishing database connection
     * @return database connection handler
     */
    function connect() {
        // Connecting to mysql database
        /*$this->conn = new mysqli(getenv("DB_HOST"), getenv("DB_USER"), getenv("DB_PASSWORD"), getenv("DB_NAME"));

        // Check for database connection error
        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }*/

        $dsn = 'mysql:host='.getenv("DB_HOST").';dbname='.getenv("DB_NAME").';charset=utf8';
        $usr = getenv("DB_USER");
        $pwd = getenv("DB_PASSWORD");

        $this->conn = new \Slim\PDO\Database($dsn, $usr, $pwd);

        // returing connection resource
        return $this->conn;
    }
}

?>
