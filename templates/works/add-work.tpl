<div class="container">
    <div class="row">
        <div class="col-xl-10 offset-1">
            <div class="title-1 m-0 pt-60">Добавить работу</div>
            <?php require ROOT . "templates/_parts/_errors.tpl"?>
            <form class="form mb-100 pb-20 pt-35" enctype="multipart/form-data" action="<?=HOST?>works/add-work" method="POST" >
                <div class="fieldset">
                    <label>
                        <div class="fieldset__title">Название</div>
                        <input class="input" name="title" placeholder="Введите название работы"/>
                    </label>
                </div>
                <div class="fieldset">
                    <div class="fieldset__title">Изображение</div>
                    <div class="comment-row">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</div>
                    <div class="control-row">
                        <div class="file">
                            <label class="file__label">
                                <input class="file__input" type="file" name="workImg"/>
                                <span class="file__inner-label">Выбрать файл</span>
                            </label>
                            <span class="file__inner-caption">Файл не выбран</span>
                        </div>
                    </div>
                </div>
                <div class="fieldset">
                    <label>
                        <div class="fieldset__title">Содержание</div>
                        <textarea class="textarea height-200 editor" rows="7" name="description" placeholder="Введите описание"></textarea>
                    </label>
                </div>
                <div class="fieldset">
                    <label>
                        <div class="fieldset__title">Результат</div>
                        <textarea class="textarea height-200 editor" rows="7" name="result" placeholder="Введите описание"></textarea>
                    </label>
                </div>
                <div class="fieldset">
                    <label>
                        <div class="fieldset__title">Технологии</div>
                        <textarea class="textarea height-200 editor" rows="7" name="technologies" placeholder="Введите описание"></textarea>
                    </label>
                </div>
                <div class="row fieldset mb-30">
                    <div class="col-4">
                        <label>
                            <div class="fieldset__title">Ссылка на проект</div>
                            <input class="input" name="linkProject" placeholder="Введите ссылку"/></label>
                        </div>
                    <div class="col-4">
                        <label>
                            <div class="fieldset__title">Ссылка на GitHub</div>
                            <input class="input" name="linkGitHub" placeholder="Введите ссылку"/>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-auto pr-10" style="display:flex;">
                        <input type="submit" class="button button--no-pad-top button--save" name="add-work" value="Сохранить" />
                    <div class="col-md-auto pl-10">
                        <a class="button" href="<?php echo HOST?>works">Отмена</a></div>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>

