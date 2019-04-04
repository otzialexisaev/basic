<?php
use app\models\FavouriteSongs;
?>
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

  <div class="songInfoContainer">
    <div class="titlePlusTime">
      <div class="songTitle" id="songTitle">No song selected</div>
      <div class="songTime" id="songTime">0:00 - 0:00</div>
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
  <audio id="player" >
    <!--<source src="files/music/01 - Bakemonogatari/All/Date.mp3" type="audio/mpeg">
  -->
  </audio>
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
    while($row = mysqli_fetch_array($albums)){
  ?>
  <div class="playlistMenuItem noselect"><?php echo trim($row['season']) ?></div>
  <?php
  }
  ?>
</div>
<!--//////////////////////////////////////////
select ost.path from ost inner join favourite_songs on ost.id=favourite_songs.ost_id where ost.id=8
-->

<?php
  $allFavs = FavouriteSongs::find()->all();
  ?>
  <div class="ostContainer" id="playlist">
  <?php
    $conn = mysqli_connect('localhost','root','','heyitsme');
    foreach ($allFavs as $ost) {
  ?>
    <div class="songContainer noselect" 
        data-audio="<?php
          $path = mysqli_fetch_array(mysqli_query($conn, "select ost.path from ost inner join favourite_songs on ost.id=favourite_songs.ost_id where ost.id=".$ost->ost_id))['path'];
          $name = mysqli_fetch_array(mysqli_query($conn, "select ost.name from ost inner join favourite_songs on ost.id=favourite_songs.ost_id where ost.id=".$ost->ost_id))['name'];
          echo $path.$name;
          
        ?>">
        <?=substr($name, 0, -4)?>
    <div class="addFavouriteBtn"></div>
    </div>
  <?php
  }
  mysqli_close($conn);
  ?>
</div>

<script src="js/jquery.js"></script>
<script src="js/myQuery.js"></script>
<script src="js/autoplay.js"></script>
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
