<%-- 
    Document   : otp
    Created on : Feb 28, 2023, 8:20:26 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/newpassword.css"/>
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">
        <title>Enter OTP</title>
    </head>
    <body>
        <div class="box1">
            <div class="container1">
                <div class="top1">
                    <header> Enter OTP </header>
                </div>
                <form action="Activeaccount" method="post">
                    <div class="input-field1">
                        <input type="text" id="otp" class="input1" name="otp" placeholder="Enter OTP" required="required">
                    </div> 
                    <div>
                        <div style="display: none">
                            <input style="display: none" name="email" value="${email} ">${email}           
                        </div>
                    </div>
                    <div class="input-field1">
                        <button style="margin-top: 20px" type="submit" class="submit1" id="login-btn"  value="Active Account"> Active Accounnt</button>
                    </div>
                    <p style="color: red;" id="messforgotpassword" tilte="${mess}">${mess}</p>
                </form>
            </div>
        </div>

    </body>
</html>
