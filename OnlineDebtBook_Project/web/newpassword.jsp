<%-- 
    Document   : newpassword
    Created on : Feb 13, 2023, 3:44:16 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/newpassword.css"/>
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">

        <title>New Password</title>
    </head>
    <body>
        <div class="class2">
            <div class="class1">
                <div class="rsp">Reset Password</div>
                <form action="ChangePassword" method="post">
                    <div class="edit">
                        <input type="text" placeholder=" Enter New Password(*)" name="pass">
                    </div> 
                    <div class="edit">
                        <input type="password"  placeholder=" Confirm New Password(*)" name="pass2">
                    </div> 
                    <div>
                        <div style="display: none">
                            <input style="display: none" name="email" value="${email} ">${email}           
                        </div>
                    </div>
                    <div class="edit">
                        <button type="submit" id="login-btn" class="sb2" value="Reset"> Reset</button>
                    </div>
                    <p style="color: red; display: none;" id="messforgotpassword" tilte="${mess}">${mess}</p>
                </form>
            </div>
        </div>
        <script>
            var mess = document.getElementById('messforgotpassword');
            console.log(mess.innerText === '');

            if (mess.innerText !== '') {
                alert('Mật khẩu chứa ít nhất 8 chứ kí tự (yêu cầu bắt buộc phải có 1 kí tự in hoa và 1 số)');
            }

        </script>
    </body>
</html>

