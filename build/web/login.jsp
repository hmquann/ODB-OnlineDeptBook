

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body{
                overflow-x: hidden
            }
            .textheader{
                color: #02B875;
                font-family: verdana, Helvetica, sans-serif;
                font-size: 50px;
                line-height: 10px;
                max-width: 25ch;
                text-align: center;
                font-weight: bolder;
            }
            .texthead{
                font-family: verdana, Helvetica, sans-serif;
                font-size: 20px;
                line-height: 10px;
                margin: 0px 0px 0px 69px;
                text-align: center;
            }
            .center{
                text-align: center;
                color: #075E54;
                font-family: verdana, Helvetica, sans-serif;
                font-size: 12px;
                font-weight: bolder;
            }
            .center a{
                color: #075E54;
                font-weight: bolder;
            }
            .center p{
                color: black;
            }
            input[type = email]{
                font-family: verdana, Helvetica, sans-serif;
                width: 450px;
                height: 30px;
                font-weight: bolder;
                border-radius: 20px;
                padding: 5px 20px 5px 20px;
                font-size: 15px;
                box-shadow: 3px 3px #02B875;

            }
            input[type = password]{
                font-family: verdana, Helvetica, sans-serif;
                width: 450px;
                height: 30px;
                font-weight: bolder;
                border-radius: 20px;
                padding: 5px 20px 5px 20px;
                font-size: 15px;
                box-shadow: 3px 3px #02B875;

            }
            input[type = text1]{
                font-family: verdana, Helvetica, sans-serif;
                width: 205px;
                height: 30px;
                border-radius: 20px;
                padding: 5px 20px 5px 20px;
                font-size: 15px;
                box-shadow: 3px 3px #02B875;

            }
            input[type = text2]{
                font-family: verdana, Helvetica, sans-serif;
                height: 30px;
                width: 133px;
                border-radius: 20px;
                padding: 5px 20px 5px 20px;
                font-size: 15px;
                box-shadow: 3px 3px #02B875;

            }
            input[type = button]{
                font-family: verdana, Helvetica, sans-serif;
                height: 30px;
                width: 61px;
                background: #146EB4;
                border-color: #146EB4;
                color: white;
                font-weight: bolder;
                border-radius: 20px;
                box-shadow: 3px 3px;

            }
            input[type = submit]{
                font-family: verdana, Helvetica, sans-serif;
                height: 40px;
                width: 493px;
                font-weight: bolder;
                background: #02B875;
                border-color: #02B875;
                color: white;
                font-weight: bolder;
                border-radius: 20px;
                padding: 5px 20px 5px 20px;
                font-size: 20px;
                box-shadow: 3px 3px #02B875;

            }
            .left{
                float: left;
                margin-top: 15%;
                margin-left: 125px;
            }
            .right{
                float: right;
                border: 2px solid #02B875;
                box-shadow: 20px 20px #02B875;
                border-radius: 50px;
                padding: 25px;
                margin-top: 10%;
                margin-right: 115px;
            }
            .center{
                padding: 15px;
            }
        </style>
    </head>
    <body>
      
        <div class="left">
            <p class="textheader">Online Debt Book</p>
            <p class="texthead">Your Account For Everything Online Debt Book System</p>
        </div>
        <div class="right">
            <form method="post" action="Login">
            <div>
                <input type="email" placeholder="Username" name="email">
            </div>
            <br>
            <div>
                <input type="password" placeholder="Password" name="password">
            </div>
             <p style="color: red;">${mess}</p>
           
            <br>
            <div>
                <br>
                <label>
                    <input type="text1">
                    <input type="button" value="Click">
                    <input type="text2">
                </label>
            </div>
            <div class="center">
                <input type="checkbox" value="" checked=""> Keep me signed in
            </div>
            <div class="login">
                <input type="submit" value="Login">
            </div>
             </form>
            <label class="center">
                <div><a href="forgotpass.jsp" >Forgotten your password?</a></div>
                <div><a href="register.jsp">Created New Account</a></div>
            </label>
            <label class="center">
                <p>By logging in, you agree to ODB's 
                    <a href="">Privacy Policy </a>
                    "and" 
                    <a href="">Terms of Use</a>
                </p>
            </label>
        </div>
    </body>
</html>
