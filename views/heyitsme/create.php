<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Heyitsme */

$this->title = 'Create Heyitsme';
$this->params['breadcrumbs'][] = ['label' => 'Heyitsmes', 'url' => ['heyitsme']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="heyitsme-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
