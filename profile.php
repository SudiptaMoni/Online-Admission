<?php 
session_start();

if(!isset($_SESSION['loggedin'])) {
    header('Location: index.html');
    exit();
}

$DATABASE_HOST = "localhost";
$DATABASE_USER = "root";
$DATABASE_PASS = "";
$DATABASE_NAME = "admission";

$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if(mysqli_connect_errno()) {
    exit('Failed to connect to MySQL: ' .mysqli_connect_errno());
}

$stmt = $con->prepare('SELECT dob, email, f_name, m_name FROM admission_form WHERE id = ?');
$stmt->bind_param('i', $_SESSION['id']);
$stmt->execute();
$stmt->bind_result($dob, $email, $f_name, $m_name);
$stmt->fetch();
$stmt->close();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer">

</head>
<body class="loggedin">
    <nav class="navtop">
        <div>
            <h1><a href="home.php">Online Admission Application</a></h1>
            <a href="profile.php"><i class="fas fa-user-circle"></i>Profile</a>
            <a href="application.html"> <i class="fas fa-user-circle"></i>Apply</a>
            <a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
        </div>
    </nav>

    <div class="content">
        <h2>Profile Page</h2>
        <div>
            <p>Your account details are below:</p>
            <table>
                <tr>
                    <td>Username:</td>
                    <td><?=htmlspecialchars($_SESSION['username'], ENT_QUOTES)?></td>
                </tr>
        
                <tr>
                    <td>Email:</td>
                    <td><?=htmlspecialchars($email, ENT_QUOTES)?></td>
                </tr>

                <tr>
                    <td>Date of Birth:</td>
                    <td><?=htmlspecialchars($dob, ENT_QUOTES)?></td>
                </tr>

                <tr>
                    <td>Father's Name:</td>
                    <td><?=htmlspecialchars($f_name, ENT_QUOTES)?></td>
                </tr>

                <tr>
                    <td>Mother's Name:</td>
                    <td><?=htmlspecialchars($m_name, ENT_QUOTES)?></td>
                </tr>
            </table>
        </div>
    </div>
    
</body>
</html>