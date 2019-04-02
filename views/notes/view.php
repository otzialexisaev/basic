<?php
use yii\helpers\Html;
    echo "<br>";
    echo $post->head;
    echo "<hr style='border: none;
    height: 2px;background-color: #8D8D8D;'>";
    echo nl2br($post->body). "<br><br><br>";
    echo Html::a("Редактировать", ['update', 'id' => $post->id], ['class'=>'btn btn-success']);
    echo Html::a("Удалить", ['delete', 'id' => $post->id], ['class'=>'btn btn-danger']);
?>