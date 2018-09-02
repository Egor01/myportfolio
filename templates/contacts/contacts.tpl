<div class="container mt-50">
    <div class="flex-wrap-button">


        <?php if ( isAdmin() ) { ?>
            <div class="mr-20">
                <a class="button button--edit" href="<?=HOST?>contacts-edit"> Редактировать</a>
            </div>
        <?php } ?>


        
    </div>
    <div class="row mb-80">
        <div class="col-md-10">
            <div class="row justify-content-between">
                <div class="col-md-5">
                    <div class="title-2 extrabold">Контакты</div>
                    <div class="row justify-content-between mt-minus-8">
                        <div class="col-md-6">
                            <ul class="contacts-block-subtitle">
                                <li class="contacts-block-subtitle__item">Email</li>
                                <li class="contacts-block-subtitle__item">Skype</li>
                                <li class="contacts-block-subtitle__item mb-55">Социальные сети</li>
                                <li class="contacts-block-subtitle__item">Телефон</li>
                                <li class="contacts-block-subtitle__item">Адрес</li>
                            </ul>
                        </div>
                        <div class="col-md-6 pl-0 pr-0">
                            <ul class="contacts-block-info">
                                <?php if ( $contacts->email != "" ) {  ?>
                                    <li class="contacts-block-info__item">
                                        <a class="contacts-block-info__item-link" href="mailto:<?=$contacts->email?>"><?=$contacts->email?></a>
                                    </li>
                               <?php } ?>

                               <?php if ( $contacts->skype != "" ) {  ?>
                                    <li class="contacts-block-info__item">
                                        <a class="contacts-block-info__item-link" href="tel:<?=$contacts->skype?>"><?=$contacts->skype?></a>
                                    </li>
                               <?php } ?>

                               <?php if ( $contacts->vk != "" ) {  ?>
                                    <li class="contacts-block-info__item strong">
                                        <a class="contacts-block-info__item-link" target="_blank" href="<?=$contacts->vk?>">vk</a>
                                    </li>
                               <?php } ?>

                               <?php if ( $contacts->github != "" ) {  ?>
                                    <li class="contacts-block-info__item strong mb-20">
                                        <a class="contacts-block-info__item-link" target="_blank" href="<?=$contacts->github?>">github</a>
                                    </li>
                               <?php } ?>

                               <?php if ( $contacts->tel != "" ) {  ?>
                                    <li class="contacts-block-info__item">
                                        <a class="contacts-block-info__item-link"  href="tel:<?=$contacts->tel?>"><?=$contacts->tel?></a>
                                    </li>
                               <?php } ?>

                               <?php if ( $contacts->address != "" ) {  ?>
                                    <li class="contacts-block-info__item">
                                        <p class="contacts-block-info__item-link"><?=$contacts->address?></p>
                                    </li>
                               <?php } ?>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="title-2 extrabold">Связаться со мной</div>

                    <?php require ROOT . "templates/_parts/_errors.tpl"?>

                    <form class="form" enctype="multipart/form-data" action="<?=HOST?>contacts" method="POST">
                        <input class="input mb-10" name="name" placeholder="Введите имя" />
                        <input class="input mb-10" name="email" placeholder="Email" />
                        <textarea class="textarea" name="text" rows="5" placeholder="Сообщение"></textarea>
                        <div class="fieldset__title mt-20">Прикрепить файл</div>
                        <div class="comment-row">gif, jpg, png, pdf, doc, весом до 5Мб.</div>
                        <div class="control-row mb-20">
                            <div class="file">
                                <label class="file__label">
                                    <input class="file__input" type="file" name="file"/>
                                        <span class="file__inner-label file__inner-label--large-radius">Выбрать файл</span>
                                </label>
                                <span class="file__inner-caption">Файлы не выбран</span>
                            </div>
                        </div>
                        <input class="button button--no-pad-top button--save" type="submit" name="send-msg" value="отправить"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php if ($contacts->lat != "" && $contacts->lng != "") { ?>
   <div class="map" id="map"></div>

   <!-- google maps-->
    <script>
        var place = { lat: <?php echo $contacts->lat?>, lng: <?php echo $contacts->lng?> };
    </script>

    <script src="<?php echo HOST;?>templates/assets/js/map.js"></script>

    <script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAm799yaN1ZBAnyf6PT3Y_iXSZLkG5w1oE&amp;callback=initMap"></script>
    <!-- //google maps-->
<?php } ?>





