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
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="./css/forgotpass.css">
    </head>
    <body>
        <div class="box1">
            <div class="container1">

                <div class="top1">
                    <span>Have an account?</span>
                    <header>Forgotten Password</header>
                </div>

                <form action="ForgotPassword" method="post">
                    <div>
                        <div class="input-field1">
                            <input type="email" class="input1" placeholder="Email" id="" name="email">
                            <i class='bx bx-envelope'></i>
                        </div>
                        <div class="input-field1">
                            <button type="submit" class="submit1" value="Find" id="">Find</button>
                        </div>
                        <p style="color: red; display: none;" id="messforgotpassword" tilte="${mess}">${mess}</p>
                        <p style="color: red;">${mess2}</p>
                    </div>
                </form>

                <div class="two-col1">
                    <div class="two1">
                        <label><a href="http://localhost:9999/OnlineDebtBook_Project/Login">Login</a></label>
                    </div>
                    <div class="two2">
                        <label><a href="http://localhost:9999/OnlineDebtBook_Project/Register">Register</a></label>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var mess = document.getElementById('messforgotpassword');
            console.log(mess.innerText === '');
            if (mess.innerText !== '') {
                alert('Nhập email tạo tài khoản và email phải đúng cú pháp');
            }
        </script>     
    </body>
</html>

