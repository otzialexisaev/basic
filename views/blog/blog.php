<?php
    use yii\i18n\Formatter;
    foreach ($posts as $post ) {
?>

<div class="well">
<?= $post->title ?>
<hr>
<!--<?=  htmlspecialchars($post->text) ?>-->
<?=  Formatter::asNtext($post->text) ?>
</div>

<?php
    }
?>