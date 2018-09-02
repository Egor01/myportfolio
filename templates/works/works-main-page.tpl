<div class="main-wrapper">
    <div class="container container--center">
        <div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
            <div class="title-1">Работы которые сделал я и моя команда</div>

            <div class="section-ui">

                <?php if ( isAdmin() ) { ?>
                    <a class="button button--edit" href="<?=HOST?>works/add-work">Добавить работу</a>
                <?php } ?>

            </div>

        </div>
        <div class="row pb-100">

            <?php foreach ($works as $work): ?>

                <?php include "work-card.tpl"; ?>
                        
             <?php endforeach ?>


        </div>

    </div>
</div>