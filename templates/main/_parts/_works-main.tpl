<div class="container">
    <div class="title-1 mb-25">Новые <a href="#">работы</a></div>
    <div class="row">
      <?php foreach ($works as $work): ?>

            <?php include (ROOT . "templates/works/work-card.tpl"); ?>
        
        <?php endforeach ?>
    </div>
</div>