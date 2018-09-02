<div class="main-wrapper">
    <div class="container container--center">
        <div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
            <div class="title-1">Все категории</div>

            <div class="section-ui">

                <?php if ( isAdmin() ) { ?>
                    <a class="button button--save" href="#"> Редактировать</a>
                    <a class="button button--edit" href="<?=HOST?>blog/category-new">Добавить категорию</a>
                <?php } ?>

            </div>

        </div>
        <div class="row pb-100">

            <table class="table table-hover center">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Название</th>
                        <th scope="col">Редактировать</th>
                        <th scope="col">Удалить</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($cats as $cat): ?>
                        <tr>
                            <th scope="row"><?=$cat["id"];?></th>
                            <td><?=$cat["cat_title"];?></td>
                            <td><a class="button button--edit" href="<?=HOST?>blog/category-edit?id=<?=$cat["id"];?>">Редактировать</a></td>
                            <td><a class="button pt-5 button--del" href="<?=HOST?>blog/category-delete?id=<?=$cat["id"];?>">Удалить</a></td>
                        </tr>
                     <?php endforeach ?>
                </tbody>
               
            </table>
        

        
            

        </div>

    </div>
</div>



