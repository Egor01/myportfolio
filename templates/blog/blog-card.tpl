<div class="col-4">
    <div class="section-ui">
        <div class="card card-post">
            <div class="card__post-img-block">

                <?php if ( isAdmin() ) { ?>
                    <form class="button--del-post-card" action="<?=HOST?>blog/del-post?id=<?=$post["id"]?>" method="POST">
                        <input class="button button--del button--del-post" type="submit" name="delete-post" value="удалить"/>
                    </form>
                <?php } ?>

                <?php if ($post['post_img_small'] != "") { ?>
                    <img class="card-post__img" src="<?=HOST?>usercontent/blog/<?php echo $post['post_img_small']?>" alt="<?=$post['title']?>" />
               <?php }else { ?>
                    <img class="card-post__img" src="<?=HOST?>usercontent/blog/placeholderImg.jpg" alt="placeholder" />
              <?php } ?>
            </div>
            
         
                <?php 
                    $heading = $post->title;
                    $headingLen = mb_strlen($heading, 'UTF-8');
                    $heading = mb_substr($heading,0,20, 'UTF-8');
                    

                    if ( $headingLen > 22 ) {
                        $heading .= " ...";
                    }else {
                        $heading .= "";
                    }
                ?>


            <div class="title-4">
                <?php echo $heading?>
            </div>
            <a class="button" href="blog/post?id=<?=$post->id?>">Читать</a>
        </div>
    </div>
</div>