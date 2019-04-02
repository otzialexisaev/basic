<?php
use app\models\Bake;
?>
  <?php
$osts = Bake::find()
    ->asArray()
    ->all();
?>
<script src="js/player/audio.js"></script>
<!--<script>
  audiojs.events.ready(function() {
    var as = audiojs.createAll();
  });
</script>-->
<!-- Div for the player -->
  <div id="stickydiv">
    <img src="css/resources/player/prevBtn.jpg" id="prevBtn">

    <img src="css/resources/player/playBtn.jpg" id="playPause">
    
    <img src="css/resources/player/nextBtn.jpg" id="nextBtn">
    
    <audio id="player"  ontimeupdate="updatePlayer()">
      <source src="files/music/01 - Bakemonogatari/All/Date.mp3" type="audio/mpeg">
    </audio>
  </div>
<div id="testresult" style="margin-top:100px">
sfgsdfgsdgdfgsdfgsdfg
</div>
<div class="scrubber" id="scrubber" style="background-color: green"> 
  <div class="progress" id="progress" style="width: 1px"></div> 
  <div class="loaded"></div> 
</div>
<div class="borderdiv">
  <div id="playlist" class="grid-container" style="grid-auto-flow: row;">
  <?php
    $bakeArr = Bake::find()->all();
    foreach ($bakeArr as $ost) {
        ?>
          <div class="item" data-audio="<?=Bake::$fullpath . $ost->name?>">
            <?=substr($ost->name, 0, -4)?>
          </div>
          <?php
    }
    ?>
  </div>
</div>

<script src="js/autoplay.js"></script>
</div>


<?php /*Занесение в базу данных
$fullpath = "files/music/01 - Bakemonogatari/All";
$fi = new FilesystemIterator($fullpath, FilesystemIterator::SKIP_DOTS);

printf("There were %d Files", iterator_count($fi) - 2);
echo "<br>";
//$filesArr = scandir($fullpath);
$filesArr = array_slice(scandir($fullpath), 2);

foreach ($filesArr as $fileName) {
echo $fileName . "<br>";
$ost = new Bake();
$ost->name = $fileName;
echo Bake::$fullpath;
$ost->save();

}
 */

 
?>


  <!--
  <ul id="playlist2">
    <li data-audio="files/audiotest.mp3">s</li>
    <li data-audio="files/audiotest2.mp3">Space 2</li>
    <li data-audio="http://www.lunerouge.org/sons/sf/LRWeird%203%20by%20Lionel%20Allorge.ogg">Space Lab</li>
  </ul>
  -->

  <!--
    <button id="stop">Stop</button>
    -->