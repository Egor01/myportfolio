<div class="col-md-4">
    <div class="card card-portfolio mb-50">
        <div class="card-portfolio__img-block">

                <?php if ($work['img_small'] != "") { ?>
                    <img class="card-portfolio__img" src="<?=HOST?>usercontent/works/<?php echo $work['img_small']?>" alt="<?php echo $work['title']?>" />
                <?php }else { ?>
                    <img class="card-portfolio__img" src="<?=HOST?>usercontent/works/placeholderImg.jpg" alt="placeholder" />
                <?php } ?>

        </div>


            <?php 
                $heading = $work['title'];
                $headingLen = mb_strlen($heading, 'UTF-8');
                $heading = mb_substr($heading,0,22, 'UTF-8');
                

                if ( $headingLen > 22 ) {
                    $heading .= " ...";
                }else {
                    $heading .= "";
                }
                
            ?>
        

        <div class="card-portfolio__body">
            <div class="title-4 contentCut"><?php echo $heading?></div>
                
                <a class="button" href="works/work?id=<?=$work->id?>">Смотреть кейс</a>
                <?php if ( isAdmin() ) { ?>
                    <form class="button--del-post-card" action="<?=HOST?>works/del-work?id=<?=$work["id"]?>" method="POST">
                        <input class="button button--del button--del-work" type="submit" name="delete-work" value="удалить"/>
                    </form>
                <?php } ?>
            </div>
    </div>
</div>