<%-- 
    Document   : index
    Created on : Mar 10, 2026, 8:28:26 PM
    Author     : acer
--%>

<%@page import="com.entities.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.con.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="Components/allLink.jsp" %>
        <style type="text/css">
            .back-img{
                background: url("Components/img/phone.jpg");
                width: 100%;
                height: 80vh;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <%@include file="Components/Navbar.jsp" %>
        
        <div class="container-fluid back-img text-center text-success ">
            <h1>Welcome to PhoneBook App</h1>
        </div>
        <%@include file="Components/footer.jsp" %>
    </body>
</html>
