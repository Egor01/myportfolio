<?php

$page_title = "Главная";

if ( isUser() ) {
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$about = R::findOne("aboutme");
$works = R::find("works", "ORDER BY id DESC LIMIT 3");
$posts = R::find("posts", "ORDER BY id DESC LIMIT 3");



$title = "Главная страница";
$content = "Это главная страница моего сайта";

ob_start();
include ROOT . "templates/main/main.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";



?>