<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>

	<?php if (isset($page_title)) {
      echo $page_title;
    } else {
      echo "Сайт Портфолио";
    } ?>

	</title>
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<!-- build:cssVendor css/vendor.css -->
	<link rel="stylesheet" href="<?php echo HOST;?>templates/assets/libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="<?php echo HOST;?>templates/assets/libs/bootstrap-4-grid/grid.min.css" />
	<link rel="stylesheet" href="<?php echo HOST;?>templates/assets/libs/jquery-custom-scrollbar/jquery.custom-scrollbar.css" />
	<!-- endbuild -->
	<!-- build:cssCustom css/main.css -->
	<link rel="stylesheet" href="<?php echo HOST;?>templates/assets/css/main.css" />
	<link rel="stylesheet" href="<?php echo HOST;?>templates/assets/css/user-styles.css"/>
	<!-- endbuild -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<!--[if lt IE 9]><script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
</head>