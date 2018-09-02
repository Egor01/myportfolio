<?php

$page_title = "Редактировать - контакты";

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

if ( isUser() ) {
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$contacts = R::load("contacts", 1);



 $errors = array();

if (isset($_POST["edit-contacts"])) {
    

    if (trim($_POST["name"]) == "") {
         $errors[] = ["title" => "Введите имя"];
    }

     if (trim($_POST["secondname"]) == "") {
         $errors[] = ["title" => "Введите фамилию"];
    }

     if (trim($_POST["email"]) == "") {
         $errors[] = ["title" => "Введите email"];
    }

     if (trim($_POST["skype"]) == "") {
         $errors[] = ["title" => "Введите skype"];
    }
     if (trim($_POST["tel"]) == "") {
         $errors[] = ["title" => "Введите телефон"];
    }

     if (trim($_POST["address"]) == "") {
         $errors[] = ["title" => "Введите город"];
    }


    if ( empty($errors)) {

        $contacts->name = htmlentities($_POST["name"]);
        $contacts->secondname = htmlentities($_POST["secondname"]);
        $contacts->email = htmlentities($_POST["email"]);
        $contacts->skype = htmlentities($_POST["skype"]);
        $contacts->vk = htmlentities($_POST["vk"]);
        $contacts->fb = htmlentities($_POST["fb"]);
        $contacts->twitter = htmlentities($_POST["twitter"]);
        $contacts->github = htmlentities($_POST["github"]);
        $contacts->tel = htmlentities($_POST["tel"]);
        $contacts->address = htmlentities($_POST["address"]);
        $contacts->lat = htmlentities($_POST["lat"]);
        $contacts->lng = htmlentities($_POST["lng"]);



    
		R::store($contacts);
	   	
    	header( "location:" . HOST . 'contacts');
        exit();
    }
}





ob_start();
include ROOT . "templates/contacts/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";



?>