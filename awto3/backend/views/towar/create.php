<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\modules\admin\models\Towar */

$this->title = 'Create Towar';
$this->params['breadcrumbs'][] = ['label' => 'Towars', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="Towar-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
