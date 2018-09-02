<div class="container">
    <div class="row">
        <div class="col-xl-12">
            <div class="title-1 m-0 pt-60">Редактировать данные</div>
            <?php require ROOT . "templates/_parts/_errors.tpl"?>
            <form class="form mb-100 pb-20 pt-35" action="<?=HOST?>contacts-edit" method="POST">
                <div class="row fieldset">
                    <div class="col-3"><label><div class="fieldset__title">Имя</div><input class="input" name="name" placeholder="Введите имя" value="<?=$contacts->name?>"/></label></div>
                    <div class="col-3"><label><div class="fieldset__title">Фамилия</div><input class="input" name="secondname" placeholder="Введите фамилию" value="<?=$contacts->secondname?>"/></label></div>
                </div>
                <div class="row fieldset">
                    <div class="col-3"><label><div class="fieldset__title">Email</div><input class="input" type="email" name="email" placeholder="Введите email" value="<?=$contacts->email?>"/></label></div>
                    <div class="col-3"><label><div class="fieldset__title">Skype</div><input class="input" name="skype" placeholder="Введите skype" value="<?=$contacts->skype?>"/></label></div>
                    <div class="col-3"><label><div class="fieldset__title">Телефон</div><input class="input" name="tel" placeholder="Введите телефон" value="<?=$contacts->tel?>"/></label></div>
                </div>
                <div class="row fieldset">
                    <div class="col-3"><label><div class="fieldset__title">Вконтакте</div><input class="input" name="vk" placeholder="Введите ссылку на профиль" value="<?=$contacts->vk?>"/></label></div>
                    <div class="col-3"><label><div class="fieldset__title">Facebook</div><input class="input" name="fb" placeholder="Введите ссылку на профиль" value="<?=$contacts->fb?>"/></label></div>
                    <div class="col-3"><label><div class="fieldset__title">GitHub</div><input class="input" name="github" placeholder="Введите ссылку на профиль" value="<?=$contacts->github?>"/></label></div>
                    <div class="col-3"><label><div class="fieldset__title">Twitter</div><input class="input" name="twitter" placeholder="Введите ссылку на профиль" value="<?=$contacts->twitter?>"/></label></div>
                </div>
                <div class="row fieldset mb-30">
                    <div class="col-3">
                        <label>
                            <div class="fieldset__title">Адрес</div>
                            <textarea class="textarea" name="address" cols="10" rows="5" placeholder="Введите адрес"><?=$contacts->address?></textarea>
                        </label>
                    </div>
                </div>
                <div class="row fieldset">
                    <div class="col-3"><label><div class="fieldset__title">Широта (lat)</div><input class="input" name="lat" placeholder="Введите широту" value="<?=$contacts->lat?>"/></label></div>
                    <div class="col-3"><label><div class="fieldset__title">Долгота (lng)</div><input class="input" name="lng" placeholder="Введите долготу" value="<?=$contacts->lng?>"/></label></div>
                </div>
                <div class="row">
                    <div class="col-md-auto pr-10">
                        <input type="submit" class="button button--no-pad-top button--save" name="edit-contacts" value="Сохранить"/>
                    </div>
                    <div class="col-md-auto pl-10"><a class="button" href="<?=HOST?>contacts">Отмена</a></div>
                </div>
            </form>
        </div>
    </div>
</div>
