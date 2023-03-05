<%-- 
    Document   : changepassword
    Created on : Mar 5, 2023, 12:38:05 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <!--<form action="ChangePassProfile" method="get">-->
            <div class="main1">                
                <br>AccountEmail: <input  type="text" value="${u.email}" name="accountemail" readonly>
                <br>
                <input class="accountpassword" placeholder="Password(*)"  type="text" name="accountpassword" >
                <br>
                <input class="" placeholder=" Enter New Password(*)" type="text" name="newpass" >
                <br>
                <input class="" placeholder=" Confirm New Password(*)" type="text" name="newpass" >
                <br>            
                <br> <input onclick="return showmess()" type="submit" value="Save">
                <br> <a href="ViewProfile">View</a>
            </div>
        <!--</form>-->
         <script>
            function showmess() {
                var option = confirm("Are you sure to Update your profile?");
                if (option === true) {
                    return true;
                } else {
                    return false;
                }
            }
        </script>
    </body>
</html>
