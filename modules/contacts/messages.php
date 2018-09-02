<?php

$page_title = "Сообщения";

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

if ( isUser() ) {
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$messages = R::find("messages", "ORDER BY id DESC");






ob_start();
include ROOT . "templates/contacts/messages.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";



?>