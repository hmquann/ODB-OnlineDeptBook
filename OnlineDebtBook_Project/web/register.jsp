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
        <link rel="stylesheet" href="./css/register.css"/>
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">

    </head>
    <body>
        <div class="class2">
            <div class="class1">
                <div class="signup"> Sign up</div>
                <div class="note"> It's quick and easy</div><br>
                <form action="Register" method="post">
                    <div class="edit"><input type="text" placeholder="Username(*)" name="name" required value="${param.name}"></div>
                    <div class="edit"><input type="email" placeholder="Email(*)" name="email" required value="${param.email}"></div>
                    <div class="edit"><input type="text" placeholder="Address(*)" name="address" required value="${param.address}"></div>
                    <div class="edit"><input type="text" placeholder="Phone(*)" name="phone" required value="${param.phone}"></div>     
                    <div class="edit"><input type="password" placeholder="Password(*)" onkeyup="myFunction()" id="password"  name="pass" required value="${param.pass}"></div>
                    <div class="edit"><input type="password" id="confirm_password" placeholder="Repeat Password(*)" name="repeatpass" required " onkeyup="myFunction()">
                        <p style="margin-left: 10px" id='message'></p></div>
                    <p style="color: red; padding-left: 90px">${mess}</p>
                    <p style="color: red;padding-left: 90px">${mess1}</p>

        <div class="box2">
        <div class="container2">

            <div class="top2">
                <span>Have an account?</span>
                <header>ODB Register</header>
            </div>

            <form action="Register" method="post">
                <div class="input-field2">
                    <input type="text" class="input2" placeholder="Username" id="" name="name" required
                        value="${param.name}">
                    <i class='bx bx-user'></i>
                </div>

                <div class="input-field2">
                    <input type="email" class="input2" placeholder="Email" id="" name="email" required
                        value="${param.email}">
                    <i class='bx bx-user'></i>
                </div>

                <div class="input-field2">
                    <input type="password" class="input2" placeholder="Password" id="" name="pass" required
                        value="${param.pass}">
                    <i class='bx bx-lock-alt'></i>
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
    </body>
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
</html>
