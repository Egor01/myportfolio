

<form id="form-reg" class="registration-page-form" action="<?=HOST?>registration" method="POST">
    <div class="registration-page-form__header">Регистрация</div>

    <?php require ROOT . "templates/_parts/_errors.tpl"?>


    <div class="registration-page-form__row">
        <input class="input" name="email" type="email" placeholder="E-mail" />
    </div>

    <div class="registration-page-form__row">
        <input class="input" name="password" type="password" placeholder="Пароль" />
    </div>

    <div class="registration-page-form__footer">
        <input class="button button--registration" name="registration" type="submit" value="Регистрация"/>
    </div>

</form>