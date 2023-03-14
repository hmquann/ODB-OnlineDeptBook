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
        <link rel="stylesheet" href="css/header.css">
        <script src="js/resizableColumns.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <!--        <header class="p-3 bg-dark text-white">
                    <div class="container">
                        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start" >
                            <a href="Dashboard?accountID=${user2.accountID}" class="btn btn-warning" style="border-radius: 15px;">Home</a>
                            <form class="col-lg-auto mb-3 mb-lg-0 me-lg-3" >
                                <input type="search" class="form-control form-control-dark" placeholder="Search Debt" aria-label="Search" style="border-radius: 15px;">
                            </form>                     
                            <div class="text-end" style="padding-left: 65%;">
                                <form action="Logout" method="get" class="form-inline">
                                    <a href="ViewProfile" class="btn btn-warning" style="border-radius: 15px;"><i class="fa-solid fa-user"></i></a>                          
                                    <a href="Logout" class="btn btn-warning" style="border-radius: 15px; margin-left: 15px"><i class="fa-solid fa-right-from-bracket"></i></a> 
                                </form>
                            </div>                      
                        </div>
                    </div>
                </header>-->
        <nav class="navbar navbar-expand-lg navbar-light bg-dark" style="padding-bottom: 20px;padding-top: 10px">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <a class="navbar-brand" href="#" style="color: white">OnlineDebtBook</a>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0" >
                    <li class="nav-item active">
                        <a href="Dashboard" class="nav-link" style="color:white">Home</a>
                    </li>
                    <!--                    <li class="nav-item">
                                            <a class="nav-link" href="#" style="color: white">Profile</a>
                                        </li>-->
                </ul>
                <form class="form-inline"  >                   
                    <form action="Logout" method="get" class="form-inline">
                        <!--                   <div class="input-group">
                                                    <div class="form-outline">
                                                        <input id="search-input"  placeholder="Search" class="form-control" style="border-radius: 15px;margin-top: 10px;margin-right: 5px">
                                                    
                                                    </div>
                                                <button id="search-button" type="button" class="btn btn-primary" style="border-radius: 15px;margin-top: 10px;margin-right: 10px">
                                                        <i class="fas fa-search"></i>
                                                    </button>
                                           </div>            -->
                        <a href="ViewProfile" class="btn btn-info btn-lg" style="border-radius: 15px;margin-top: 10px"><i class="fa-solid fa-lg fa-user"></i></a>                          
                        <a href="Logout" class="btn btn-warning btn-lg" style="border-radius: 15px; margin-left: 15px;margin-top: 10px"><i class="fa-solid fa-right-from-bracket"></i></a>
                    </form>
                </form>
            </div>
        </nav>
    </body>
</html>
