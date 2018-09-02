<?php

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}



$work = R::load("works", $_GET["id"]);



if ( isset($_POST["delete-work"]) ) {


        R::trash($work);
        
        header( "location: " . HOST . "works" );
        exit();
}




?>