<div class="main-wrapper">
    <div class="container container--center">
        <div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
            <div class="title-1">Сообщения от пользователей</div>
        </div>
        <div class="row pb-100">

            <?php foreach ($messages as $message): ?>

                <?php include "message-card.tpl"; ?>
        
             <?php endforeach ?>

        </div>

    </div>
</div>