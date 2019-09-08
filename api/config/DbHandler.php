<?php

/**
 * Class to handle all db operations
 * This class will have CRUD methods for database tables
 *
 * @author Bilas
 * @link URL
 */
class DbHandler {

    private $conn;

    function __construct(\Slim\App $app) {
        $this->conn = $app->getContainer()->get('db');
    }

    /* ------------- `users` table method ------------------ */

    /**
     * Creating new user
     * @param String $name User full name
     * @param String $password User login password
     */
    public function createUser($user_name, $password) {
        //require_once 'PassHash.php';
        $response = array();

        // First check if user already existed in db
        if (!$this->isUserExists($user_name)) {
            // insert query
            $stmt = $this->conn->prepare("INSERT INTO user_passwd(user_name, password, token) values(:user_name, :password)");
            $result = $stmt->execute(array(
                'user_name' => $user_name,
                'password' => $password
            ));

            // Check for successful insertion
            if ($result) {
                // User successfully inserted
                return USER_CREATED_SUCCESSFULLY;
            } else {
                // Failed to create user
                return USER_CREATE_FAILED;
            }
        } else {
            // User with same email already existed in the db
            return USER_ALREADY_EXISTED;
        }

        return $response;
    }

    /**
     * Checking user login
     * @param String $user_name User login email id
     * @param String $password User login password
     * @return boolean User login status success/fail
     */
    public function checkLogin($user_name, $password) {

        // $stmt = $this->conn->prepare("SELECT id FROM users WHERE email = :username AND password = :password_hash");     
        $stmt = $this->conn->prepare("SELECT id FROM users WHERE email = '$user_name' AND password = '".md5($password)."'");        
        $stmt->execute();
        $result = $stmt->fetchColumn();
        //return $stmt->debugDumpParams();
        return $result;
    }

    public function logout($user = array()) {
        
        if (!$user || empty($user['id'])) {
            return array('error' => true,'message' => 'Invalid data');
        }
        $sql = "UPDATE users 
                SET token = '', token_expire = '' 
                WHERE id = :id";

        $stmt = $this->conn->prepare($sql);
        $stmt->execute(array('id' => $user['id']));

        return array('error' => false, 'message' => 'Successfully logout');
    }

    /**
     * Checking user login
     * @param String $user_name User login email id
     * @param String $password User login password
     * @return boolean User login status success/fail
     */
    public function checkDoctorLogin($user_name, $password) {

        $role_id = 8;
        $user = $this->getUserByUserName($user_name, $role_id);
        if (!$user) {
            return false;
        }
        $password = $this->check_password($password, $user[0]['password_hash']);
        // print_r($password); exit();
        if (!$password) {
            return false;
        }
        

        return $user[0]['id'];
    }


    public function check_password($password, $hash) {
        
        // Load the password hash library
        if ( ! class_exists('PasswordHash')){
            require(dirname(__FILE__) .'/PasswordHash.php');

        }
        // Try password
        $hasher = new PasswordHash(-1, false);

        $return = $hasher->CheckPassword($password, $hash);
        unset($hasher);

        return $return;
    }

    /**
     * Checking for duplicate user by user name
     * @param String $user_name
     * @return boolean
     */
    private function isUserExists($user_name) {
        $stmt = $this->conn->prepare("SELECT id from user_passwd WHERE user_name = :user_name");
        $stmt->bindParam("user_name", $user_name);
        $stmt->execute();
        return $stmt->fetchColumn();
    }

    /**
     * Fetching user by email
     * @param String $email User email id
     */
    public function getUserByUserName($user_name, $role_id) {
        $stmt = $this->conn->prepare("SELECT username, id, password_hash, token FROM bf_users WHERE username = :user_name AND role_id = :role");
        $stmt->bindParam("user_name", $user_name);
        $stmt->bindParam("role", $role_id);
        $stmt->execute();

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result ? $result : null;
    }

    /**
     * Fetching user api key
     * @param String $user_id user id primary key in user table
     */
    public function getApiKeyById($user_id) {
        $stmt = $this->conn->prepare("SELECT token FROM user_passwd WHERE id = :id");
        $stmt->execute(array('id' => $user_id));
        return $stmt->fetchColumn();
    }

