<div class="container">
    <div class="row align-items-center mt-40">
        <div class="col offset-md-1">
            <div class="title-1 color">Профиль</div>
        </div>
        <div class="col text-right"><a class="button button--edit" href="<?=HOST?>profile-edit"> Редактировать</a></div>
    </div>
    <div class="row offset-md-1">
        <div class="col-md-auto">
            <div class="avatar"><img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar']?>" alt="avatar-big" /></div>
        </div>
        <div class="col">
            <div class="user-info">
                <div class="user-info__title">Имя и фамилия</div>
                <div class="user-info__desc"><?=$currentUser->name?> <?=$currentUser->secondname?></div>
            </div>
            <div class="user-info">
                <div class="user-info__title">Email</div>
                <div class="user-info__desc"><?=$currentUser->email?></div>
            </div>
            <div class="user-info">
                <div class="user-info__title">Страна, Город</div>
                <div class="user-info__desc"><?=$currentUser->country?>, <?=$currentUser->city?></div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="title-2 color">Комментарии пользователя</div>
            <div class="profile-comments mb-100">


               <?php if (count($comments) > 0) { ?>
                    <h3 id="comments" class="user-comment-header"><?php commentNumber( count($comments) ); ?></h3>

                    <?php foreach ($comments as $comment): ?>

                        <?php require ROOT . "templates/blog/comment-card.tpl"; ?>
        
                    <?php endforeach ?>

                <?php } ?>
            </div>
        </div>
    </div>
</div>