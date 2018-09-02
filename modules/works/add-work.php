<?php

$page_title = "Добавить работу";

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

if ( isUser() ) {
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}



$errors = array();



if ( isset($_POST["add-work"]) ) {

   if (trim($_POST["title"]) == "") {
         $errors[] = ["title" => "Введите название работы"];
    }

   if (trim($_POST["description"]) == "") {
         $errors[] = ["text" => "Заполните содержание"];
    }

   if (trim($_POST["result"]) == "") {
         $errors[] = ["text" => "Заполните резултат"];
    }

   if (trim($_POST["technologies"]) == "") {
         $errors[] = ["text" => "Заполните технологии"];
    }

   if (trim($_POST["linkProject"]) == "") {
         $errors[] = ["text" => "Введите ссылку на проект"];
    }

   if (trim($_POST["linkGitHub"]) == "") {
         $errors[] = ["text" => "Введите ссылку на GitHub"];
    }


   if ( empty($errors) ) {

        $work = R::dispense("works");
        $work->title = htmlentities($_POST["title"]);
		$work->description = $_POST["description"];
		$work->result = $_POST["result"];
		$work->technologies = $_POST["technologies"];
		$work->link_project = htmlentities($_POST["linkProject"]);
		$work->link_git_hub = htmlentities($_POST["linkGitHub"]);
		$work->dateTime = R::isoDateTime();


        if ( isset($_FILES["workImg"]["name"]) && $_FILES["workImg"]["tmp_name"] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES["workImg"]["name"];
			$fileTmpLoc = $_FILES["workImg"]["tmp_name"];
			$fileType = $_FILES["workImg"]["type"];
			$fileSize = $_FILES["workImg"]["size"];
			$fileErrorMsg = $_FILES["workImg"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Check file propertties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if($width < 10 || $height < 10){
				$errors[] = 'That image has no dimensions';
			}
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			if($fileSize > 2097152) {
				$errors[] = 'Your image file was larger than 2mb';
			} else if (!preg_match("/\.(gif|jpg|png)$/i", $fileName) ) {
				$errors[] = 'Your image file was not jpg, gif or png type';
			} else if ($fileErrorMsg == 1) {
				$errors[] = 'An unknown error occurred';
			}

			// // // Поверям наличие ранеее загруженных фото
			$workImg = $work['workImg'];
			$postImgFolderLocation = ROOT . 'usercontent/works/';

			// // Если аватар уже установлен, то есть загружен ранее то удаляем файл аватара
			// if($postImg != ""){
			// 	$picurl = $postImgFolderLocation . $postImg; 	
			// 	// Удаляем аватар
			//     if (file_exists($picurl)) { unlink($picurl); }
			// }

			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = 'File upload failed';
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			
			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "920-" . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

            $work->img_big = "920-" . $db_file_name;


			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "320-" . $db_file_name;
			$wmax = 360;
			$hmax = 190;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			

			$work->img_small = "320-" . $db_file_name;

		}







        R::store($work);

        header( "location: " . HOST . "works" );
        exit();
    }
    
}



ob_start();
include ROOT . "templates/works/add-work.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";



?>