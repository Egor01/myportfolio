

<?php

    if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {

        if ($_SESSION['role'] == 'admin') {
             // На сайте  Админ
            include ROOT . "templates/_parts/_admin-panel.tpl";
           
        }
    }
?>

 <!-- header -->
<div class="header">
    <div class="header--vignette">
        <div class="header__top mb-0">
            <div class="header-admin__general">
                <div class="header__logo"><a class="header__logo-icon-link" href="#"><i class="far fa-paper-plane"></i></a>
                    <div class="header__block-title">
                        <p class="header__title mb-0"><a class="header__title" href="#">Digital Lifestyle</a></p>
                        <p class="header__subtitle mt-0">Сайт IT специалиста</p>
                    </div>
                </div>
            </div>

            <?php 
                if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
                    if ($_SESSION['role'] == 'admin') {
                        // На сайте  Админ
                    } else {
                        // Пользователь на сайте - НЕадмин
                        include ROOT . "templates/_parts/_user-box.tpl";
                    }
                }else {
                        // Нет  пользователя 
                    include ROOT . "templates/_parts/_no-user.tpl";
                }
		    ?>

       


        </div>
        <div class="header__nav-block">
            <ul class="header__nav">
                <li class="header__nav-items"><a class="header__nav-link--active" href="<?=HOST?>">Главная</a></li>
                <li class="header__nav-items"><a class="header__nav-link" href="<?=HOST?>about">Обо мне</a></li>
                <li class="header__nav-items"><a class="header__nav-link" href="<?=HOST?>works">Работы</a></li>
                <li class="header__nav-items"><a class="header__nav-link" href="<?=HOST?>blog">Блог</a></li>
                <li class="header__nav-items"><a class="header__nav-link" href="<?=HOST?>contacts">Контакты</a></li>
            </ul>
        </div>

        
    </div>
</div>
