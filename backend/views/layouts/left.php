<aside class="main-sidebar">

    <section class="sidebar">
        <div class="user-panel ">
            <p style="color:#fff" class="text-success">
                <i class="fa fa-circle text-success"></i>
                <?php
                $session = Yii::$app->session;
                if (!$session->isActive) {
                    $session->open();
                }
                if ( Yii::$app->user->isGuest ) {
                    // return Yii::$app->getResponse()->redirect('site/login');
                } else{
                    echo strtoupper(Yii::$app->user->identity->username);
                }
              
                ?>
            </p> 
        </div>

        <?=
        dmstr\widgets\Menu::widget(
                [
                    'options' => ['class' => 'sidebar-menu tree', 'data-widget' => 'tree'],
                   
                    'items' => [
                        [
                            'label' => 'DASHBOARD',
                            'icon' => 'gears',
                            'url' => ['/'],
                           
                        ],
                        [
                            'label' => 'PROFORMA',
                            'icon' => 'gears',
                            'url' => ['/proposal/research-proposal'],
                           
                        ],
                    ],
                ]
        )
        ?>

    </section>

</aside>
