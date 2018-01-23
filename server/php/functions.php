<?php
include("config.php");

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS'){
    die();
}

function checkIfLoggedIn(){
    global $conn;
    if(isset($_SERVER['HTTP_TOKEN'])){
        $token = $_SERVER['HTTP_TOKEN'];
        $result = $conn->prepare("SELECT * FROM users WHERE token=?");
        $result->bind_param("s", $token);
        $result->execute();
        $result->store_result();
        $num_rows = $result->num_rows;
        if($num_rows > 0)
        {
            return true;
        } else{
            return false;
        }
    }
    else{
        return false;
    }
}

function login($username, $password)
{
    global $conn;
    $rarray = array();
    if(checkLogin($username,$password))
    {
        $id = sha1(uniqid());
        $result2 = $conn->prepare("UPDATE users SET token=? WHERE username=?");
        $result2->bind_param("ss",$id,$username);
        $result2->execute();
        $rarray['token'] = $id;
    }   else
    {
        header('HTTP/1.1 401 Unauthorized');
        $rarray['error'] = "Invalid username/password";
    }
    return json_encode($rarray);
}

function checkLogin($username, $password){
    global $conn;
    $password = md5($password);
    $result = $conn->prepare("SELECT * FROM users WHERE username=? AND password=?");
    $result->bind_param("ss", $username, $password);
    $result->execute();
    $result->store_result();
    $num_rows = $result->num_rows;
    if($num_rows > 0)
    {
        return true;
    }
    else{
        return false;
    }
}


function register($username,$password,$firstname,$lastname){
    global $conn;
    $rarray = array();
    $errors = "";
    if(checkIfUserExists($username)){
        $errors .= "Username already exists.\r\n";
    }
    if(strlen($username) < 5)
    {
        $errors .= "Username must have at least 5 characters.\r\n";
    }
    if(strlen($password) < 5)
    {
        $errors .= "Password must have at least 5 characters.\r\n";
    }
    if(strlen($firstname) < 3)
    {
        $errors .= "First name must have at least 3 characters.\r\n";
    }
    if(strlen($lastname) < 3)
    {
        $errors .= "Last name must have at least 3 characters.\r\n";
    }
    if($errors == ""){
        $stmt = $conn->prepare("INSERT INTO users (firstname,lastname,username,password) VALUES (?,?,?,?)");
        $pass = md5($password);
        $stmt->bind_param("ssss",$firstname,$lastname,$username,$pass);
        if($stmt->execute()){
            $id = sha1(uniqid());
            $result2 = $conn->prepare("UPDATE users SET token=? WHERE username=?");
            $result2->bind_param("ss",$id,$username);
            $result2->execute();
            $rarray['token'] = $id;
        }else{
            header('HTTP/1.1 400 Bad request');
            $rarray['error'] = "Database connection error";

        }
    }else{
        header('HTTP/1.1 400 Bad request');
        $rarray['error'] = json_encode($errors);

    }
    return json_encode($rarray);
}

function checkIfUserExists($username)
{
    global $conn;
    $result = $conn->prepare("SELECT * FROM users WHERE username=?");
    $result->bind_param("s",$username);
    $result->execute();
    $result->store_result();
    $num_rows = $result->num_rows;
    if($num_rows > 0)
    {
        return true;
    }else{
        return false;
    }
}

function deleteRoom($idSobe){
    global $conn;
    $rarray = array();
    if(checkIfLoggedIn()){
        $result = $conn->prepare("DELETE FROM sobe WHERE idSobe=?");
        $result->bind_param("i",$idSobe);
        $result->execute();
        $rarray['success'] = "Deleted successfully";
    } else{
        $rarray['error'] = "Please log in";
        header('HTTP/1.1 401 Unauthorized');
    }
    return json_encode($rarray);
}

