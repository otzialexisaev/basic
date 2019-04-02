<?php
    echo 'Processing...';

//Connect to mysql
$conn = mysqli_connect('localhost','root','','test');

//Check for GET var
if(isset($_GET['name'])){
    echo "Get your name is ". $_GET['name'];
}

//Check for POST var
if(isset($_POST['name'])){
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    //echo "post -- your name is ". $_POST['name'];

    $query = "INSERT INTO users(name) VALUES ('$name')";
    if(mysqli_query($conn, $query)){
        echo 'User added...';
    } else {
        echo 'ERROR: '. mysqli_error($conn);
    }
}

