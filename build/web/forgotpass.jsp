<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body{
                padding-top: 144px;
            }
            .border{
                border: 2px solid black;
                margin: auto;
                width: 40%;
                border: 2px solid #02B875;
                border-radius: 50px;
                box-shadow: 20px 20px #02B875;
                font-family: verdana, Helvetica, sans-serif;

            }
            .edittext{
                color: #146EB4;
                font-weight: bolder;
                font-size: 40px;
                padding: 20px 20px 0px 20px;
            }
            .edit1{
                padding: 0px 0px 0px 20px;

            }
            .edit{
                margin: 20px;
            }
            input[type = text]{
                width: 510px;
                height: 38px;
                border-radius: 20px;
                padding: 0px 15px 0px 15px;
                font-family: verdana, Helvetica, sans-serif;
                font-size: 15px;
                box-shadow: 3px 3px #02B875;

            }
            input[type = text1]{
                width: 205px;
                height: 38px;
                border-radius: 20px;
                font-family: verdana, Helvetica, sans-serif;
                font-size: 15px;
                padding: 0px 15px 0px 15px;
                box-shadow: 3px 3px #02B875;


            }
            input[type = text2]{
                width: 205px;
                height: 38px;
                border-radius: 20px;
                font-family: verdana, Helvetica, sans-serif;
                font-size: 15px;
                padding: 0px 15px 0px 15px;
                box-shadow: 3px 3px #02B875;


            }
            input[type = button]{
                width: 55px;
                height: 38px;
                border-radius: 20px;
                font-family: verdana, Helvetica, sans-serif;
                font-size: 15px;


            }
            input[type = submit]{
                width: 544px;
                height: 40px;
                border-radius: 20px;
                border-color: #146EB4;
                font-family: verdana, Helvetica, sans-serif;
                font-size: 15px;
                padding: 0px 15px 0px 15px;
                font-weight: bolder;
                box-shadow: 3px 3px #146EB4;
                color:white;
                background-color: #146EB4;
                margin-bottom: 40px;
            }
        </style>
    </head>
    <body>
        <div class="border">
            <div class="edittext">
                <p>Find Your Account</p>
            </div>
            <div class="edit1">
                <p>Please enter your email address or mobile number to search for your account.</p>
            </div>
            <div class="padding">
                <form action="ForgotPassword" method="post">                 
                    <div class="edit"><input type="text" placeholder="Email(*)" name="email"></div>
                    <p style="color: red">${mess}</p>
                    <div class="edit">
                        <input type="submit" value=" + Yêu cầu cấp lại mật khẩu">
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
