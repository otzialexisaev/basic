<?php

use yii\grid\GridView;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel app\models\HeyitsmeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Heyitsme';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="heyitsme-index">

    <h1><?=Html::encode($this->title)?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?=Html::a('Heyitsme', ['create'], ['class' => 'btn btn-success'])?>
    </p>

    <?=GridView::widget([
    'dataProvider' => $dataProvider,
    'filterModel' => $searchModel,

    'columns' => [
        [
            'attribute' => 'body',
            'format' => 'html',
            'label' => 'Name',
        ],
        //'body:ntext',
        'date',
        ['class' => 'yii\grid\ActionColumn'],
    ],
]);?>
</div>
