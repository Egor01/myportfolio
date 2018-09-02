
<div class="user-comment">
    <?php if ($comment['avatar_small'] != "") { ?>
        <div class="user-comment-avatar">
            <div class="avatar--small">
                <img src="<?=HOST?>usercontent/avatar/<?php echo $comment['avatar_small']?>" alt="avatar-small" />
            </div>
        </div>
    <?php } ?>
    <div class="user-comment-wrap">
        <div class="comment-wrap">
            <div class="user-name">
                <?=$comment["name"]?>
                <?=$comment["secondname"]?>
            </div>
            <div class="user-date">
                <i class="far fa-clock"></i>
                <span class="user-date--dat"><?php echo rus_date("j F Y H:i ", strtotime($comment['date_time'])); ?></span>
            </div>
        </div>
        <p class="user-text"><?=$comment["text"]?></p>
    </div>

    <?php if ( isAdmin() ) { ?>

        <form class="button--del-right" action="<?=HOST?>blog/del-comment?id=<?=$comment["id"]?>" method="POST">
            <input class="button button--del" type="submit" name="delete-comment" value="удалить"/>
        </form>
                        
    <?php } ?>
    
</div>