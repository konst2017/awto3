<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
      
    

   
    "layout/styles/layout.css" ,
   
    
    
    ];
    public $js = [
	
	'js3/jquery.scrollUp.min.js',
        'js3/price-range.js',
        'js3/jquery.prettyPhoto.js',
        'js3/jquery.cookie.js',
        'js3/jquery.accordion.js',
        'js3/main.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
