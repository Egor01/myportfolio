<div class="container">
    <div class="row">
        <div class="col-xl-10 offset-1">
            <div class="title-1 m-0 pt-60">Редактировать пост</div>
             <?php require ROOT . "templates/_parts/_errors.tpl"?>
            <form class="form mb-100 pb-20 pt-35" enctype="multipart/form-data" action="<?=HOST?>blog/edit-post?id=<?=$post->id?>" method="POST">
                <div class="fieldset">
                    <label>
                        <div class="fieldset__title">Заголовок</div>
                        <input class="input" type="text" value="<?=$post->title?>" name="postTitle" placeholder="Введите заголовок"/>
                    </label>
                </div>

                <div class="fieldset">
                    <div class="fieldset__title">Категория</div>
                    <select class="input" name="cat">
                        <?php foreach ($cats as $cat): ?>
                            <option value="<?=$cat["id"];?>"
                            <?=( $cat->id === $post->cat ) ? "selected" : ""?>>
                            <?=$cat["cat_title"];?></option>
                        <?php endforeach ?>
                    </select>
                </div>

                <div class="fieldset">
                    <div class="fieldset__title">Изображение</div>
                    <div class="comment-row">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</div>
                    <div class="control-row">
                        <div class="file">
                            <label class="file__label">
                                <input class="file__input" type="file" name="postImg"/>
                                <span class="file__inner-label">Выбрать файл</span>
                            </label>
                            <span class="file__inner-caption">Файл не выбран</span>
                        </div>
                    </div>

                    <?php if ($post['post_img_small'] != "") { ?>
                        <div class="control-row mt-30">
                            <div class="uploaded-image"><img class="uploaded-image__img" src="<?=HOST?>usercontent/blog/<?php echo $post['post_img_small']?>" alt="Загруженное изображение">
                                <div class="uploaded-image__button"><a class="button pt-5 button--del" id="deletePostImg" href="#"> Удалить</a></div>
                            </div>
                        </div>

                        <div class="control-row">
                            <div class="control-col">
                                <div id="checkboxDeletePostImg" class="checkbox checkbox--deletePostImg">
                                    <label class="checkbox__label">
                                        <input id="inputPostEdit" name="deleteImgPostEdit" class="checkbox__input" type="checkbox"/>
                                        <span class="checkbox__check-inner"></span>
                                        <span class="checkbox__check-inner-label">изображение будет удалено</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                  <?php  } ?>

                </div>
                <div class="fieldset">
                    <label>
                        <div class="fieldset__title">Содержание</div>
                        <textarea id="ckeditor" class="textarea height-200 editor" rows="7" name="postText" placeholder="Введите содержание"><?=$post->text?></textarea>
                    </label>
                </div>
                <div class="row">
                    <div class="col-md-auto pr-10">
                        <input type="submit" class="button button--no-pad-top button--save" name="edit-post" value="Сохранить" />
                    </div>
                    <div class="col-md-auto pl-10"><a class="button" href="<?=HOST?>blog">Отмена</a></div>
                </div>
            </form>
        </div>
    </div>
</div>
