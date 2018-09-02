<div class="user-message mb-20">
    <div class="user-message__header">
    
        <div class="user-message__date"><?php echo rus_date("j F Y H:i ", strtotime($message['date_time'])); ?></div>
        <div class="user-message__button">
            <form action="<?=HOST?>messages-delete?id=<?=$message["id"]?>" method="POST">
                <input class="button button--del" type="submit" name="delete-msg" value="удалить"/>
            </form>
        </div>
    </div>
    <div class="user-message__from">
        <div class="user-message__name"><?=$message->name?></div><a class="user-message__email user-message__a" href="mailto:<?=$message->email?>"><?=$message->email?></a></div>
    <div class="user-message__text"><?=$message->text?></div>

   <?php  if ($message->message_file != "") { ?>
        <div class="user-message__attachments">
            <div class="user-message__attachments-caption">Прикрепленные файлы:</div>
            <a class="user-message__attachments-name user-message__a" target="_blank" href="<?=HOST.'usercontent/user_upload/'.$message->message_file?>"><?=$message->message_file_name_original?></a>
            <a class="user-message__attachments-name user-message__a" download target="_blank" href="<?=HOST.'usercontent/user_upload/'.$message->message_file?>">Скачать файл</a>
        </div>
     <?php } ?>



    
</div>

