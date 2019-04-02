<?php
use app\models\Bake;
?>

<div class="container">

  <audio id="player" controls><source src="files/music/01 - Bakemonogatari/All/ First Touch.mp3" type="audio/mpeg"></audio>
  <!--
  <ul id="playlist2">
    <li data-audio="files/audiotest.mp3">s</li>
    <li data-audio="files/audiotest2.mp3">Space 2</li>
    <li data-audio="http://www.lunerouge.org/sons/sf/LRWeird%203%20by%20Lionel%20Allorge.ogg">Space Lab</li>
  </ul>
  -->

  <button id="stop">Stop</button>
  <?php
  $osts = Bake::find()
      ->asArray()
      ->all();
  ?>
  <ul id="playlist">
  <?php
  $bakeArr = Bake::find()->all();
  foreach ($bakeArr as $ost) {
      ?>
        <li data-audio="<?=Bake::$fullpath . $ost->name?>">
          <?=substr($ost->name, 0, -4)?>
        </li>
        <?php
  }
  ?>
  </ul>
  <div class="grid-container" style="grid-auto-flow: row;">
    <div class="item1">1</div>
    <div class="item2">2</div>
    <div class="item3">3</div>
    <div class="item4">4</div>
  </div>

  <script src="js/check.js"></script>
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