function getMovies()
{
    global $conn;
    $rarray = array();

    $result = $conn->query("SELECT * FROM movies");
    $num_rows = $result->num_rows;
    $movies = array();
    if($num_rows > 0)
    {
        $result2 = $conn->query("SELECT * FROM movies");
        while($row = $result2->fetch_assoc()){
            $movie = array();
            $movie['id'] = $row['id'];
            $movie['title'] = $row['title'];
            $movie['movie_url'] = $row['movie_url'];
            $movie['year'] = $row['year'];
            $movie['image_url'] = $row['image_url'];
            $movie['certificate'] = $row['certificate'];
            $movie['runtime'] = $row['runtime'];
            $movie['imdb_rating'] = $row['imdb_rating'];
            $movie['description'] = $row['description'];
            $movie['metascore'] = $row['metascore'];
            $movie['votes'] = number_format($row['votes']);
            $movie['gross'] = number_format($row['gross']);
            $result3 = $conn->query("SELECT GROUP_CONCAT(genres.name) FROM movies_genres LEFT JOIN genres ON movies_genres.genres_id = genres.id WHERE movies_id={$movie['id']}") or
            die($conn->error);

            $genres = $result3->fetch_all();
            $movie['genres'] = $genres;


            $result4 = $conn->query("SELECT GROUP_CONCAT(directors.name) FROM movies_directors LEFT JOIN directors ON movies_directors.directors_id = directors.id WHERE movies_id={$movie['id']}") or
            die($conn->error);

            $directors = $result4->fetch_all();
            $movie['director'] = $directors;

            $result5 = $conn->query("SELECT GROUP_CONCAT(stars.name) FROM movies_stars LEFT JOIN stars ON movies_stars.stars_id = stars.id WHERE movies_id={$movie['id']}") or
            die($conn->error);

            $stars = $result5->fetch_all();
            $movie['star'] = $stars;


            array_push($movies,$movie);
        }
    }
    $rarray['movies'] = $movies;
    return json_encode($rarray);


}

function getGuestMovies()
{
    global $conn;
    $rarray = array();

    $result = $conn->query("SELECT * FROM movies");
    $num_rows = $result->num_rows;
    $movies = array();
    if($num_rows > 0)
    {
        $result2 = $conn->query("SELECT * FROM movies ORDER BY rand() LIMIT 10");
        while($row = $result2->fetch_assoc()){
            $movie = array();
            $movie['id'] = $row['id'];
            $movie['title'] = $row['title'];
            $movie['movie_url'] = $row['movie_url'];
            $movie['year'] = $row['year'];
            $movie['image_url'] = $row['image_url'];
            $movie['certificate'] = $row['certificate'];
            $movie['runtime'] = $row['runtime'];
            $movie['imdb_rating'] = $row['imdb_rating'];
            $movie['description'] = $row['description'];
            $movie['metascore'] = $row['metascore'];
            $movie['votes'] = number_format($row['votes']);
            $movie['gross'] = number_format($row['gross']);
            array_push($movies,$movie);
        }
    }

    $rarray['movies'] = $movies;
    return json_encode($rarray);


}

function addMovieToMyMovies($movie_id,$user_id,$p_id)
{
    global $conn;
    $rarray = array();
    if(checkIfLoggedIn()){
        $result = $conn->prepare("SELECT movie_id,user_id FROM purchase WHERE movie_id=? AND user_id=? LIMIT 1");
        $result->bind_param("ii", $movie_id, $user_id);
        $result->execute();
        $result->store_result();
        $num_rows = $result->num_rows;
        if($num_rows > 0)
        {

            $rarray['error'] = "Already have that movie";
        }
        else {
            if($p_id === 2) {
                $stmt = $conn->prepare("INSERT INTO purchase (movie_id,user_id,p_id,p_date,exp_date) VALUES (?,?,?,NOW(),NOW() + INTERVAL 50 YEAR)");
                $stmt->bind_param("iii", $movie_id, $user_id, $p_id);
                if ($stmt->execute()) {
                    $rarray['success'] = 'ok';
                } else {
                    $rarray['error'] = "Databse connection error";
                }
            }elseif($p_id === 3){
                $stmt2 = $conn->prepare("INSERT INTO purchase (movie_id,user_id,p_id,p_date,exp_date) VALUES (?,?,?,NOW(),NOW() + INTERVAL 1 DAY)");
                $stmt2->bind_param("iii", $movie_id, $user_id, $p_id);
                if ($stmt2->execute()) {
                    $rarray['success'] = 'ok';
                } else {
                    $rarray['error'] = "Databse connection error";
                }
            }

        }

    }else{
        $rarray['error'] = "Please log in";
        header('HTTP/1.1 401 Unauthorized');
    }
    return json_encode($rarray);
}


function getOneMovie($id){
    global $conn;
    $rarray = array();
    if(checkIfLoggedIn()){
        $result = $conn->query("SELECT * FROM movies WHERE id=".$id);
        $movies = array();


            while($row = $result->fetch_assoc()) {
                $movie = array();
                $movie['id'] = $row['id'];
                $movie['title'] = $row['title'];
                $movie['movie_url'] = $row['movie_url'];
                $movie['year'] = $row['year'];
                $movie['image_url'] = $row['image_url'];
                $movie['certificate'] = $row['certificate'];
                $movie['runtime'] = $row['runtime'];
                $movie['imdb_rating'] = $row['imdb_rating'];
                $movie['description'] = $row['description'];
                $movie['metascore'] = $row['metascore'];
                $movie['votes'] = number_format($row['votes']);
                $movie['gross'] = number_format($row['gross']);
                $movies = $movie;
            }

        $rarray['data'] = $movies;
        return json_encode($rarray);
    } else{
        $rarray['error'] = "Please log in";
        header('HTTP/1.1 401 Unauthorized');
        return json_encode($rarray);
    }
}



