<div class="container mt-50">
    <div class="row">
        <div class="col-xl-3">
            <div class="avatar">

                <?php 
                        
                    if ($aboutme->photo != "") {
                        $photo = $aboutme->photo;
                        $photo = HOST . "usercontent/about/" . $aboutme->photo;
                    }else {
                        $photo = "../img/avatars/photo-big.jpg";
                    }
                        
                ?>
                
                <img src="<?php echo $photo?>" alt="avatar-big" />
            </div>
        </div>
        <div class="col-xl-9">
            <div class="row">
                <div class="col-xl-6 mb-30">
                    <h1 class="section-main_name"><?php echo $aboutme->name?></h1>
                </div>
                 <?php if ( isAdmin() ) { ?>
                    <div class="col-xl-3 offset-3">
                        <a class="button button--edit" href="<?=HOST?>about-edit"> Редактировать</a>
                    </div>  
                <?php } ?>
            </div>
            <div class="row">
                <div class="col-xl-12 user-content mb-50">
                    <p class="section-main_text"><?php echo $aboutme->description?></p>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<div class="section section-technologi">
<div class="container pb-55 pt-55">
    <div class="row">
        <?php if ( isAdmin() ) { ?>
            <div class="col-xl-3 offset-9">
                <a class="button button--edit" href="<?=HOST?>skills-edit"> Редактировать</a>
            </div>  
        <?php } ?>
        <div class="col-xl-4 offset-3 mb-30 pl-30">
            
            <h2 class="title-1 mb-10 mt-0">Технологии</h2>
            <span class="title-medium">Которые использую в работе</span>
        </div>
    </div>

        <?php function skillsCircle($id, $title, $skills) {
            if ($skills->$id != "" && $skills->$id != 0 && $skills->$id != NULL) { ?>

               <div class="circle" id="<?=$id?>" 
                    data-name="<?=$title?>" 
                    data-procent=<?=$skills->$id?>>
                </div>
          <?php } 
         } ?>






    <div class="row stack mb-30">
        <div class="col-xl-3 text-center pr-0">
            <div class="title-3">Frontend</div>
        </div>
        <div class="col-xl-2 pl-0">
            <div id="skills_frontend" class="circle skills_frontend">

                <?php skillsCircle( "html", "HTML5", $skills); ?>
                <?php skillsCircle( "css", "CSS3", $skills); ?>
                <?php skillsCircle( "js", "JS", $skills); ?>
                <?php skillsCircle( "jquery", "jQuery", $skills); ?>

            </div>
        </div>
    </div>

    <div class="row stack mb-30">
        <div class="col-xl-3 text-center pr-0">
            <div class="title-3">Backend</div>
        </div>
        <div class="col-xl-2 pl-0">
            <div id="skills_backend" class="circle skills_backend">

                <?php skillsCircle( "php", "PHP", $skills); ?>
                <?php skillsCircle( "mysql", "MySql", $skills); ?>

            </div>
        </div>
    </div>

    <div class="row stack mb-30">
        <div class="col-xl-3 text-center pr-0">
            <div class="title-3">Workflow</div>
        </div>
        <div class="col-xl-2 pl-0">
            <div id="skills_workflow" class="circle skills_workflow">

                <?php skillsCircle( "git", "Git", $skills); ?>
                <?php skillsCircle( "gulp", "Gulp", $skills); ?>
                <?php skillsCircle( "bower", "Bower", $skills); ?>
                <?php skillsCircle( "webpack", "WebPack", $skills); ?>
                
            </div>
        </div>
    </div>
</div>
</div>
<div class="section-ui section section-experience user-medium">
<div class="container">
    <div class="row">
        <div class="col-xl-9 offset-3 mt-60 mb-100">
            <?php if ( isAdmin() ) { ?>
                <div class="col-xl-3 offset-9">
                    <a class="button button--edit" href="<?=HOST?>experience-edit"> Редактировать</a>
                </div>  
            <?php } ?>
            <div class="title-1 experience_title">Опыт работы</div>

                <?php foreach ($jobs as $job): ?>

                    <span class="experience_data"><?=$job->period?></span>
                    <div class="title-4"><?=$job->title?></div>
                    <p class="about-work"><?=$job->description?></p>
            
        
                <?php endforeach ?>

        </div>
    </div>
</div>