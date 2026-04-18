<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*, com.SpringMVC.POJO.Employee" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Delete Employee</title>

<style>

/* Background */
body {
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg,#ff758c,#ff7eb3);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Container */
.container {
    background: white;
    padding: 30px;
    border-radius: 12px;
    width: 600px;
    text-align: center;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

/* Heading */
h2 {
    margin-bottom: 20px;
}

/* Input */
input {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    border-radius: 6px;
    border: 1px solid #ccc;
}

/* Button */
button {
    margin-top: 15px;
    padding: 12px;
    width: 100%;
    background: red;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    opacity: 0.9;
}

/* Message */
.msg {
    margin-top: 15px;
    font-weight: bold;
    color: green;
}

/* Table container (scroll) */
.table-container {
    max-height: 220px;
    overflow-y: auto;
    margin-top: 15px;
}

/* Table */
table {
    width: 100%;
    border-collapse: collapse;
    border-radius: 10px;
    overflow: hidden;
    background: white;
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}

/* Header */
th {
    background: linear-gradient(135deg,#667eea,#764ba2);
    color: white;
    padding: 10px;
    font-size: 13px;
}

/* Data */
td {
    padding: 10px;
    text-align: center;
    font-size: 13px;
}

/* Zebra */
tr:nth-child(even) {
    background: #f4f6ff;
}

/* Hover */
tr:hover {
    background: #dfe6ff;
}

/* Border */
th, td {
    border-bottom: 1px solid #ddd;
}

</style>

</head>

<body>

<div class="container">

```
<h2>Delete Employee</h2>

<!-- FORM -->
<form action="delete" method="post">
    <input type="number" name="id" placeholder="Enter Employee ID" required>
    <button type="submit">Delete</button>
</form>

<!-- MESSAGE -->
<div class="msg">
    <%= request.getAttribute("msg") != null ? request.getAttribute("msg") : "" %>
</div>

<!-- TABLE -->
<%
    List<Employee> list = (List<Employee>) request.getAttribute("list");
%>

<% if(list != null && !list.isEmpty()) { %>

<h3>All Employees</h3>

<div class="table-container">

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Contact</th>
        <th>Designation</th>
        <th>Salary</th>
    </tr>

    <% for(Employee e : list){ %>
    <tr>
        <td><%= e.getId() %></td>
        <td><%= e.getName() %></td>
        <td><%= e.getEmail() %></td>
        <td><%= e.getContact() %></td>
        <td><%= e.getDesignation() %></td>
        <td><%= e.getSalary() %></td>
    </tr>
    <% } %>

</table>

</div>

<% } %>
```

</div>

</body>
</html>
