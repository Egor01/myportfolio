<?php

$page_title = "Обо мне - Сайт портфолио";

if ( isUser() ) {
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$aboutme = R::load("aboutme", 1);

$skills = R::load("skills", 1);

$jobs = R::find('jobs', "ORDER BY id DESC");





ob_start();
include ROOT . "templates/about/about.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";

?>