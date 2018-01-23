<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token, Authorization, Token, token, TOKEN');
include("functions.php");
if(isset($_POST['movie_id']) && isset($_POST['user_id']) && isset($_POST['p_id'])){
    $movie_id = intval($_POST['movie_id']);
    $user_id = intval($_POST['user_id']);
    $p_id = intval($_POST['p_id']);

    echo addMovieToMyMovies($movie_id, $user_id, $p_id);
}
?>