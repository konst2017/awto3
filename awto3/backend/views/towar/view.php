<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Towar */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Towars', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="Towar-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <?php
    $img = $model->getImage(); ?>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',

            'name',
            'addtime',
            'kat',
            'podkat',
            'dwig',
            'priw',
            'content:html',
            'price',
            'keywords',
            'description',
            [
                'attribute' => 'image',
                'value' => "<img src='{$img->getUrl()}'>",
                'format' => 'html',
            ],
            'hit',
            'new',
            'sale',
        ],
    ]) ?>

</div>
