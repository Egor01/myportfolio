<?php

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

$comment = R::load("comments", $_GET["id"]);


if ( isset($_POST["delete-comment"]) ) {

        R::trash($comment);

        header( "location: " . HOST . "blog/post?id=" . $comment->post_id );
        exit();
}




?>