<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token, Authorization, Token, token, TOKEN');
include("functions.php");
if(isset($_GET['id'])) {
    $id = (intval($_GET['id']));

    if (isset($_GET['firstname']) && isset($_GET['lastname'])) {
        $firstname = $_GET['firstname'];
        $lastname = $_GET['lastname'];
        global $conn;
        $rarray = array();
        if (checkIfLoggedIn()) {
            $result = $conn->query("SELECT * FROM users WHERE id=" . $id);
            $num_rows = $result->num_rows;
            $rooms = array();
            if ($num_rows > 0) {

                    if (checkIfLoggedIn()) {
                        $stmt = $conn->prepare("UPDATE users SET firstname=?,lastname=?) VALUES (?,?)");
                        $stmt->bind_param("ss", $firstname, $lastname);
                        if ($stmt->execute()) {
                            $rarray['success'] = 'ok';
                        } else {
                            $rarray['error'] = "Databse connection error";
                        }
                    } else {
                        $rarray['error'] = "Please log in";
                        header('HTTP/1.1 401 Unauthorized');
                    }
                    return json_encode($rarray);

            }

            $rarray['data'] = $rooms;
            return json_encode($rarray);
        } else {
            $rarray['error'] = "Please log in";
            header('HTTP/1.1 401 Unauthorized');
            return json_encode($rarray);
        }


    }
}
?>