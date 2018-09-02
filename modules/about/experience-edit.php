<?php

$page_title = "Редактировать - опыт работы";

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

if ( isUser() ) {
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$jobs = R::find('jobs', "ORDER BY id DESC");




 $errors = array();

if (isset($_POST["experience-add"])) {
    

    if (trim($_POST["period"]) == "") {
         $errors[] = ["title" => "Введите период работы"];
    }

     if (trim($_POST["title"]) == "") {
         $errors[] = ["title" => "Введите должность и название компании"];
    }

     if (trim($_POST["description"]) == "") {
         $errors[] = ["title" => "Введите описание работы"];
    }



    if ( empty($errors)) {

        $job = R::dispense("jobs");

        $job->period = htmlentities($_POST["period"]);
        $job->title = htmlentities($_POST["title"]);
        $job->description = htmlentities($_POST["description"]);

    
		R::store($job);
	   	
    	header( "location:" . HOST . 'experience-edit');
        exit();
    }
}





ob_start();
include ROOT . "templates/about/experience-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";



?>