
<?php
/* @var $this yii\web\View */
use yii\helpers\Html;
foreach ($posts as $post) {
    echo Html::a(
        "<div class='well noteContainer'>".Html::encode($post->head).
        "<hr style='border: none;
        height: 2px;background-color: #8D8D8D;'>".nl2br(Html::encode($post->body))."</div>"
        , ['view', 'id' => $post->id]);
}
?>
