

<?php require ROOT. "templates/_parts/_errors.tpl" ?>


<?php if ($recoveryCode) { ?>
    <!-- если код верен, устанавливаем новый пароль -->
    <form id="form-login" class="login-page-form" action="<?=HOST?>set-new-password" method="POST">
        <div class="login-page-form__header">Введите новый пароль</div>


        <?php require ROOT . "templates/_parts/_errors.tpl"?>


        <div class="login-page-form__row">
            <input class="input" name="resetpassword" type="password" placeholder="Введите новый пароль"  />
        </div>

        <input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
        <input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
        
        <div class="login-page-form__footer">
            <input class="button button--no-pad-top" name="set-new-password" type="submit" value="Установить пароль"/>
        </div>
    </form>

<?php } elseif ($success) { ?>

    <div id="form-login" class="login-page-form" action="<?=HOST?>set-new-password" method="POST">
        <div class="login-page-form__header">Пароль успешно изменен</div>

        
        <div class="login-page-form__footer">
            <a href="<?=HOST?>login" class="button button-login">Перейти на страницу входа</a>
        </div>
    </div>


<!-- если код восстановления НЕверен -->
<?php } else {  ?>

	<!-- Неверный код восстановления -->

    <div id="form-login" class="login-page-form" action="<?=HOST?>set-new-password" method="POST">
        <div class="login-page-form__header">Ошибка</div>

        <div class="registration-page-form__row error-busy-email-password">
                <div class="error-with-desc">Неверный код восстановления</div>
                <div class="error-with-desc-bottom">
                    <div class="error-with-desc-text">
                        <div class="p">Был указан неверный код для восстановления пароля. Перейдите по ссылке из письма, либо начните процедуру восстановления пароля заново.</div>
                    </div>
                </div>
            </div>
        
        <div class="login-page-form__footer">
            <a href="<?=HOST?>login" class="button button-login">Перейти на страницу входа</a>
        </div>
    </div>


<?php } ?>
