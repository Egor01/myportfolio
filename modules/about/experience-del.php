<?php

if ( isUser() ) {
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$job = R::load("jobs", $_GET["id"]);


if ( isset($_POST["delete-exp"]) ) {

        R::trash($job);

        header( "location: " . HOST . "experience-edit" );
        exit();
}




?>