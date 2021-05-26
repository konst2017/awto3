<?php
use kartik\datecontrol\Module;

$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
	'defaultRoute' => 'site/index',
	
    'modules' => [
	
     
 'formatter' => [
        'dateFormat'=>'dd-MM-yyyy',
        'datetimeFormat' => 'yyyy-MM-dd HH:mm:ss',
    ],

'datecontrol' =>  [
            'class' => '\kartik\datecontrol\Module',
            'displaySettings' => [
                Module::FORMAT_DATE => 'dd-M-yyyy',
                Module::FORMAT_TIME => 'hh:mm',
                Module::FORMAT_DATETIME => 'dd-MM-yyyy hh:mm:ss a',
            ],
            'autoWidgetSettings' => [
                Module::FORMAT_DATE => ['pluginOptions' => [
                                                 'autoclose' => true,
                                                 'todayHighlight' => true,
                                                 'startDate' => 'current',
                                       ],
                                        'readonly' => true],
                Module::FORMAT_TIME => ['readonly' => true]
            ],
            'saveSettings' => [
                Module::FORMAT_DATE => 'php:U',
               // Module::FORMAT_TIME => 'php:u'
            ],
            'ajaxConversion' => false,
        ],

'yii2images' => [
            'class' => 'rico\yii2images\Module',
            //be sure, that permissions ok
            //if you cant avoid permission errors you have to create "images" folder in web root manually and set 777 permissions
            'imagesStorePath' => '../../frontend/web/upload/store', //path to origin images
            'imagesCachePath' => '../../frontend/web/upload/cache', //path to resized copies
            'graphicsLibrary' => 'GD', //but really its better to use 'Imagick'
            'placeHolderPath' => '@webroot/upload/store/no-image.png', // if you want to get placeholder when image not exists, string will be processed by Yii::getAlias
        ],

   

	
	],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        
    ],
    'params' => $params,
];
