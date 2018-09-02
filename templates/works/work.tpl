
<div class="project container mb-100 mt-40 pb-20">
    <div class="project__header row mb-45">
        <div class="project__header-info col-sm-9 offset-sm-1">
            <div class="project__title title-1 mt-0 mb-20"><?php echo $works->title?></div>
            <span class="project__name title-6"><?php echo $about["name"]?></span>
            <span class="project__works title-6">
                <a href="<?php HOST?>/works">Работы</a>
            </span>
            <span class="project__date title-6"><?php echo rus_date("j F Y", strtotime($works['date_time'])); ?></span>
        </div>


        <?php if ( isAdmin() ) { ?>
            <div class="project__header-button col-sm-2 text-right">
                <a class="button button--edit" href="<?php HOST?>edit-work?id=<?=$works->id?>">Редактировать</a>
            </div>
        <?php } ?>

    </div>
    <div class="col-sm-10 offset-sm-1 pr-0 pl-0">
        <?php if ($works->img_big != "") { ?>
            <img src="<?=HOST?>usercontent/works/<?php echo $works->img_big?>" alt="<?php echo $works['title']?>"  />      
        <?php } ?>
    </div>
    <div class="row mt-55">
        <div class="col-sm-6 offset-sm-1">
            <div class="project-info user-content">
                <div class="title-3">Кратко о проекте</div>
                <p class="project__text"><?php echo $works->description?></p> 
                <div class="title-3">Результат</div>
                <p class="project__text"><?php echo $works->result?></p> 
            </div>
        </div>
        <div class="col-sm-5">
            <div class="techs">
                <div class="title-3 mt-0">Технологии</div>
                <p class="project__text"><?php echo $works->technologies?></p>
                <div class="title-3 mt-40">Ссылка на проект</div>
                    <a href="<?php echo $works->link_project?>"><?php echo $works->link_project?></a>
                <div class="title-3 mt-45">Код на github</div>
                    <a href="<?php echo $works->link_git_hub?>"><?php echo $works->link_git_hub?></a></div>
        </div>
    </div>
    <div class="button-block mt-30">
        <a class="button " href="#"><i class="fas fa-arrow-left icon-style icon-style--back"></i>Все работы</a>
        <a class="button" href="#">Следующая работа<i class="fas fa-arrow-right icon-style"></i></a>
    </div>
</div>