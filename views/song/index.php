<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SongSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Playlists';
?>
<div class="song-index">

  <h1><?=Html::encode($this->title)?></h1>
  <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
  <p>
      <?=Html::a('Create Playlist', ['playlist/create'], ['class' => 'btn btn-success'])?>
  </p>
	<div class="playlistAllContainer">
	<?php
foreach ($playlists as $playlist) {
    echo Html::a(
        "<div class='well playlistLinkContainer' style='margin-bottom:0px'><p>" . Html::encode($playlist->name)."</div>", 
				['playlist/view', 'id' => $playlist->id]);
}
?>
</div>

</div>
