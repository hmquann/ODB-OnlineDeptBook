<%-- 
    Document   : forgotpass
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
        <title>Forgotten Password</title>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="./css/forgotpass.css">
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">

    </head>
    <body>
        <div class="full-box">
            <div>
                <div class="class1">
                    <p>Find Your Account</p>
                </div>
                <div class="class2">
                    <p>Please enter your email address or mobile number to search for your account.</p>
                </div>
                <div>
                    <form action="ForgotPassword" method="post">
                        <div>
                            <div>
                                <input type="email" placeholder="Enter email address(*)" name="email">
                                <button type="submit" id="login-btn" class="sb" value=""> Send </button>
                            </div>
                            <p style="color: red; display: none;" id="messforgotpassword" tilte="${mess}">${mess}</p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            var mess = document.getElementById('messforgotpassword');
            console.log(mess.innerText === '');
            if (mess.innerText !== '') {
                alert('Email have sent');
            }
        </script>     
    </body>
</html>

