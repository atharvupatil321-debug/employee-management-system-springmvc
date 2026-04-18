<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg,#667eea,#764ba2);
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Container */
.container {
    text-align: center;
}

/* Title */
h1 {
    color: white;
    margin-bottom: 30px;
}

/* Cards layout */
.cards {
    display: flex;
    gap: 20px;
}
.cards {
    display: flex;
    gap: 20px;
    flex-wrap: wrap;
    justify-content: center;
}

/* Individual card */
.card {
    background: white;
    padding: 30px;
    width: 200px;
    border-radius: 12px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.2);
    transition: 0.3s;
    text-decoration: none;
    color: black;
}

.card:hover {
    transform: translateY(-10px);
}

/* Button text */
.card h3 {
    margin: 0;
    color: #333;
}
</style>
</head>
<body>
<div class="container">
	<h1>Welcome To Employee Management System </h1>
	
	<div class="cards">
	
	<a href="add" class="card">
		<h3>Add Employee</h3>
	</a>
	
	<a href="search" class="card">
		<h3>Search Employee</h3>
	</a>
	
	<a href="delete" class="card">
		<h3>Remove Employee</h3>
	</a>
	
	<a href="logout" style="position:absolute; top:20px; right:20px; color:white; text-decoration:none;">
    	 Logout
	</a>
	
	<!-- Update -->
<a href="update" class="card">
    <h3>✏️ Update Employee</h3>
</a>
	
	</div>

</div>
</body>
</html>