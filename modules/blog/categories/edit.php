<?php

$page_title = "Редактировать категорию";

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

if ( isset($_SESSION["logged_user"]) && $_SESSION["login"] == 1 ) {    
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$cat = R::load("categories", $_GET["id"]);


$errors = array();



if ( isset($_POST["edit-cat"]) ) {

   if (trim($_POST["catTitle"]) == "") {
         $errors[] = ["catTitle" => "Введите категорию"];
    }

   if ( empty($errors) ) {
        $cat->cat_title = htmlentities($_POST["catTitle"]);

        R::store($cat);

        header( "location: " . HOST . "blog/categories" );
        exit();
    }
    
}



ob_start();
include ROOT . "templates/categories/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";



?>