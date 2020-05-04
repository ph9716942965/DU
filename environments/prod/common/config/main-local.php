<?php
return [
      'timeZone' => 'Asia/Calcutta',
    //   'on beforeAction' => function ($event) {
    //     if (!(
    //           (!empty($_SERVER['HTTPS']) AND $_SERVER['HTTPS'] != 'off') || 
    //           $_SERVER['SERVER_PORT'] == 443 
    //         )) {
    //             return Yii::$app->controller->redirect("https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]");
    //     }
    // },
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=DU',
            'username' => 'medi',
            'password' => 'Welcome123',
            'charset' => 'utf8',
             'on afterOpen' => function($event) { 
                $event->sender->createCommand("SET time_zone='+05:30';")->execute(); 
            }, 
        ],
       
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
		'transport' => [
		        'class' => 'Swift_SmtpTransport',
		        'host' => 'smtp.gmail.com',
		        'username' => 'nasiruddin@thriwe.com',
		        'password' => 'Abcd!234@',
		        'port' => '587',
		        'encryption' => 'tls',
		    ],

        ],
    ],
];