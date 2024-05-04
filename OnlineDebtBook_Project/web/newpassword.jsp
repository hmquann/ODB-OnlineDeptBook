<%-- 
    Document   : newpassword
    Created on : Feb 13, 2023, 3:44:16 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>New Password</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="./css/newpassword.css">
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">
    </head>
    <body>
        <div class="box1">
            <div class="container1">
                <form action="ChangePassword" method="post">
                    <div>
                        <div class="input-field1">
                            <input type="text" class="input1" required="" placeholder="Enter New Password(*)" id="" name="pass">
                            <i class='bx bx-envelope'></i>
                        </div>
                        <div class="input-field1">
                            <input type="password" class="input1" required="" placeholder="Confirm New Password(*)" id="" name="pass2">
                            <i class='bx bx-envelope'></i>
                        </div>
                        <div>
                        <div style="display: none">
                            <input style="display: none" name="email" value="${email} ">${email}           
                        </div>
                        </div>
                        <div class="input-field1">
                            <button type="submit" class="submit1" value="Reset" id="">Reset</button>
                        </div>
                        <p style="color: red" id="messforgotpassword" tilte="${mess}">${mess}</p>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>

