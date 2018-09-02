<?php

$page_title = "Редактировать - запись в блоге";

if ( !isAdmin() ) {
    header ("location: " . HOST );
    die;
}

if ( isset($_SESSION["logged_user"]) && $_SESSION["login"] == 1 ) {    
    $currentUser = $_SESSION["logged_user"];
    $user = R::load("users", $currentUser->id);
}

$post = R::load("posts", $_GET['id']);
$cats = R::findAll("categories");




$errors = array();



if ( isset($_POST["edit-post"]) ) {

   if (trim($_POST["postTitle"]) == "") {
         $errors[] = ["title" => "Введите заголовок"];
    }

   if (trim($_POST["postText"]) == "") {
         $errors[] = ["title" => "Введите текст поста"];
    }

   if ( empty($errors) ) {
        $post->title = $_POST["postTitle"];
        $post->text = $_POST["postText"];
        $post->cat = htmlentities($_POST["cat"]);


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

			// // // Поверям наличие ранеее загруженных фото
			$postImg = $post['postImg'];
			$postImgFolderLocation = ROOT . 'usercontent/blog/';


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

    if ( @$_POST['deleteImgPostEdit'] === "on") {

        $imgPathBig = ROOT . 'usercontent/blog/' . $post->post_img;
        $imgPathSmall = ROOT . 'usercontent/blog/' . $post->post_img_small;

        if ( file_exists($imgPathBig) ) unlink($imgPathBig);
        if ( file_exists($imgPathSmall) ) unlink($imgPathSmall);

        $post->postImg = "";
        $post->postImgSmall = "";
			
	}

    R::store($post);

    header( "location: " . HOST . "blog/post?id=" . $post->id);
    exit();
    
	}

}

ob_start();
include ROOT . "templates/blog/edit-post.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";


?>