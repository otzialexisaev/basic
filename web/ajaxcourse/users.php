<?php
//Connect to mysql
$conn = mysqli_connect('localhost', 'root', '', 'test');
$query = "SELECT * from users";

$result = mysqli_query($conn, $query);
$users = mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($users);
