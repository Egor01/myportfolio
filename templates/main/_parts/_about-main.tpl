<!-- resume -->
<div class="container">
    <div class="row mt-70">
        <div class="col-md-3">
            <div class="avatar"><img src="<?=HOST?>usercontent/about/<?php echo $about->photo?>" alt="avatar-big" /></div>
        </div>
        <div class="col-md-9">
            <div class="about">
                <div class="about-me">
                    <h1 class="title-1 title-1--special"><?php echo $about->name?></h1>
                    <p><?php echo $about->description?></p>
                </div>
                <a class="button" href="<?php echo HOST?>about">Подробнее</a>
            </div>
        </div>
    </div>
</div>
<hr/>