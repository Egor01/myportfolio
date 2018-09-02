<div class="container">
    <div class="row">
        <div class="col-xl-10 offset-1">
            <div class="title-1 m-0 pt-60">Изменить категорию</div>
            <?php require ROOT . "templates/_parts/_errors.tpl"?>
            <form class="form mb-100 pb-20 pt-35" action="<?=HOST?>blog/category-edit?id=<?=$cat["id"];?>" method="POST">
                <div class="fieldset">
                    <label>
                        <div class="fieldset__title">Новое название категории</div>
                        <input class="input" type="text" name="catTitle" placeholder="Введите категорию" value="<?=$cat["cat_title"]?>"/>
                    </label>
                </div>
                <div class="row">
                    <div class="col-md-auto pr-10">
                        <input type="submit" class="button button--save" name="edit-cat" value="Сохранить" />
                    </div>
                    <div class="col-md-auto pl-10"><a class="button" href="<?=HOST?>blog/categories">Отмена</a></div>
                </div>
            </form>
        </div>
    </div>
</div>