<div class="main-wrapper">
    <div class="container container--center">
        <div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
            <div class="title-1">Блог веб-разработчика</div>


            <div class="section-ui">

                <?php if ( isAdmin() ) { ?>
                    <a class="button button--edit" href="<?=HOST?>blog/add-post"> Добавить пост</a>
                <?php } ?>

            </div>

        </div>
        <div class="row pb-100">

            <?php foreach ($posts as $post): ?>

                <?php include "blog-card.tpl"; ?>
        
             <?php endforeach ?>

        </div>

    </div>
</div>