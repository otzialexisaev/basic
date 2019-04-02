$("#notesBtn").click(function(){
    if($("#notesForm").css('display') == 'none'){
        $("#notesForm").css('display','unset')
    } else {
        $("#notesForm").css('display','none')
    }
})

$('#addNoteBtn').click(function () {
    $head = $('#notes-head').val()
    $body = $('#notes-body').val()
    $.get("php/addNote.php", {noteHead: $head, noteBody: $body} , function(data){
        $("#notes-head").val('')
        $("#notes-body").val('')
        noteAddedPopUp(data);
        console.log(data);
    })
})

function noteAddedPopUp (innerString) {
    $('body').append('<div id="alert">' + innerString + '</div>')
    $('#alert').fadeIn(1500)
    $('#alert').fadeOut('slow')
    setTimeout(removeAlert, 2600)
  }