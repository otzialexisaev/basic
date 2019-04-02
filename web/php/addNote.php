<?php

$conn = mysqli_connect('localhost', 'root', '', 'heyitsme');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//To store russian symbols correctly
mysqli_set_charset($conn, "utf8");

if (isset($_GET['noteHead']) && isset($_GET['noteBody'])) {
    $query = "insert into notes(head,body) values ('". mysqli_real_escape_string($conn, $_GET['noteHead']) ."','" .mysqli_real_escape_string($conn, $_GET['noteBody'])."')";
    if (mysqli_query($conn, $query)) {
        //echo mysqli_real_escape_string($conn, $_GET['noteHead']);
        //echo mysqli_real_escape_string($conn, $_GET['noteBody']);
        echo "Note added";
    } else {
        echo 'ERROR: ' . mysqli_error($conn);
    }
    mysqli_close($conn);
}
