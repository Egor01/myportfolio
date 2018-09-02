<?php 

    foreach ($errors as $error) {
        if (count($error) == 1) { ?>
            <div class="registration-page-form__row">
                <div class="error"><?=$error["title"]?></div>
            </div>
    <?php }else if(count($error) == 2) { ?>
            
            <div class="registration-page-form__row error-busy-email-password">
                <div class="error-with-desc"><?=$error["title"]?></div>
                <div class="error-with-desc-bottom">
                    <div class="error-with-desc-text">
                        <div class="p"><?=$error["desc"]?></div>
                    </div>
                </div>
            </div>
       <?php } 
    }

?>