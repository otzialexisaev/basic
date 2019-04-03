<?php
use yii\helpers\Html;
use app\models\Ost;
use yii\widgets\ActiveForm;
use app\models\Notes;
?>
<!-- Div for the player -->
<audio id="player" ></audio>
<div id="stickydiv">
  <div class="btnWrapper">
    <img src="css/resources/player/prevBtn.jpg" id="prevBtn">
  </div>
  <div class="btnWrapper">
    <img src="css/resources/player/playBtn.jpg" id="playPauseBtn">
  </div>
  <div class="btnWrapper">
    <img src="css/resources/player/nextBtn.jpg" id="nextBtn">
  </div>

  <div class="songInfoContainer">
    <div class="titlePlusTime">
      <div id="songTitle">No song selected</div>
      <div id="songTime">0:00 - 0:00</div>
    </div>
    <div class="scrubber" id="scrubber" >
      <div id="progressBar"></div>
      <!--<div class="loaded"></div>-->
    </div>
  </div>
  <div class="btnWrapper">
    <img src="css/resources/player/randomBtn.jpg" id="randomBtn">
  </div>

  <div class="btnWrapper">
    <img src="css/resources/player/repeatAllBtn.jpg" id="repeatAllBtn">
  </div>

  <div class="btnWrapper">
    <img src="css/resources/player/repeatOneBtn.jpg" id="repeatOneBtn">
  </div>

  <div class="btnWrapper">
    <img src="css/resources/player/playlistBtn.jpg" id="playlistBtn">
  </div>
  <div id="audioSliderContainer">
    <input type="range" min="1" max="100" value="50" class="slider"
    id="myRange">
  </div>
</div>
<div id="testresult"></div>
<div id="playlistMenu">
  <?php
    //Array of all albums
    $conn = mysqli_connect('localhost','root','','heyitsme');
    $albums = mysqli_query($conn, "select season from seasons");
    $i = 1;
    while($row = mysqli_fetch_array($albums)){
  ?>
      <div class="playlistMenuItem noselect" id="MenuItem<?php echo $i ?>" data-toggle="true"><?php echo trim($row['season']) ?></div>
    <?php
      $i++;
    }
    ?>
</div>

<?php
  //Get all songs
  $allOsts = Ost::find()->all();
  //Get the value of "path" of first song to check if playlist should change
  $albumCheck = $allOsts[0]->path;
  ?>
  <!-- Create grid container which contains a single playlist -->
  <!-- Id is taken from "seasons" table which is linked on the first song -->
  <div class="playlistContainer" id="<?php $row = mysqli_fetch_array(mysqli_query($conn, "select seasons.season from seasons inner join ost on seasons.season_id=ost.season where ost.season=seasons.season_id and ost.id=1")); echo $row['season'] ?>">
  <?php
    //Loop trough all songs
    foreach ($allOsts as $ost) {
      //If "path" is different from the previous one closes container
      //for playlist and creates new one with new id
      if($albumCheck!=$ost->path){
      ?>
      </div>
      <div class="playlistContainer" id="<?php $row = mysqli_fetch_array(mysqli_query($conn, "select seasons.season from seasons inner join ost on seasons.season_id=ost.season where ost.season=seasons.season_id and ost.id=".$ost->id)); echo $row['season'] ?>">
      <?php
      //New "path" to check
      $albumCheck = $ost->path;
      }
  ?>
  <!-- Creates container for songs with attr data-audio containing path+name -->
    <div class="songContainer noselect" 
        data-audio="<?=$ost->path. $ost->name?>">
        <!-- Name of song -"".mp3" -->
        <?=substr($ost->name, 0, -4)?>
        <!-- Class for fav-btn -->
      <div class="addFavouriteBtn"></div>
    </div>
  <?php
  }
  ?>
</div>
<!-- Button to open up form for adding notes -->
<div id="notesBtn" class="noselect">
  <div style="
    position: relative;
    top: 8px;
    left: 3px;
  ">Note</div>
</div>
<!-- Form for adding notes -->
<div id="notesForm">
  <?php
    $model = new \app\models\Notes;
    $form = ActiveForm::begin([
      'method'=>'get',
      //'action'=>'php/addNote.php'
      'action'=>'addNote()'
    ]);
    //$form->action = "";
    echo $form->field($model, 'head')->textInput();
    echo $form->field($model, 'body')->textarea();
    echo Html::button('Сохранить', ['class' => 'btn btn-primary',
    'id'=>'addNoteBtn']);
    //echo Html::submitButton('Сохранить', ['class' => 'btn btn-primary']);
    ActiveForm::end();
  ?>
</div>

<script src="js/jquery.js"></script>
<script src="js/autoplay.js"></script>
<script src="js/myQuery.js"></script>
<script src="js/notesJS.js"></script>
</div>

<?php /*Занесение в базу данных 
  $fullpath = "files/music/10 - Owarimonogatari Second Season/All/";
  //$fi = new FilesystemIterator($fullpath);
  $fi = new FilesystemIterator($fullpath, FilesystemIterator::SKIP_DOTS);

  printf("There were %d Files", iterator_count($fi));
  echo "<br>";
  $filesArr = scandir($fullpath);
  //$filesArr = array_slice(scandir($fullpath), 2);
  chdir($fullpath);
  foreach (glob("*.mp3") as $fileName) {
    echo $fileName . "<br>";
    $ost = new Ost();
    $ost->name = $fileName;
    $ost->path = $fullpath;
    $ost->season = 10;
    $ost->save();
    echo "saved";
  }
  */
?>