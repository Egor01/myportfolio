<?php

$page_title = "Блог - запись в блоге";

if ( isset($_SESSION["logged_user"]) && $_SESSION["login"] == 1 ) {    
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}


$sql = 'SELECT 	
            posts.id, posts.title, posts.text, posts.post_img, posts.date_time, posts.author_id, posts.cat,
            users.name, users.secondname, 
            categories.cat_title 
        FROM posts 

        INNER JOIN users 
        ON posts.author_id = users.id 

        INNER JOIN categories 
        ON posts.cat = categories.id

        WHERE posts.id = ' . $_GET['id'] . ' LIMIT 1' ;


$post = R::getAll( $sql );
$post = $post[0];


$sql = 'SELECT  comments.id, comments.text, comments.date_time, comments.user_id, users.name, users.secondname, users.avatar_small 
        FROM comments INNER JOIN users ON comments.user_id = users.id 
        WHERE comments.post_id = ' . $_GET['id'] . ' ORDER BY comments.date_time' ;

$comments = R::getAll( $sql );




$errors = array();


if ( isset($_POST["add-comment"]) ) {

   if (trim($_POST["commentText"]) == "") {
         $errors[] = ["title" => "Введите текст комментария"];
    }


   if ( empty($errors) ) {
        $comment = R::dispense("comments");
        $comment->postId = htmlentities($_GET["id"]);
        $comment->userId = htmlentities($_SESSION["logged_user"]["id"]);
        $comment->text = htmlentities($_POST["commentText"]);
        $comment->dateTime = R::isoDateTime();


        R::store($comment);

        header( "location: " . HOST . "blog/post?id=" . $_GET["id"] );
        exit();
    }
    
}


ob_start();
include ROOT . "templates/blog/blog-post.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";



?>