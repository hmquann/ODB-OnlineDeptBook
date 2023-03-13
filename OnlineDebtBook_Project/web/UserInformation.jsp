<%-- 
    Document   : UserInformation
    Created on : Mar 13, 2023, 8:24:51 AM
    Author     : Nguyen Nguyen Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">
        <title>Show User's Information</title>
    </head>
    <body>
    <c:if test="${sessionScope.user2.isAdmin == true}">
        <div class="table" style="text-align: center;">
            <table class="table table-bordered" data-resizable-columns-id="demo-table-v2">
                <thead>
                    <tr style="background-color: white;color:black;">
                        <th data-resizable-column-id="name">Name</th>
                        <th data-resizable-column-id="email">Email</th>
                        <th data-resizable-column-id="address">Address</th>
                        <th data-resizable-column-id="phone">Phone</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="o" items="${listUserInfo}">
                    <tr>
                        <td>${o.accountName}</td>
                        <td>${o.email}</td>
                        <td>${o.address}</td>
                        <td>${o.phone}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>
</body>
</html>

