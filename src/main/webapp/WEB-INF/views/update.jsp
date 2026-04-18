<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.SpringMVC.POJO.Employee" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

<style>
body {
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg,#36d1dc,#5b86e5);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background: white;
    padding: 30px;
    border-radius: 12px;
    width: 400px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

h2 {
    text-align: center;
}

input {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    border-radius: 6px;
    border: 1px solid #ccc;
}

button {
    margin-top: 15px;
    padding: 12px;
    width: 100%;
    background: #36d1dc;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
}

button:hover {
    opacity: 0.9;
}

.msg {
    margin-top: 10px;
    text-align: center;
    font-weight: bold;
}
</style>

</head>

<body>

<div class="container">

```
<h2>Update Employee</h2>

<!-- SEARCH FORM -->
<form action="fetchEmployee" method="post">
    <input type="number" name="id" placeholder="Enter Employee ID" required>
    <button type="submit">Fetch</button>
</form>

<%
Employee emp = (Employee) request.getAttribute("emp");
%>

<!-- UPDATE FORM -->
<% if(emp != null){ %>

<form action="updateEmployee" method="post">
    <input type="hidden" name="id" value="<%= emp.getId() %>">

    <input type="text" name="name" value="<%= emp.getName() %>">
    <input type="email" name="email" value="<%= emp.getEmail() %>">
    <input type="text" name="contact" value="<%= emp.getContact() %>">
    <input type="text" name="designation" value="<%= emp.getDesignation() %>">
    <input type="text" name="salary" value="<%= emp.getSalary() %>">

    <button type="submit">Update Employee</button>
</form>
<!-- MESSAGE -->
<div class="msg">
    <%= request.getAttribute("msg") != null ? request.getAttribute("msg") : "" %>
</div>
<% } %>

<!-- MESSAGE -->

```

</div>

</body>
</html>
