<?php

$token = $_GET["token"];

$token_hash = hash("sha256", $token);

$mysqli = require __DIR__ . "/config.php";

$sql = "SELECT * FROM users
        WHERE reset_token_hash = ?";

$stmt = $mysqli->prepare($sql);

$stmt->bind_param("s", $token_hash);

$stmt->execute();

$result = $stmt->get_result();

$user = $result->fetch_assoc();

if ($user === null) {
    die("token not found");
}

if (strtotime($user["reset_token_expires_at"]) <= time()) {
    die("token has expired");
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
    <meta charset="UTF-8">
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css"> -->
     <link rel="stylesheet" href="css/reset.css"> 
    <style>
        .error-message {
            color: red;
            font-size: 0.8em;
        }

        /* Center the form in the middle of the screen */
/* body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
} */
body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
     /* background-image: url('C:/xampp/htdocs/project3/images/forgot1.jpg');  */
     /* background-image: url(../images/forgot1.jpg);  */
    background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif; /* Specify a fallback font-family */
}
/* Reset Form Container */
.form-container {
     /* background-image: url(../images/forgot1.jpg);  */
    max-width: 400px;
    padding: 20px;
    /* border: 1px solid #ccc; */
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Form Heading */
.form-container h3 {
    text-align: center;
    color: #333;
}

/* Form Inputs and Labels */
.form-container label {
    display: block;
    margin-top: 10px;
    font-weight: bold;
}

.form-container input {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    margin-bottom: 10px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

/* Error Messages */
.error-message {
    color: red;
    margin-top: 5px;
    font-size: 2.3rem;
}

/* Submit Button */
.container button {
    background-color: #4caf50;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
}

.form-container button:hover {
    background-color: #45a049;
}

    </style>
</head>
<body>


<div class="form-container">
    <!-- <h3>Reset Password</h3> -->

    <form method="post" action="process-reset-password.php">

        <input type="hidden" name="token" value="<?= htmlspecialchars($token) ?>">
        <img src="images\logo.png" alt="Your Logo">
        <h3>Reset Password</h3>
        <!-- <label for="password">New password</label> -->
        <input type="password" id="password" name="password"  placeholder="Enter your new password">
        <div class="error-message" id="password-error"></div>

        <!-- <label for="password_confirmation">Repeat password</label> -->
        <input type="password" id="password_confirmation" 
               name="password_confirmation"placeholder="Repeat your new password">
        <div class="error-message" id="confirm-password-error"></div>

        <button>Reset Password</button>
    </form>
</div>

<script>
    document.querySelector('form').addEventListener('submit', function(event) {
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('password_confirmation').value;
        const passwordError = document.getElementById('password-error');
        const confirmPasswordError = document.getElementById('confirm-password-error');
        let isValid = true;

        passwordError.textContent = '';
        confirmPasswordError.textContent = '';

        if (password.length < 8) {
            passwordError.textContent = 'Password must be at least 8 characters.';
            isValid = false;
        }

        // Check for at least one capital letter in the password
        if (!/[A-Z]/.test(password)) {
            passwordError.textContent = 'Password must contain at least one capital letter.';
            isValid = false;
        }

        // Check for at least one number in the password
        if (!/\d/.test(password)) {
            passwordError.textContent = 'Password must contain at least one number.';
            isValid = false;
        }

        if (password !== confirmPassword) {
            confirmPasswordError.textContent = 'Passwords must match.';
            isValid = false;
        }

        if (!isValid) {
            event.preventDefault();
        }
    });
</script>

</body>
</html>
