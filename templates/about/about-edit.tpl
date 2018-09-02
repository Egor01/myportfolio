<div class="container">
    <div class="row">
        <div class="col-xl-10 offset-1">
            <div class="title-1 m-0 pt-60">Редактировать обо мне</div>
            <?php require ROOT . "templates/_parts/_errors.tpl"?>
            <form class="form mb-100 pb-20 pt-35" enctype="multipart/form-data" action="<?=HOST?>about-edit" method="POST" >
                <div class="fieldset__title">Имя, Фамилия</div>
                    <input class="input" value="<?php echo $about->name?>" name="name" placeholder="<?php echo $about->name?>" />
                <div class="fieldset__title pt-30">Фотография</div>
                <div class="comment-row">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
                <div class="control-row">
                    <div class="file">
                        <label class="file__label">
                            <input class="file__input" type="file" name="photo"/>
                            <span class="file__inner-label">Выбрать файл</span>
                        </label>
                        <span class="file__inner-caption">Файл не выбран</span>
                    </div>
                </div>
                <div class="about-editing-avatar">
                    <div class="avatar--small">
                        
                        <?php 
                        
                            if ($about->photo != "") {
                                $photo = $about->photo;
                                $photo = HOST . "usercontent/about/" . $about->photo;
                            }
                        
                        ?>


                        <img src="<?php echo $photo?>" alt="avatar" />
                    </div>


                </div>
                <div class="fieldset__title">Информация на главной</div>
                <textarea  class="textarea editor" rows="5" name="desc" placeholder="Введите текст сообщения"><?php echo $about->description?></textarea> 
                <div class="row mt-50">
                    <div class="col-md-auto pr-10 ">
                        <input type="submit" class="button button--no-pad-top button--save" name="about-upd" value="Сохранить"/>
                    </div>
                    <div class="col-md-auto pl-10">
                        <a class="button" href="<?=HOST?>about">Отмена</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

