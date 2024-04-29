<?php 
// Change this to your connection info.
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'admission';
// Try and connect using the info above.
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
	// If there is an error with the connection, stop the script and display the error.
	exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}

// Retrive data form form
$data = array (
    "student_name" => $_POST['student_name'],
    "dob" => $_POST['dob'],
    "nationality" => $_POST['nationality'],
    "religion" => $_POST['religion'],
    "pob" => $_POST['pob'],
    "email" => $_POST['email'],
    "f_name" => $_POST['f_name'],
    "f_profession" => $_POST['f_profession'],
    "m_name" => $_POST['m_name'],
    "g_phone_no" => $_POST['g_phone_no'],
    "address" => $_POST['address']
);
// prepare SQL query with placeholders

$sql = "INSERT INTO admission_form (student_name, dob, nationality, religion, pob, email, f_name,
        f_profession, m_name, g_phone_no, address)  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

// Prepare and bind parameters

if ($stmt = $con->prepare($sql)) {
    // Bind parameters to the placeholders
    $stmt->bind_param("sssssssssss", 
        $data['student_name'], 
        $data['dob'], 
        $data['nationality'], 
        $data['religion'], 
        $data['pob'], 
        $data['email'], 
        $data['f_name'], 
        $data['f_profession'], 
        $data['m_name'], 
        $data['g_phone_no'], 
        $data['address']
    );


// Execute query

if($stmt->execute()) {
    echo "<script>alert('Your application has been submitted successfully.');
                window.location.href = 'application.html';
         </script>";
} else {
    echo "Error: ". $sql . "<br>" . $con->error;
}

// Close statement and connection

$stmt->close();
$con->close();

} else {
    echo "Error: " . $sql . "<br>" . $mysqli->error;
}









?>