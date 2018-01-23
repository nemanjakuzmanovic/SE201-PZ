<?php

include('scrape_imdb.php');
$data = scrape_imdb(2015, 2017, 1, 1);

$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'it255';

$mysqli = new mysqli( $host,$user,$pass,$db );

for ($i = 0; $i < count($data); $i++ ) {

    $description = $mysqli->escape_string($data[$i]['description']);
    $title = $mysqli->escape_string($data[$i]['title']);

    $votes = intval($data[$i]['votes']);
    $gross = intval(str_replace(',','',$data[$i]['gross']));

    //unos u movies
    $sql = "INSERT IGNORE INTO movies (title,movie_url,year,image_url,certificate,runtime,
            imdb_rating,metascore,description,votes,gross)
            VALUES ('$title','{$data[$i]['movie_url']}','{$data[$i]['year']}','{$data[$i]['image']}',
            '{$data[$i]['certificate']}','{$data[$i]['runtime']}','{$data[$i]['imdb_rating']}',
            '{$data[$i]['metascore']}','$description','$votes','$gross')";

    $mysqli->query($sql) or die($mysqli->error);

    $movies_id = $mysqli->insert_id; //uzima poslednji key od movies_id, vraca 0 ako nije uspeo insert

    if ( !$movies_id ) { //duplikati filmovi
        continue;
    }

    $directors = explode(",",$data[$i]['directors']);
    $stars = explode(",",$data[$i]['stars']);
    $genres = explode(",",$data[$i]['genres']);

    //unos directors
    for ($i = 0; $i < count($directors); $i++)
    {
        $director = $mysqli->escape_string(trim($directors[$i]));

        $sql = "INSERT IGNORE INTO directors (name) VALUES ('$director')";

        $mysqli->query($sql) or die($mysqli->error);
        $directors_id = $mysqli->insert_id;

        //ako je novi director unet, else ako director postoji id ce biti 0
        if ( $directors_id ){
            //unos movies_directors
            $sql = "INSERT INTO movies_directors (movies_id, directors_id) "
                . "VALUES ('$movies_id','$directors_id')";
            $mysqli->query($sql);
        }
        else {
            //select director_id po imenu
            $sql = "SELECT id FROM directors WHERE name='$director'";
            $result = $mysqli->query($sql) or die($mysqli->error);
            $row = $result->fetch_assoc();
            $directors_id = $row['id'];

            $sql = "INSERT INTO movies_directors (movies_id, directors_id) "
                . "VALUES ('$movies_id','$directors_id')";

            //ako ovo izbaci gresku, nastavlja rad, zato sto par moze vec postojati
            $mysqli->query($sql);
        }
    }


    //unos stars
    for ($i = 0; $i < count($stars); $i++)
    {
        $star = $mysqli->escape_string(trim($stars[$i]));
        $sql = "INSERT IGNORE INTO stars (name) VALUES ('$star')";
        $mysqli->query($sql) or die($mysqli->error);
        $stars_id = $mysqli->insert_id;

        if ( $stars_id ){
            //unos movies_stars
            $sql = "INSERT INTO movies_stars (movies_id, stars_id) "
                . "VALUES ('$movies_id','$stars_id')";
            $mysqli->query($sql);
        }
        else {
            $sql = "SELECT id FROM stars WHERE name='$star'";
            $result = $mysqli->query($sql) or die($mysqli->error);
            $row = $result->fetch_assoc();
            $stars_id = $row['id'];

            $sql = "INSERT INTO movies_stars (movies_id, stars_id) "
                . "VALUES ('$movies_id','$stars_id')";

            //ako ovo izbaci gresku, nastavlja rad, zato sto par moze vec postojati
            $mysqli->query($sql);
        }
    }

    //unos genres
    for ($i = 0; $i < count($genres); $i++)
    {
        $genre = $mysqli->escape_string(trim($genres[$i]));
        $sql = "INSERT IGNORE INTO genres (name) VALUES ('$genre')";
        $mysqli->query($sql) or die($mysqli->error);
        $genres_id = $mysqli->insert_id;

        if ( $genres_id ){
            //unos movies_genres
            $sql = "INSERT INTO movies_genres (movies_id, genres_id) "
                . "VALUES ('$movies_id','$genres_id')";
            $mysqli->query($sql);
        }
        else {
            $sql = "SELECT id FROM genres WHERE name='$genre'";
            $result = $mysqli->query($sql) or die($mysqli->error);
            $row = $result->fetch_assoc();
            $genres_id = $row['id'];

            $sql = "INSERT INTO movies_genres (movies_id, genres_id) "
                . "VALUES ('$movies_id','$genres_id')";

            //ako ovo izbaci gresku, nastavlja rad, zato sto par moze vec postojati
            $mysqli->query($sql);
        }
    }
}

header('Location: localhost:4200');
exit;
?>