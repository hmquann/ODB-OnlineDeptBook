<%-- 
    Document   : editprofile
    Created on : Feb 28, 2023, 9:15:04 PM
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
        <form action="EditProfile" method="get">
            <div class="main1"> 
                AccountID<input type="text" value="${u.accountID}" name="accountid" readonly>
                <br>
                <br>AccountName: <input class="accountname" type="text" value="${u.accountName}" name="accountname">
                <br>
                <br>AccountEmail: <input  type="text" value="${u.email}" name="accountemail" readonly>
                <br>
                <br>AccountAddress: <input class="accountaddress" type="text" value="${u.address}" name="accountaddress" >
                <br>
                <br>AccountPhone: <input class="accountphone" type="text" value="${u.phone}" name="accountphone" >
                <br>
                <br> <input onclick="return showmess()" type="submit" value="Save">
                <br> <a href="ViewProfile">View</a>
            </div>
        </form>
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
