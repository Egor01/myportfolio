<div class="container">
    <div class="row">
        <div class="col-xl-10 offset-1">
            <div class="title-1 m-0 pt-60">Добавить пост</div>
            <?php require ROOT . "templates/_parts/_errors.tpl"?>
            <form class="form mb-100 pb-20 pt-35" enctype="multipart/form-data" action="<?=HOST?>blog/add-post" method="POST">
                <div class="fieldset">
                    <label>
                        <div class="fieldset__title">Заголовок</div>
                        <input class="input" type="text" name="postTitle" placeholder="Введите заголовок"/>
                    </label>
                </div>

                <div class="fieldset">
                    <div class="fieldset__title">Категория</div>
                    <select class="input" name="cat">
                        <?php foreach ($cats as $cat): ?>
                            <option value="<?=$cat["id"];?>"><?=$cat["cat_title"];?></option>
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
                </div>
                <div class="fieldset">
                    <label>
                        <div class="fieldset__title">Содержание</div>
                        <textarea id="ckeditor" class="textarea height-200 editor" rows="7" name="postText" placeholder="Введите содержание"></textarea>
                    </label>
                </div>
                <div class="row">
                    <div class="col-md-auto pr-10">
                        <input type="submit" class="button button--no-pad-top button--save" name="add-post" value="Сохранить" />
                    </div>
                    <div class="col-md-auto pl-10"><a class="button" href="<?=HOST?>blog">Отмена</a></div>
                </div>
            </form>
        </div>
    </div>
</div>
