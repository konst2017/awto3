<?php

/* @var $this yii\web\View */

use yii\data\Pagination;
use frontend\models\Category;
use frontend\models\Product;
use yii\widgets\ActiveForm;
use frontend\models\Logo;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\frontendAsset;
use frontend\assets\ltfrontendAsset;
use frontend\controllers\CategoryController;
use mihaildev\ckeditor\CKEditor;
use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\select2\Select2;

$this->title = 'My Yii frontendlication';

?>


<?php
Pjax::begin(); ?>
<?= Html::beginForm(['/towar/pjax'], 'get', ['data-pjax' => '', 'class' => 'form-inline']); ?>


<label class="control-label" for="product-price">Двигатель</label>
<?= Html::input('text', 'dwig', Yii::$app->request->get('dwig'), ['class' => 'form-control']) ?>

<label class="control-label" for="product-price">Привод</label>
<?= Html::input('text', 'priw', Yii::$app->request->get('priw'), ['class' => 'form-control']) ?>
<label class="control-label" for="product-price">Марка</label>
<?php
echo Select2::widget(
    [
        'name' => 'kat',
        'data' => \yii\helpers\ArrayHelper::map(
            \backend\models\category::find()->groupBY('name')->All(),
            'name',
            'name'
        ),
        'options' => [
            'placeholder' => '',
            'multiple' => true
        ],
    ]
);
?>


<?= Html::submitButton('Поиск с условием', ['class' => 'btn btn-lg btn-primary']) ?>
<?= Html::endForm() ?>


<!-- START PAGE-CONTENT -->
<section class="page-content">
    <?php
    if (!empty($hits)): ?>
    <div class="features_items"><!--features_items-->
        <h2 class="title text-center">Хиты продаж</h2>
        <?php
        foreach ($hits as $hit): ?>
            <?php
            $mainImg = $hit->getImage(); ?>
            <div class="col-sm-4">
                <div class="product-image-wrfrontender">
                    <div class="single-products">


                        <div class="productinfo text-center">

                            <?= Html::img($mainImg->getUrl('268x249'), ['alt' => $hit->name]) ?>

                            <p>Модель- <?= $hit->kat ?></p>
                            <p>Дивгатель-<?= $hit->dwig ?></p>
                            <p> Привод-<?= $hit->priw ?></p>
                            <h2>$<?= $hit->price ?></h2>
                            <p><a href="<?= \yii\helpers\Url::to(
                                    ['towar/view', 'id' => $hit->id]
                                ) ?>"><?= $hit->name ?></a></p>
                            <a href="<?= \yii\helpers\Url::to(['cart/add', 'id' => $hit->id]) ?>"
                               data-id="<?= $hit->id ?>" class="btn btn-default add-to-cart"><i
                                        class="fa fa-shopping-cart"></i>Корзина</a>
                        </div>

                    </div>

                </div>
            </div>

            <?php
        $i++ ?>
            <?php
            if ($i % 3 == 0): ?>
                <div class="clearfix"></div>
            <?php
            endif; ?>
        <?php
        endforeach; ?>
        <div class="clearfix"></div>
        <?php
        echo \yii\widgets\LinkPager::widget(
            [
                'pagination' => $pages,
            ]
        );
        ?>
        <?php
        else : ?>
            <h2>Здесь товаров пока нет......</h2>
        <?php
        endif; ?>

        <?php
        Pjax::end(); ?>


    </div><!--features_items-->

</section>
	