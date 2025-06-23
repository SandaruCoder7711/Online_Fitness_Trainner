<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $database = "onlinefitnesstrainer";

    // Create a connection to the database
    $conn = new mysqli($hostname, $username, $password, $database);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get data from the form
    $UserEmail = $_POST["UserEmail"];
    $ReviewId = $_POST["ReviewId"];
    $UserName = $_POST["UserName"];
    $Body = $_POST["Body"];

    // Create the SQL query
    $sql = "INSERT INTO reviews (UserEmail, ReviewId, UserName, Body) VALUES ('$UserEmail','$ReviewId','$UserName','$Body')";

    // Execute the query
    if ($conn->query($sql) === TRUE) {
        echo "Record inserted successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Close the connection
    $conn->close();
}
?>