<?php
require_once 'email.php';
include 'config.php';
session_start();

$message = array(); // Ensure $message is defined

if (isset($_POST['submit'])) {
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = $_POST['password']; // No need to hash it here

    $select_users = mysqli_query($conn, "SELECT * FROM `users` WHERE email = '$email'") or die('query failed');

    $found = false;
    while ($row = mysqli_fetch_assoc($select_users)) {
        if (password_verify($password, $row['password'])) {
            // Password matches, set session variables based on user type
            if ($row['user_type'] == 'admin') {
                $_SESSION['admin_name'] = $row['name'];
                $_SESSION['admin_email'] = $row['email'];
                $_SESSION['admin_id'] = $row['id'];
                header('location: admin_page.php');
                exit();
            } elseif ($row['user_type'] == 'user') {
                $_SESSION['user_name'] = $row['name'];
                $_SESSION['user_email'] = $row['email'];
                $_SESSION['user_id'] = $row['id'];
                header('location: home.php');
                exit();
            }
            $found = true;
        }
    }

    // No matching user found
    if (!$found) {
        $message[] = 'Incorrect email or password!';
        // Debug statement
        // echo 'Debug: Incorrect email or password added to $message array.';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Login</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style2023.css">

   <style>
      .message-container {
         position: fixed;
         top: 0;
         left: 50%;
         transform: translateX(-50%);
         width: 300px;
         display: flex;
         flex-direction: column;
         align-items: center;
         z-index: 9999;
      }

      .message {
         background-color: #77d537;
         color: #8b0000;
         padding: 10px;
         margin-top: 5px;
         border-radius: 5px;
         display: flex;
         align-items: center;
         justify-content: space-between;
         width: 100%;
         box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      }
   </style>
</head>
<body>

<?php
if (isset($message) && !empty($message)) {
    echo '<div class="message-container">';
    foreach($message as $messageItem){
        echo '<div class="message"><span>' . $messageItem . '</span><i class="fas fa-times" onclick="this.parentElement.remove();"></i></div>';
    }
    echo '</div>';
}
?>
   
<div class="form-container">

   <form action="" method="post">
        <div class="logo-container">
        <img src="images\logo.png" alt="Your Logo">
    </div>
      <h3>Login Now</h3>
      <input type="email" name="email" placeholder="Enter your email" required class="box">
      <input type="password" name="password" placeholder="Enter your password" required class="box">
      <input type="submit" name="submit" value="Login Now" class="btn">
      <p>Don't have an account? <a href="register.php">Register Now</a></p>
      <p><a href="forgot-password.php">Forgot Password?</a></p>  
   </form>

</div>

</body>
</html>
