var player = {
  "audio" : document.getElementById('testPlayer'),
  // "player" : {
  //     volume : 0.0090,
  // },
  playlist : null,
  playPauseBtn : document.getElementById('playPauseBtn'),
  progress : document.getElementById('progressBar'),
  scrubber : document.getElementById('scrubber'),
  nextBtn : document.getElementById('nextBtn'),
  prevBtn : document.getElementById('prevBtn'),
  randomBtn : document.getElementById('randomBtn'),
  repeatAllBtn : document.getElementById('repeatAllBtn'),
  repeatOneBtn : document.getElementById('repeatOneBtn'),
  relativeLeft : 0,
  randomBool : false,
  repeatAllBool : false,
  repeatOneBool : false,
  songTitle : document.getElementById('songTitle'),
  playlistBtn : document.getElementById('playlistBtn'),
  playlistMenu : document.getElementById('playlistMenu'),
  volumeSlider : document.getElementById('myRange'),
  // volumeSlider : {
  //     value : 9,
  // },
  selected : null,
  init : function(){
      this.audio.src = "files/music/02 - Nisemonogatari/All/A Lie.mp3"
      this.audio.style.display = "none"
      console.log("initializing...")
  }
}
player.init()
console.log(player.audio)
player.songTitle.innerHTML = "asdasd"