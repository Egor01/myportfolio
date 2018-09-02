<?php

$page_title = "Все категории";

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

if ( isset($_SESSION["logged_user"]) && $_SESSION["login"] == 1 ) {    
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$cats = R::find('categories', "ORDER BY id DESC");


$errors = array();



if ( isset($_POST["add-post"]) ) {

   if (trim($_POST["postTitle"]) == "") {
         $errors[] = ["title" => "Введите заголовок"];
    }

   if (trim($_POST["postText"]) == "") {
         $errors[] = ["text" => "Введите содержание"];
    }

   if ( empty($errors) ) {
        $post = R::dispense("posts");
        $post->title = htmlentities($_POST["postTitle"]);
		$post->text = htmlentities($_POST["postText"]);
		$post->authorId = $_SESSION["logged_user"]["id"];
		$post->dateTime = R::isoDateTime();


        if ( isset($_FILES["postImg"]["name"]) && $_FILES["postImg"]["tmp_name"] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES["postImg"]["name"];
			$fileTmpLoc = $_FILES["postImg"]["tmp_name"];
			$fileType = $_FILES["postImg"]["type"];
			$fileSize = $_FILES["postImg"]["size"];
			$fileErrorMsg = $_FILES["postImg"]["error"];
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

			// // Поверям установлен ли аватар у пользователя
			// $postImg = $user['postImg'];
			$postImgFolderLocation = ROOT . 'usercontent/blog/';

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

            $post->postImg = "920-" . $db_file_name;


			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "320-" . $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$post->postImgSmall = "320-" . $db_file_name;

		}







        R::store($post);

        header( "location: " . HOST . "blog" );
        exit();
    }
    
}



ob_start();
include ROOT . "templates/categories/all.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";



?>