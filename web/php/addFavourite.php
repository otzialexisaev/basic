<?php

$conn = mysqli_connect('localhost', 'root', '', 'heyitsme');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['songName'])) {
    //$qGetOstID = "select ost.id from ost where name='".$_GET['songName'].".mp3'";

    $qGetOstID = mysqli_fetch_array(mysqli_query($conn, "select ost.id from ost where name='" . mysqli_real_escape_string($conn, $_GET['songName']) . ".mp3'"))['0']; // ['0'] is index of fetched array, might use ['id']
    echo $qGetOstID;
    $checkForSame = mysqli_query($conn, "select ost_id from favourite_songs");
    while ($row = mysqli_fetch_array($checkForSame)) {
        if ($row['ost_id'] == $qGetOstID) {
            //echo $row['ost_id'] . "\r\n";
            echo $_GET['songName']."\r\n";
            echo "Song is already in favs";
            return;
        }
    }
    $query = "insert into favourite_songs(ost_id) values (" . mysqli_real_escape_string($conn, $qGetOstID) . ")";
    //
    //select ost.name from favourite_songs inner join ost on favourite_songs.ost_id=ost.id where favourite_songs.ost_id=2
    //
    if (mysqli_query($conn, $query)) {
        echo "Song added to favs";
    } else {
        echo 'ERROR: ' . mysqli_error($conn);
    }
    mysqli_close($conn);
}
