<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Blog */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="blog-form">

  <?php $form = ActiveForm::begin();?>
  <?=$form->field($model, 'title')->textInput()?>
  <?=$form->field($model, 'text')->textarea(['rows' => 6])?>

	<div class="form-group">
      <?=Html::submitButton('Сохранить', ['class' => 'btn btn-success'])?>
  </div>

	<?php ActiveForm::end();?>

</div>