function getId($username){
    global $conn;
    $rarray = array();
    if(checkIfLoggedIn()){
        $result = $conn->query("SELECT users.id FROM users WHERE username LIKE '".$username. "'");
        while($row = $result->fetch_assoc()) {

                $movie = array();
                $movie = $row['id'];
                $movies = $movie;

        }

        $rarray['data2'] = $movies;
        return json_encode($rarray);
    } else{
        $rarray['error'] = "Please log in";
        header('HTTP/1.1 401 Unauthorized');
        return json_encode($rarray);
    }
}

function getAccount($token){
    global $conn;
    $rarray = array();
    if(checkIfLoggedIn()){
        $result = $conn->query("SELECT * FROM users WHERE token LIKE '".$token."'");
        $movies = array();
        while($row = $result->fetch_assoc()) {
            $movie = array();
            $movie['id'] = $row['id'];
            $movie['firstname'] = $row['firstname'];
            $movie['lastname'] = $row['lastname'];
            $movie['username'] = $row['username'];
            array_push($movies,$movie);
        }
        $rarray['data'] = $movies;
        return json_encode($rarray);
    } else{
        $rarray['error'] = "Please log in";
        header('HTTP/1.1 401 Unauthorized');
        return json_encode($rarray);
    }
}

function getMyMovies($id)
{
    global $conn;
    $rarray = array();
    $result = $conn->query("SELECT * FROM purchase");
    $num_rows = $result->num_rows;
    $movies = array();
    if($num_rows > 0)
    {
        $result2 = $conn->query("SELECT * FROM purchase");
        while($row = $result2->fetch_assoc()){
            $movie = array();
        }
        $result3 = $conn->query("SELECT movies.id,movies.title,movies.year,movies.runtime,purchase.description FROM movies LEFT JOIN purchase ON movies.id = purchase.movie_id WHERE p_id = 2 AND user_id=".$id) or
        die($conn->error);
                while($row = $result3->fetch_assoc()){
                    $movie['id'] = $row['id'];
                    $movie['title'] = $row['title'];
                    $movie['year'] = $row['year'];
                    $movie['runtime'] = $row['runtime'];
                    $movie['description'] = $row['description'];
                    array_push($movies,$movie);
                }
    }
    $rarray['data'] = $movies;
    return json_encode($rarray);
}
function getRentedMovies($id)
{
    global $conn;
    $rarray = array();
    $result = $conn->query("SELECT * FROM purchase");
    $num_rows = $result->num_rows;
    $movies = array();
    if($num_rows > 0)
    {
        $result2 = $conn->query("SELECT * FROM purchase");
        while($row = $result2->fetch_assoc()){
            $movie = array();
        }
        $result3 = $conn->query("SELECT movies.id,movies.title,movies.year,movies.runtime FROM movies LEFT JOIN purchase ON movies.id = purchase.movie_id WHERE p_id = 3 AND TIMEDIFF(exp_date, NOW()) > 0 AND user_id=".$id) or
        die($conn->error);
        while($row = $result3->fetch_assoc()){
            $movie['id'] = $row['id'];
            $movie['title'] = $row['title'];
            $movie['year'] = $row['year'];
            $movie['runtime'] = $row['runtime'];
            array_push($movies,$movie);
        }
    }
    $rarray['data2'] = $movies;
    return json_encode($rarray);
}

function deleteMovie($id){
    global $conn;
    $rarray = array();
    if(checkIfLoggedIn()){
        $result = $conn->prepare("DELETE FROM purchase WHERE movie_id=?");
        $result->bind_param("i",$id);
        $result->execute();
        $rarray['success'] = "Deleted successfully";
    } else{
        $rarray['error'] = "Please log in";
        header('HTTP/1.1 401 Unauthorized');
    }
    return json_encode($rarray);
}

function editMovie($id, $description){
    global $conn;
    $rarray = array();
    if(checkIfLoggedIn()){
        $stmt = $conn->prepare("UPDATE purchase SET description=? WHERE movie_id = ?");
        $stmt->bind_param("si", $description, $id);
        if($stmt->execute()){
            $rarray['success'] = "ok";
        }else{
            $rarray['error'] = "Connection error";
        }
    } else{
        $rarray['error'] = "Please log in";
        header('HTTP/1.1 401 Unauthorized');
    }
    return json_encode($rarray);
}
?>
