<div class="container">
    <div class="title-3 pt-30">Опыт работы</div>
    <?php require ROOT . "templates/_parts/_errors.tpl"?>

    <?php foreach ($jobs as $job): ?>

        <div class="user-message mb-20">
            <div class="user-message__header">
                <div class="user-message__date"><?=$job->period?></div>
                <form action="<?=HOST?>experience-del?id=<?=$job["id"]?>" method="POST">
                    <input class="button button--del" type="submit" name="delete-exp" value="удалить"/>
                </form>
            </div>
            <div class="title-4"><?=$job->title?></div>
            <div class="user-message__text"><?=$job->description?></div>
        </div>
        
    <?php endforeach ?>


    <div class="title-3">Добавить новое место работы</div>
    <form class="user-message mb-100" action="<?=HOST?>experience-edit" method="POST" >
        <div class="fieldset__title">Период</div>
            <input class="input mb-15" name="period" placeholder="Введите даты начала и окончания работы" />
        <div class="fieldset__title">Название должности</div>
            <input class="input mb-15" name="title" placeholder="Введите название должности" />
        <div class="fieldset__title">Описание работы, должностные обязанности, достигнутые результаты</div>
            <textarea class="textarea  editor mb-50" name="description" rows="5" placeholder="Напишите интересное краткое содержательное описание"></textarea>
        <input class="button mt-30 button--no-pad-top button--save" name="experience-add" type="submit" value="добавить"/>
    </form>
</div>