    /**
     * Fetching user id by api key
     * @param String $api_key user api key
     */
    public function getUserId($api_key) {

        $stmt = $this->conn->prepare("SELECT id FROM bf_users WHERE token = :token");
        $stmt->execute(array('token' => $api_key));
        return $stmt->fetchColumn();
    }

    /**
     * Validating user api key
     * If the api key is there in db, it is a valid key
     * @param String $api_key user api key
     * @return boolean
     */
    public function isValidApiKey($api_key) {
        $stmt = $this->conn->prepare("SELECT token_expire FROM user_passwd WHERE token = :token");
        $stmt->execute(array('token' => $api_key));
        $tokenExpire = $stmt->fetchColumn();

        return $tokenExpire > time();
    }

    /**
     * Generating random Unique MD5 String for user Api key
     */
    private function generateApiKey() {
        return md5(uniqid(rand(), true));
    }

    

    function return_next_id( $field_name, $table_name, $increment = 0 )
    {
        $queryText = "select max(".$field_name.") as ".$field_name."  from ".$table_name." "  ;
        $stmt = $this->conn->prepare(sprintf("SELECT MAX(%s) FROM %s", $field_name, $table_name));
        $stmt->execute();
        return $stmt->fetchColumn() + $increment;
    }

    public function is_duplicate_field( $field_name, $table_name, $query_cond ){
        $stmt = $this->conn->query("select ".$field_name." from ".$table_name." where ".$query_cond);
        $nameArray = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $nameArray ? 1 : 0;
    }

    public function userDetailsById($userId) {
        $stmt = $this->conn->prepare("SELECT * FROM user_passwd WHERE id = :id");
        $stmt->execute(array('id' => $userId));
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $result;
    }

    public function return_field_value ($field_name, $table_name, $query_cond) {
        $sql = sprintf("select %s from %s where %s", $field_name, $table_name, $query_cond);
        $stmt = $this->conn->query($sql);
        return $stmt->fetchColumn();
    }

    public function rangeMonth($dateStr) {
        date_default_timezone_set(date_default_timezone_get());
        $dt = strtotime($dateStr);
        $res['start'] = date('Y-m-d', strtotime('first day of this month', $dt));
        $res['end'] = date('Y-m-d', strtotime('last day of this month', $dt));
        return $res;
    }

    public function change_date_format($date, $new_format, $new_sep) {
        if ($new_sep == "") $new_sep = "-";
        if ($new_format == "") $new_format = "dd-mm-yyyy";
        if ($date == "" || $date == "0000-00-00") $date = "0000-00-00";
        $year = date("Y",strtotime($date));
        $mon = date("m",strtotime($date));
        $day = date("d",strtotime($date));
        //return $year;die;

        if ($new_format=="yyyy-mm-dd") {  // yyyy-mm-dd
            $dd= $year.$new_sep.$mon.$new_sep.$day ;
            if ($dd=="1970-01-01" || $dd=="01-01-1970") return "";
            else return $dd;
        }
        else if ($new_format=="dd-mm-yyyy") {  // dd-mm-yyyy
            $dd= $day.$new_sep.$mon.$new_sep.$year ;
            if ($dd=="1970-01-01" || $dd=="01-01-1970") return ""; else return $dd;
        }

        die;
    }

    public function add_time($event_time,$event_length) {
        $timestamp = strtotime("$event_time");
        $etime = strtotime("+$event_length minutes", $timestamp);
        $etime = date('H:i:s', $etime);
        return $etime;
    }


    public function getUserInfo($userId) {
        $stmt = $this->conn->prepare("
            SELECT id,name,email,mobile
            FROM users             
            WHERE id = :id
        ");

        $stmt->execute(array('id' => $userId));
        $data = $stmt->fetch(\PDO::FETCH_ASSOC);

        return $data;
    }

    public function getDoctorInfo($userId) {
        $stmt = $this->conn->prepare("
            SELECT id,employee_id, username
            FROM bf_users             
            WHERE id = :user_id
        ");

        $stmt->execute(array('user_id' => $userId));
        $data = $stmt->fetch(\PDO::FETCH_ASSOC);

        return $data;
    }

}

?>
