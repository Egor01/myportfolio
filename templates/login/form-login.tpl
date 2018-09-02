

<form id="form-login" class="login-page-form" action="<?=HOST?>login" method="POST">
    <div class="login-page-form__header">Вход на сайт</div>


    <?php require ROOT . "templates/_parts/_errors.tpl"?>


    <div class="login-page-form__row">
        <input class="input" name="email" type="email" placeholder="E-mail"  />
    </div>
    <div class="login-page-form__row">
        <input class="input" name="password" type="password" placeholder="Пароль"  />
    </div>
    <div class="login-page-form__row">
        <div class="login-page-form__col">
            <div class="checkbox">
                <label class="checkbox__label">
                    <input class="checkbox__input" type="checkbox" checked="checked"/>
                    <span class="checkbox__check-inner"></span>
                    <span class="checkbox__check-inner-label">Запомнить меня</span>
                </label>
            </div>
        </div>
        <div class="login-page-form__col float-right">
            <a class="login-page__links" href="<?=HOST?>lost-password">Забыл пароль</a>
        </div>
    </div>
    <div class="login-page-form__footer">
        <input class="button" name="login" type="submit" value="Войти"/>
    </div>
</form>