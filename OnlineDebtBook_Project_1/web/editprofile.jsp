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
        <!--<form action="EditProfile" method="post">-->
            <div class="main1"> 
            AccountID<input type="text" value="${u.accountID}" name="accountid" readonly>
            <br>
            <br>AccountName: <input class="accountname" type="text" value="${u.accountName}" name="accountname">
            <br>
            <br>AccountEmail: <input  type="text" value="${u.email}" name="accountemail" >
            <br>
            <br>AccountAddress: <input class="accountaddress" type="text" value="${u.address}" name="accountaddress" >
            <br>
            <br>AccountPhone: <input class="accountphone" type="text" value="${u.phone}" name="accountphone" >
            <br>
            <br> <input type="submit" value="Save">
            </div>
        <!--</form>-->
    </body>
</html>
