<%-- 
    Document   : register
    Created on : Feb 3, 2023, 10:21:12 PM
    Author     : Nguyen Nguyen Khoa
--%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Created New Account</title>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="./css/register.css"/>
    </head>
    <body>
        <div class="class2">
            <div class="class1">
                <div class="signup"> Sign up</div>
                <div class="note"> It's quick and easy</div><br>
                <form action="Register" method="post">
                    <div class="edit"><input type="text" placeholder="Username(*)" name="name" required value="${param.name}"></div>
                    <div class="edit"><input type="password" placeholder="Password(*)" name="pass" required value="${param.pass}"></div> 
                    <div class="edit"><input type="email" placeholder="Email(*)" name="email" required value="${param.email}"></div>
                    <div class="edit"><input type="text" placeholder="Address(*)" name="address" required value="${param.address}"></div>
                    <div class="edit"><input type="text" placeholder="Phone(*)" name="phone" required value="${param.phone}"></div>
                    <p style="color: red; padding-left: 90px">${mess}</p>
                    <p style="color: red;padding-left: 90px">${mess1}</p>

                    <div class="edit">
                        <button type="submit" id="login-btn" class="sb" value="Sign Up">Sign Up</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>