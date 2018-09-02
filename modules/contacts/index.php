<?php

$page_title = "Контакты";

if ( isUser() ) {
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$contacts = R::load("contacts", 1);



 $errors = array();

if (isset($_POST["send-msg"])) {
    

    if (trim($_POST["name"]) == "") {
         $errors[] = ["title" => "Введите имя"];
    }

     if (trim($_POST["email"]) == "") {
         $errors[] = ["title" => "Введите email"];
    }

     if (trim($_POST["text"]) == "") {
         $errors[] = ["title" => "Введите сообщение"];
    }


    if ( empty($errors)) {

        $message = R::dispense("messages");

        $message->name = htmlentities($_POST["name"]);
        $message->email = htmlentities($_POST["email"]);
		$message->text = htmlentities($_POST["text"]);
		$message->dateTime = R::isoDateTime();



         if ( isset($_FILES["file"]["name"]) && $_FILES["file"]["tmp_name"] != "" ) {
            
            
			$fileName = $_FILES["file"]["name"];
			$fileTmpLoc = $_FILES["file"]["tmp_name"];
			$fileType = $_FILES["file"]["type"];
			$fileSize = $_FILES["file"]["size"];
			$fileErrorMsg = $_FILES["file"]["error"];
			$kaboom = explode(".", $fileName);
            $fileExt = end($kaboom);
            

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			if($fileSize > 5242880) {
				$errors[] = 'Ваш файл не должен превышать 5 mb';
			} else if (!preg_match("/\.(gif|jpg|png|pdf|doc)$/i", $fileName) ) {
				$errors[] = 'Ваш файл должен быть быть одним из следующих форматов: gif, jpg, png, pdf, doc';
			} else if ($fileErrorMsg == 1) {
				$errors[] = 'An unknown error occurred';
			}


			$fileFolderLocation = ROOT . 'usercontent/user_upload/';

			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $fileFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = 'File upload failed';
			}


			$message->message_file_name_original = $fileName;
			$message->message_file = $db_file_name;

		}


		R::store($message);
	   	
    	header( "location:" . HOST);
        exit();
    }
}




ob_start();
include ROOT . "templates/contacts/contacts.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";

?>