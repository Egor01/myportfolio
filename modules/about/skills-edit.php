<?php

$page_title = "Редактировать - технологии";

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

if ( isUser() ) {
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$skills = R::load("skills", 1);


 $errors = array();

if (isset($_POST["skills-upd"])) {
    

    $skills->html = htmlentities($_POST["html"]);
    $skills->css = htmlentities($_POST["css"]);
    $skills->js = htmlentities($_POST["js"]);
    $skills->jquery = htmlentities($_POST["jquery"]);
    $skills->php = htmlentities($_POST["php"]);
    $skills->mysql = htmlentities($_POST["mysql"]);
    $skills->git = htmlentities($_POST["git"]);
    $skills->gulp = htmlentities($_POST["gulp"]);
    $skills->bower = htmlentities($_POST["bower"]);
    $skills->webpack = htmlentities($_POST["webpack"]);




    R::store($skills);
    
    header( "location:" . HOST . 'about');
    exit();
}





ob_start();
include ROOT . "templates/about/skills-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";



?>