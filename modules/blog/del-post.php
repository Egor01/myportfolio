<?php

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

$post = R::load("posts", $_GET["id"]);


if ( isset($_POST["delete-post"]) ) {

        R::trash($post);
        R::exec('DELETE FROM comments WHERE post_id=' . $_GET['id']);
        
        header( "location: " . HOST . "blog" );
        exit();
}




?>