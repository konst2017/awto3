<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use mihaildev\ckeditor\CKEditor;
use mihaildev\elfinder\ElFinder;
mihaildev\elfinder\Assets::noConflict($this);
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use backend\assets\AppAsset;
use backend\assets\ltAppAsset;

use yii\bootstrap4\Modal;
//use kartikForm\ActiveForm;
use kartik\datecontrol\DateControl;
// use yii\jui\DatePicker;
use kartik\date\DatePicker;
use kartik\select2\Select2;
AppAsset::register($this);
ltAppAsset::register($this);$this->title = 'My Yii Application';
/* @var $this yii\web\View */
/* @var $model backend\modules\admin\models\Towar */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="Towar-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    



<div class="col-xs-4">
      
	
        </div>
	<?= ''// yii\jui\DatePicker::widget(['name' => 'attributeName']) ?>	
		
	<?= $form->field($model, 'addtime')->widget(DatePicker::className(), [
    'type' => DatePicker::TYPE_COMPONENT_APPEND,
    'pluginOptions' => [
        'format' => 'yyyy-mm-dd',
        'autoclose' => true,
    ],
    'options' => [
        'class'=>'col-xs-3'
    ]
]) ?>	
	

<?= $form->field($model, 'kat')
->widget(kartik\select2\Select2::className(), 
['data' => \yii\helpers\ArrayHelper::map(backend\models\Category::find()->All(), 'name', 'name')])
?>
<?= $form->field($model, 'podkat')
->widget(kartik\select2\Select2::className(), 
['data' => \yii\helpers\ArrayHelper::map(backend\models\Podcat::find()->All(), 'name', 'name')])
?>
<?= $form->field($model, 'dwig')
->widget(kartik\select2\Select2::className(), 
['data' => \yii\helpers\ArrayHelper::map(backend\models\Dwig::find()->All(), 'name', 'name')])
?>


<?= $form->field($model, 'priw')
->widget(kartik\select2\Select2::className(), 
['data' => \yii\helpers\ArrayHelper::map(backend\models\Priwod::find()->All(), 'name', 'name')])
?>
    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?php
    ?>
    <?php
    echo $form->field($model, 'content')->widget(CKEditor::className(), [
        'editorOptions' => ElFinder::ckeditorOptions('elfinder', [])
    ]);
    ?>

    

    <?= $form->field($model, 'keywords')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->textInput(['maxlength' => true]) ?>


    <?= $form->field($model, 'image')->fileInput() ?>
    <?= $form->field($model, 'gallery[]')->fileInput(['multiple' => true, 'accept' => 'image/*']) ?>

    <?= $form->field($model, 'hit')->checkbox([ '0', '1', ]) ?>

    <?= $form->field($model, 'new')->checkbox([ '0', '1', ]) ?>

    

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
