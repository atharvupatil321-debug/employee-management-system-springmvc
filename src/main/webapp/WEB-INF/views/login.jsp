<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<style>

/* Background */
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Glass container */
.container {
    background: rgba(255, 255, 255, 0.15);
    backdrop-filter: blur(10px);
    padding: 35px;
    width: 350px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
    color: white;
}

/* Title */
h2 {
    text-align: center;
    margin-bottom: 20px;
}

/* Inputs */
input {
    width: 100%;
    padding: 12px;
    margin-top: 12px;
    border-radius: 8px;
    border: none;
    outline: none;
    font-size: 14px;
}

/* Button */
button {
    width: 100%;
    margin-top: 20px;
    padding: 12px;
    border: none;
    border-radius: 8px;
    background: linear-gradient(to right,#00c6ff,#0072ff);
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    transform: scale(1.05);
}

/* Message */
.msg {
    margin-top: 10px;
    text-align: center;
    color: #ffdddd;
    font-weight: bold;
}

/* Link */
.link {
    text-align: center;
    margin-top: 15px;
}

.link a {
    color: #fff;
    text-decoration: underline;
}

/* Animation */
.container {
    animation: fadeIn 0.6s ease-in-out;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

</style>

</head>

<body>

<div class="container">

```
<h2>Admin Login</h2>

<form action="./login" method="post">

    <input type="email" name="email" placeholder="Enter Email" required>

    <input type="password" name="password" placeholder="Enter Password" required>

    <button type="submit">Login</button>

</form>

<div class="msg">
    ${msg}
</div>

<div class="link">
    Don't have account? <a href="signup">Signup</a>
</div>
```

</div>

</body>
</html>
