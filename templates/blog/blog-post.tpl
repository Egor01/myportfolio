
<div class="container mt-70 mb-120">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="blog-full-post">
                
                <div class="blog-full-post__button-edit">

                    <?php if ( isAdmin() ) { ?>
                        <a class="button button--edit" href="<?=HOST?>blog/edit-post?id=<?=$post["id"]?>">Редактировать</a>
                    <?php } ?>



                </div>
                <h1 class="blog__heading"><?php echo $post['title']?></h1>
                <div class="blog__info-wrap">
                    <span class="blog__name">
                        <?=$post['name']?>
                        <?=$post['secondname']?>
                    </span>
                    <span class="blog__travel"><a href="<?=HOST?>blog?cat_id=<?php echo $post['cat']?>"><?=$post['cat_title']?></a></span>
                    <span class="blog__date"><?php echo rus_date("j F Y H:i ", strtotime($post['date_time'])); ?></span>
                    <span class="blog__comments"> <a href="#comments"><?php commentNumber( count($comments) ); ?></a></span>
                </div>
                <div class="blog__image">
                    <?php if ($post['post_img'] != "") { ?>
                        <img src="<?=HOST?>usercontent/blog/<?php echo $post['post_img'];?>" alt="<?php echo $post['title']?>" /></div>
                   <?php } ?>
                <div class="user-content">
                    <p><?=$post['text']?></p>
                </div>
                <div class="flex-container-button mt-30">
                    <a class="button" href="#"><i class="fas fa-arrow-left icon-style icon-style--back"></i>Назад</a>
                    <a class="button" href="#">Вперед<i class="fas fa-arrow-right icon-style"></i></a></div>




                <?php if (count($comments) > 0) { ?>
                    <h3 id="comments" class="user-comment-header"><?php commentNumber( count($comments) ); ?></h3>

                    <?php foreach ($comments as $comment): ?>

                        <?php include "comment-card.tpl"; ?>
        
                    <?php endforeach ?>

                <?php } ?>



                

                <div class="title-2 mb-15">Оставить комментарий</div>

                <?php

                    if ( isUser()) { ?>
                        <form class="comment-add-wrapper" action="<?=HOST?>blog/post?id=<?=$post["id"]?>" method="POST">
                            <div class="comment-add__avatar float-left">
                                <div class="avatar--small"><img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatarSmall']?>" alt="avatar-small" /></div>
                            </div>
                            <div class="comment-add-block">
                                <div class="comment-add-block__name">
                                    <?=$_SESSION["logged_user"]["name"]?>
                                    <?=$_SESSION["logged_user"]["secondname"]?>
                                </div>
                                <?php require ROOT . "templates/_parts/_errors.tpl"?>
                                <div class="comment-add-block__text mt-10"><textarea class="textarea" name="commentText" rows="5" placeholder="Введите текст сообщения"></textarea></div>
                            </div>
                            <div class="comment-add__button mt-10">
                                <input class="button button--no-pad-top" type="submit" name="add-comment" value="Опубликовать"/>
                            </div>
                        </form>
                  <?php  }else { ?>

                        <div class="comment-add-wrapper">
                            <div class="block-registration">
                                <p><a href="<?=HOST?>login">Войдите</a> или <a href="<?=HOST?>registration">зарегистрируйтесь</a><br>чтобы оставить комментарий</p>
                            </div>
                        </div>

                <?php  }  ?>
                
                


                
            </div>
        </div>
    </div>
</div>

