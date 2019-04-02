<?php
/* @var $this yii\web\View */

$this->title = 'My Yii Application';
use yii\helpers\Html;
?>
<div class="site-index">
<p>
    <?=Html::a('Heyitsme', ['create'], ['class' => 'btn btn-success'])?>
</p>

<?php //echo Html::img('@web/files/testimg.jpg', ['alt'=>'some', 'class'=>'thing']);?>


<?php
foreach ($posts as $post) {
# code...
?>
  <div class="well">
  <?=$post->date . "<br>" . "<hr style='border: none;
height: 3px;background-color: #8D8D8D;'>";?>
  <?=$post->body;?>
  </div>
<?php }?>
</div>
