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
        <link rel="stylesheet" href="css/register.css">
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>


    </head>
    <body>
        <div class="box2">
            <div class="container2">

                <div class="top2">
                    <span>Have an account?</span>
                    <header>ODB Register</header>
                </div>

                <form action="Register" method="post">
                    <div class="input-field2">
                        <input type="text" class="input2" placeholder="Username" id="" name="name" required value="${param.name}">
                        <i class='bx bx-user'></i>
                    </div>
                    <div class="input-field2">
                        <input type="email" class="input2" placeholder="Email" id="" name="email" required value="${param.email}">
                        <i class='bx bx-envelope' ></i>
                    </div>
                    <div class="input-field2">
                        <input type="password" class="input2" placeholder="Password" onkeyup="myFunction()" id="password"  name="pass" required value="${param.pass}">
                        <i class='bx bx-lock-alt'></i>
                    </div>
                    <div class="input-field2">
                        <input type="password" class="input2" id="confirm_password" placeholder="Repeat Password" name="repeatpass" required " onkeyup="myFunction()">
                        <i class='bx bx-lock-open-alt'></i>
                    </div>
                    <div class="input-field2">
                        <input type="text" class="input2" placeholder="Phone" id="" name="phone" required value="${param.phone}">
                        <i class='bx bx-phone-call' ></i>
                    </div>
                    <div class="input-field2">
                        <input type="text" class="input2" placeholder="Address" id="" name="address" required value="${param.address}">
                        <i class='bx bxs-map'></i>
                    </div>
                    <div>
                        <p style="margin-left: 10px" id='message'></p>
                    </div>
                    <p style="color: red; padding-left: 90px">${mess}</p>
                    <p style="color: red;padding-left: 90px">${mess1}</p>
                    <div class="input-field2">
                        <input type="submit" class="submit2" value="Sign Up" id="">
                    </div>
                </form>
                <div class="two-col2">
                    <div class="one2">
                        <label><a href="http://localhost:9999/OnlineDebtBook_Project/Login">Login</a></label>
                    </div>
                    <div class="two2">
                        <label><a href="http://localhost:9999/OnlineDebtBook_Project/ForgotPassword">Forgotten Password?</a></label>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function myFunction() {
                if (document.getElementById('password').value ===
                        document.getElementById('confirm_password').value) {
                    document.getElementById('message').style.color = 'yellow';
                    document.getElementById('message').innerHTML = 'Matching';
                } else {
                    document.getElementById('message').style.color = 'red';
                    document.getElementById('message').innerHTML = 'Not matching';
                }

            }
        </script>
    </body>
</html>
