

<form id="form-login" class="login-page-form" action="<?=HOST?>lost-password" method="POST">
    <div class="login-page-form__header">Воcстановление пароля</div>


    <?php if ( !empty($success)) { ?>

		<div class="alert alert-success alert-success--custom" role="alert">
			<?php echo array_shift($success); ?>
		</div>
		
		<div class="form-group form-group--custom">
			<a href="login" class="btn btn-primary btn-primary--custom">Перейти на страницу входа</a>
		</div>

	<?php } else { ?>




    <?php require ROOT . "templates/_parts/_errors.tpl"?>


    <div class="login-page-form__row">
        <input class="input" name="email" type="email" placeholder="E-mail"  />
    </div>
    
    <div class="login-page-form__row">
        <div class="login-page-form__col">
            <div class="login-page-form__col float-right">
            <a class="login-page__links" href="<?=HOST?>registration">Регистрация</a>
        </div>
        </div>
        <div class="login-page-form__col float-right">
            <a class="login-page__links" href="<?=HOST?>login">Вход на сайт</a>
        </div>
    </div>
    <div class="login-page-form__footer">
        <input class="button button--no-pad-top" name="lost-password" type="submit" value="Восстановить пароль"/>
    </div>

    <?php } ?>
</form>