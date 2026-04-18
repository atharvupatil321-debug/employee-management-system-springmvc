<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', sans-serif;
    }

    body {
        height: 100vh;
        background: linear-gradient(135deg, #667eea, #764ba2);
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        width: 400px;
        background: #fff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        animation: fadeIn 0.5s ease-in-out;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    label {
        font-weight: 600;
        margin-top: 10px;
        display: block;
        color: #444;
    }

    input {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 6px;
        border: 1px solid #ccc;
        transition: 0.3s;
    }

    input:focus {
        border-color: #667eea;
        box-shadow: 0 0 5px rgba(102,126,234,0.5);
        outline: none;
    }

    button {
        width: 100%;
        margin-top: 20px;
        padding: 12px;
        background: linear-gradient(to right, #667eea, #764ba2);
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover {
        transform: scale(1.05);
        opacity: 0.9;
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
<title>Add Employee Page</title>
</head>
<body>
	<div class="container">
	<form action="saveEmployee" method="post">
		<label>Name:</label> 
		<input type="text" name="name" >
		
		<label>Email:</label>
		<input type="email" name="email">
		
		<label>Contact:</label>
		<input type="text" name="contact">
		
		<label>Designation:</label>
		<input type="text" name="designation">
		
		<label>Salary:</label>
		<input type="text" name="salary">
		
		<button type="submit">Save Employee</button>
		
		
	</form>

</body>
</html>