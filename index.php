<?php


/**
* Устанавливает путь до корневой директории скрипта
* по протоколу HTTP*/
define('HOST', "http://" . $_SERVER['HTTP_HOST'] . '/');


/* Устанавливает физический путь до корневой директории скрипта*/
define('ROOT', dirname(__FILE__).'/');

require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";


session_start();



/* 
:::::::::::::::::::::::::::::::::::::::::::::::::::

				РОУТЕР

:::::::::::::::::::::::::::::::::::::::::::::::::::
*/

$uri =  $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/"); 
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);


switch ( $uri[0]) {
	case '':
        include "modules/main/index.php";
		break;


/* 
:::::::::::::::::::::::::::::::::::::::::::::::::::

				РАБОТА ПОЛЬЗОВАТЕЛЯМИ

:::::::::::::::::::::::::::::::::::::::::::::::::::

*/
	case 'registration':
        include "modules/login/registration.php";
		break;

	case 'login':
        include "modules/login/login.php";
		break;

	case 'logout':
        include "modules/login/logout.php";
		break;

	case 'lost-password':
        include "modules/login/lost-password.php";
		break;

	case 'set-new-password':
        include "modules/login/set-new-password.php";
		break;

	case 'profile':
        include "modules/profile/index.php";
		break;

	case 'profile-edit':
        include "modules/profile/edit.php";
		break;

/* 
:::::::::::::::::::::::::::::::::::::::::::::::::::

					РАБОТЫ

:::::::::::::::::::::::::::::::::::::::::::::::::::

*/


	case 'works':
        include "modules/works/index.php";
		break;

	case 'works/work':
        include "modules/works/work.php";
		break;

	case 'works/add-work':
        include "modules/works/add-work.php";
		break;

	case 'works/edit-work':
        include "modules/works/edit-work.php";
		break;

	case 'works/del-work':
        include "modules/works/del-work.php";
		break;










/* 
:::::::::::::::::::::::::::::::::::::::::::::::::::

					БЛОГ

:::::::::::::::::::::::::::::::::::::::::::::::::::

*/

	case 'blog':
        include "modules/blog/index.php";
		break;

	case 'blog/post':
        include "modules/blog/post.php";
		break;

	case 'blog/add-post':
        include "modules/blog/add-post.php";
		break;

	case 'blog/edit-post':
        include "modules/blog/edit-post.php";
		break;

	case 'blog/del-post':
        include "modules/blog/del-post.php";
		break;

	// КОММЕНТЫ
	case 'blog/del-comment':
        include "modules/blog/del-comment.php";
		break;


	// КАТЕГОРИИ В БЛОГЕ

	case 'blog/categories':
        include "modules/blog/categories/all.php";
		break;

	case 'blog/category-new':
        include "modules/blog/categories/add.php";
		break;

	case 'blog/category-edit':
        include "modules/blog/categories/edit.php";
		break;

	case 'blog/category-delete':
        include "modules/blog/categories/delete.php";
		break;



/* 
:::::::::::::::::::::::::::::::::::::::::::::::::::

					ОБО МНЕ

:::::::::::::::::::::::::::::::::::::::::::::::::::

*/

	case 'about':
        include "modules/about/index.php";
		break;
		
	case 'about-edit':
        include "modules/about/about-edit.php";
		break;

	case 'skills-edit':
        include "modules/about/skills-edit.php";
		break;

	case 'experience-edit':
        include "modules/about/experience-edit.php";
		break;
		
	case 'experience-del':
        include "modules/about/experience-del.php";
		break;

/* 
:::::::::::::::::::::::::::::::::::::::::::::::::::

				КОНТАКТЫ

:::::::::::::::::::::::::::::::::::::::::::::::::::

*/

	case 'contacts':
        include "modules/contacts/index.php";
		break;

	case 'contacts-edit':
        include "modules/contacts/edit.php";
		break;

	case 'messages':
        include "modules/contacts/messages.php";
		break;

	case 'messages-delete':
        include "modules/contacts/delete.php";
		break;




/* 
:::::::::::::::::::::::::::::::::::::::::::::::::::

				DUMPER

:::::::::::::::::::::::::::::::::::::::::::::::::::

*/

	case 'dumper':
        include "libs/dumper/";
		break;





	default:
        include "modules/main/index.php";
		break;

}

?>