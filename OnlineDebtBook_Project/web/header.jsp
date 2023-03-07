<%-- 
    Document   : header
    Created on : Mar 2, 2023, 11:59:10 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <header class="p-3 bg-dark text-white">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start" >
                    <form class="col-lg-auto mb-3 mb-lg-0 me-lg-3" >
                        <input type="search" class="form-control form-control-dark" placeholder="Search Debt" aria-label="Search" style="border-radius: 15px;">
                    </form>                   
                    <div class="text-end" style="padding-left: 65%;">
                        <form action="Logout" method="get">
                        <a href="ViewProfile" class="btn btn-warning" style="border-radius: 15px;">View Profile</a>
                        <button type="submit" class="btn btn-warning" style="border-radius: 15px;">Sign-out</button>
                         </form>
                    </div>                      
                </div>
            </div>
        </header>
    </body>
</html>
