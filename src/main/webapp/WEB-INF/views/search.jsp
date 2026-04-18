<!DOCTYPE html>

<%@page import="com.SpringMVC.POJO.Employee"%>
<html lang="en">
<head>
   
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Search</title>
    <style type="text/css">
        body {
            'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            color: #333;
            0;
            padding: 0;
            min-height: 100vh;
        }
        .header {
            background-color: #2c3e50;
            color: white;
            padding: 1rem;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .container {
            width: 90%;
            max-width: 1000px;
            30px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #2c3e50;
            text-align: center;
            25px;
            font-size: 28px;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            30px;
        }
        .search-box {
            display: flex;
            align-items: center;
            border: 2px solid #ddd;
            border-radius: 30px;
            padding: 5px 20px;
            width: 100%;
            max-width: 450px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
        }
        .search-box:hover {
            border-color: #3498db;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }
        .search-box input[type="text"] {
            border: none;
            flex-grow: 1;
            padding: 12px;
            font-size: 16px;
            outline: none;
            background: transparent;
        }
        .search-box input[type="submit"] {
            background: linear-gradient(to right, #3498db, #2980b9);
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 20px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .search-box input[type="submit"]:hover {
            background: linear-gradient(to right, #2980b9, #3498db);
            transform: translateY(-2px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }
        .message {
            text-align: center;
            20px 0;
            padding: 15px;
            border-radius: 8px;
            font-weight: bold;
        }
        .message.success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }
        .message.error {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            25px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            border-radius: 10px;
            overflow: hidden;
        }
        table th, table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }
        table th {
            background: linear-gradient(to bottom, #3498db, #2980b9);
            color: #fff;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 14px;
        }
        table tr:nth-child(even) {
            background-color: #f8f9fa;
        }
        table tr:hover {
            background-color: #e8f4fc;
            transition: background-color 0.2s;
        }
        table tr:last-child td {
            border-bottom: none;
        }
        .footer {
            text-align: center;
            40px;
            padding: 20px;
            color: #7f8c8d;
            font-size: 14px;
        }
        @media (max-width: 768px) {
            .container {
                width: 95%;
                padding: 20px;
            }
            .search-box {
                flex-direction: column;
                padding: 15px;
            }
            .search-box input[type="text"] {
                width: 100%;
                10px;
            }
            table {
                display: block;
                overflow-x: auto;
            }
        }
    </style>
</head>
<body>
<% String msg =(String)request.getAttribute("msg");
Employee emp = (Employee) request.getAttribute("emp");%>
    <jsp:include page="navbar.jsp"/>
    
    <div class="container">
        <div align="center">
            <h2>Search Employee</h2>
            <form action="./search" method="post">
                <div class="search-box">
                    <input type="text" name="id" placeholder="Enter Employee ID">
                    <input type="submit" value="Search">
                </div>
            </form>
            
           <% if(msg != null) { %>

<div class="message <%= (emp != null) ? "success" : "error" %>">
    <h3><%= msg %></h3>
</div>

<% if(emp != null) { %>

<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Contact</th>
        <th>Designation</th>
        <th>Salary</th>
    </tr>
    <tr>
        <td><%= emp.getId() %></td>
        <td><%= emp.getName() %></td>
        <td><%= emp.getEmail() %></td>
        <td><%= emp.getContact() %></td>
        <td><%= emp.getDesignation() %></td>
        <td><%= emp.getSalary() %></td>
    </tr>
</table>

<% } %>
<% } %>
        </div>
    </div>
    
    <div class="footer">
        <p>Employee Management System &copy; 2023</p>
    </div>
</body>
</html>