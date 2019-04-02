<!-- Div for the player -->
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

  <div class="middlePlayer">
    <div class="titlePlusTime">
      <div class="songTitle" id="songTitle">No song selected</div>
      <div class="songTime" id="songTime">0:00 - 0:00</div>
    </div>
    <div class="scrubber" id="scrubber" >
      <div class="progress" id="progress"></div>
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
  <audio id="player" >
    <!--<source src="files/music/01 - Bakemonogatari/All/Date.mp3" type="audio/mpeg">
  -->
  </audio>
  <div class="slidecontainer">
    <input type="range" min="1" max="100" value="50" class="slider"
    id="myRange">
  </div>
</div>
<div id="testresult"></div>
<div id="playlistContainer">

  <?php
  //Array of all albums
    $albums = ["Bake", "Nise"];
    foreach ($albums as $album) {
  ?>
  <div class="playlistItem noselect"><?php echo trim($album) ?></div>
  <?php
}
?>
</div>

<?php
foreach ($albums as $album) {
    $ids = 'app\\models\\' . $album;
    ?>

    <div id="<?=$album?>" class="grid-container">
      <?php
      $bakeArr = $ids::find()->all();
      foreach ($bakeArr as $ost) {
        ?>
        <div class="item noselect"  data-audio="<?=$ids::$fullpath . $ost->name?>">
          <?=substr($ost->name, 0, -4)?>
        <!--<img class="starImg" src="css/resources/player/star.png">-->
        <div class="card"></div>
        </div>
      <?php
}
    ?>
    </div>

<?php
}
?>

<script src="js/autoplay.js"></script>
<script src="js/jquery.js"></script>
</div>


<?php /*Занесение в базу данных 
use app\models\Ost;
$fullpath = "files/music/02 - Nisemonogatari/All/";
$fi = new FilesystemIterator($fullpath, FilesystemIterator::SKIP_DOTS);

printf("There were %d Files", iterator_count($fi) - 2);
echo "<br>";
//$filesArr = scandir($fullpath);
$filesArr = array_slice(scandir($fullpath), 2);

foreach ($filesArr as $fileName) {
echo $fileName . "<br>";
$ost = new Ost();
$ost->name = $fileName;
$ost->path = $fullpath;
//$ost->save();

}
*/
?>

<?php
/*
$connection = mysqli_connect('localhost', "root", "");
mysqli_select_db($connection, "yii2basic");

if ($connection->connect_errno) {
printf("Connect failed: %s\n", $mysqli->connect_error);
exit();
}
$resultArr = mysqli_query($connection, "select * from bake");
while ($row = mysqli_fetch_array($resultArr))
{
echo $row['name']."<br>";
echo $row['id']."<br>";
}*/
?>
