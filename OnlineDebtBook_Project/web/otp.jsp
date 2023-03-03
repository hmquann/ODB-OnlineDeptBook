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
        <div class="class2">
            <div class="class1">
                <div class="rsp">Enter OTP</div>
                <form action="Activeaccount" method="post">
                    <div class="edit">
                        <input type="text" id="otp" name="otp" placeholder="Enter OTP" required="required">
                    </div> 
                    <div>
                        <div style="display: none">
                            <input style="display: none" name="name" value="${name} ">${name}           
                        </div>
                    </div>
                    <div>
                        <div style="display: none">
                            <input style="display: none" name="pass" value="${pass} ">${pass}           
                        </div>
                    </div>
                    <div>
                        <div style="display: none">
                            <input style="display: none" name="email" value="${email} ">${email}           
                        </div>
                    </div>
                    <div>
                        <div style="display: none">
                            <input style="display: none" name="phone" value="${phone} ">${phone}           
                        </div>
                    </div>
                    <div>
                        <div style="display: none">
                            <input style="display: none" name="address" value="${address} ">${address}           
                        </div>
                    </div>
                    <div class="edit">
                        <button type="submit" id="login-btn" class="sb2" value="Active Account"> Active Accounnt</button>
                    </div>
                    <p style="color: red; display: none;" id="messforgotpassword" tilte="${mess}">${mess}</p>
                </form>
            </div>
        </div>

    </body>
</html>
