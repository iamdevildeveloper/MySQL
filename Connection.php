<?php
$serverName = "localhost";
$username = "root";
$password = "";
$dbname = "study";

$conn = new mysqli($serverName, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


// Get image from the database
$sql = "SELECT image, imageName FROM binary_text"; // Example: Get the image with ID 1
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    header("Content-Type:image/jpeg");
    echo $row['image'];
} else {
    echo "Image not found.";
}

print_r($result);

// if (isset($_FILES['image']['tmp_name'])) {
//     $image = $_FILES['image']['tmp_name'];
//     $imgContent = addslashes(file_get_contents($image));
//     $imageType = $_FILES['image']['type'];
//     $imageName = $_FILES['image']['name'];

//     // Insert image content into database
//     $sql = "INSERT INTO binary_text (image, imageName) VALUES ('$imgContent', '$imageName')";

//     if ($conn->query($sql) === TRUE) {
//         echo "Image uploaded successfully.";
//     } else {
//         echo "Error: " . $sql . "<br>" . $conn->error;
//     }
//     $conn->close();
// }


?>

<form method="POST" enctype="multipart/form-data">
    <input type="file" name="image" />
    <input type="submit" name="upload" value="Upload">
</form>