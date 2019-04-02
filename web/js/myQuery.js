function addFavourite(e){
  if(window.location.href == "http://basic.com/index.php?r=ost%2Ffavosts"){
    //TO DO
    //Remove song from paylist    
    var xhr = new XMLHttpRequest()
    var songName = e.target.parentNode.textContent.trim()
    console.log(songName + " favsfavs");
    xhr.open('GET','../php/removeFavourite.php?songName=' + songName, true)
    xhr.onload = function(){
      console.log(this.responseText);
    }
    xhr.send()
  } else {
    var songName = e.target.parentNode.textContent.trim()
    $.get("php/addFavourite.php", {songName: songName} , function(data){
      console.log(data);
      addFavPopUp(data);
  })
  }
}

function removeAlert () {
  $('#actionPopUp').remove()
}

function addFavPopUp (innerString) {
  $('body').append('<div id="actionPopUp">' + innerString + '</div>')
  $('#actionPopUp').fadeIn(1500)
  $('#actionPopUp').fadeOut('slow')
  setTimeout(removeAlert, 2600)
  // console.log("checkedchecked");
}

//////////////////////////////////////////////////////
// How many there are elements in the playlistMenu
function storeDataToggleLog () {
  var len = $('.playlistMenuItem').siblings().length
  console.log('siblings count: ' + len)
  for (var i = 1; i <= len; i++) {
    localStorage.setItem('test' + i, $('#MenuItem'+i).attr('data-toggle'))
    console.log("MenuItem's data-toggle" + i + ": " + localStorage.getItem('test' + i))
  }
}

function storeDataToggle(){
  var len = $('.playlistMenuItem').siblings().length
  for(var i = 1; i <= len; i++){
    localStorage.setItem('test' + i, $('#MenuItem'+i).attr('data-toggle'))
  }
}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////
function renderLocalStoragePlaylistMenu(){
  var len = $('.playlistMenuItem').siblings().length
  //localStorage.clear()
  for(var i = 1; i<=len; i++){
    if(localStorage.getItem('test'+i) != null){
      var toChange = document.getElementById(document.getElementById("MenuItem"+i).innerHTML)
      if(localStorage.getItem('test'+i) == "false"){
        toChange.setAttribute('style','display:none')
        document.getElementById("MenuItem"+i).setAttribute('style','background-color: transparent')
        document.getElementById("MenuItem"+i).setAttribute('data-toggle', "false")
      }
    }
  }
}

$(document).ready(renderLocalStoragePlaylistMenu())