<?php



$message = R::load("messages", $_GET["id"]);


if ( isset($_POST["delete-msg"]) ) {

        R::trash($message);

        header( "location: " . HOST . "messages" );
        exit();
}




?>