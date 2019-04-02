<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\i18n\Formatter;
use yii\helpers\BaseHtml;

/* @var $this yii\web\View */
/* @var $model app\models\Heyitsme */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="heyitsme-form">

    <?php $form = ActiveForm::begin(); 
    //$model->body=Formatter::asHtml($model->body);
    ?>

    <?php echo $form->field($model, 'body')->textarea(['rows' => 20]) ?>
    
    <?php  //$model->body = Html::decode($model->body, $doubleEncode = true);
    //echo $model->body; ?>
    <?= $form->field($model, 'date')->textInput(['maxlength' => true]) ?>

<?php 
    //BaseHtml::textarea($something, $value='');
    echo $model->body = Html::encode(nl2br($model->body));

?>

    <?php //echo Html::encode($model->body) ?>
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>
    <?php ActiveForm::end(); ?>

</div>
<!--
HTML ENCODE
HTML ENCODE
HTML ENCODE
HTML ENCODE
HTML ENCODE
HTML ENCODE
HTML ENCODE
HTML ENCODE
HTML ENCODE
HTML ENCODE
-->