<div class="container mb-100">
    <?php require ROOT . "templates/_parts/_errors.tpl"?>
    <form action="<?=HOST?>skills-edit" method="POST">
        <div class="title-3 mt-50">Технологии</div>
        <div class="row mb-40">
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">HTML5
                    <input class="input technology__item-input" name="html" value="<?=$skills->html?>" placeholder="50" /></div>
            </div>
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">CSS3
                    <input class="input technology__item-input" name="css" value="<?=$skills->css?>" placeholder="50" /></div>
            </div>
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">JS
                    <input class="input technology__item-input" name="js" value="<?=$skills->js?>" placeholder="50" /></div>
            </div>
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">jQuery
                    <input class="input technology__item-input" name="jquery" value="<?=$skills->jquery?>" placeholder="50" /></div>
            </div>
        </div>
        <div class="row mb-40">
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">PHP
                    <input class="input technology__item-input" name="php" value="<?=$skills->php?>" placeholder="50" /></div>
            </div>
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">MySQL
                    <input class="input technology__item-input" name="mysql" value="<?=$skills->mysql?>" placeholder="50" /></div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">Git
                    <input class="input technology__item-input" name="git" value="<?=$skills->git?>" placeholder="50" /></div>
            </div>
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">Gulp
                    <input class="input technology__item-input" name="gulp" value="<?=$skills->gulp?>" placeholder="50" /></div>
            </div>
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">Bower
                    <input class="input technology__item-input" name="bower" value="<?=$skills->bower?>" placeholder="50" /></div>
            </div>
            <div class="col-xl-2 col-md-2">
                <div class="fieldset__title technology__item-title">WebPack
                    <input class="input technology__item-input" name="webpack" value="<?=$skills->webpack?>" placeholder="50" /></div>
            </div>
        </div>
        <div class="row mt-50">
            <div class="col-md-auto pr-10 ">
                <input type="submit" class="button button--no-pad-top button--save" name="skills-upd" value="Сохранить"/>
            </div>
            <div class="col-md-auto pl-10"><a class="button" href="<?=HOST?>about">Отмена</a></div>
        </div>
    </form>
</div>
