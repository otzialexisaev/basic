<?php

$conn = mysqli_connect('localhost', 'root', '', 'heyitsme');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_GET['songName'])){
    //$qGetOstID = "select ost.id from ost where name='".$_GET['songName'].".mp3'";
    //select ost.id from ost where name='Dokuzetsu.mp3'
    $qGetOstID = mysqli_fetch_array(mysqli_query($conn, "select ost.id from ost where name='".$_GET['songName'].".mp3'"))['id'];
    $query = "DELETE FROM favourite_songs WHERE ost_id=".$qGetOstID;
    //
    //select ost.name from favourite_songs inner join ost on favourite_songs.ost_id=ost.id where favourite_songs.ost_id=2
    //
    if(mysqli_query($conn, $query)){
        echo "Song removed from favs<br>";
        echo $query;
    } else {
        echo 'ERROR: '. mysqli_error($conn);
    }
}