<%-- 
    Document   : head
    Created on : Mar 9, 2023, 10:59:06 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/3098a9fa7b.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">
        <style>
            html,body{
                width: 100%;
                height:  100%;
            }
            body{
                background: #262329;
            }
            .item{
                position: absolute;
                margin: auto;
                top:0;
                left: 0;
                right: 0;
                bottom: 0;
                width: 300px;
                height: 100px;
            }
            .item .Search{
                position: absolute;
                margin: auto;
                top:0;
                left: 0;
                right: 0;
                bottom: 0;
                width: 80px;
                height: 80px;
                background: crimson;
                border-radius: 50%;
                transition: all 1s;
                z-index: 4;
                box-shadow: 0 0 25px 0 rgba(0,0,0,0.4)
            }
            .item .Search:hover {
                cursor: pointer;
            }
            .item .Search::before{
                content:"";
                position: absolute;
                margin: auto;
                top: 22px;
                left: 22px;
                right: 0;
                bottom: 0;
                width: 12px;
                height: 2px;
                background: white;
                transform: rotate(45deg);
                transition: all 0.5s;
            }
            .item .Search::after{
                content:"";
                position: absolute;
                margin: auto;
                top: -5px;
                left: -5px;
                right: 0;
                bottom: 0;
                width: 25px;
                height: 25px;
                border-radius: 50%;
                border: 2px solid;
                transition: all 0.5s;
            }
            .item input{
                font-family:  monospace;
                position: absolute;
                margin: auto;
                top:0;
                left: 0;
                right: 0;
                bottom: 0;
                width: 50px;
                height: 50px;
                outline: none;
                border: none;
                background: crimson;
                color: white;
                text-shadow: 0 0 10px crimson;
                padding: 0 0px 0 0px;
                border-radius: 30px;
                box-shadow: 0 0 25px 0 crimson,0 20px 25px 0 rgba(0,0,0,0.2);
                transition: all 1s;
                z-index: 5;
                font-weight: bolder;
                letter-spacing: 0.1em;
            }
            .item input:hover{
                cursor: pointer;
            }
            .item input:focus{
                width: 300px;
                opacity: 1;
                cursor: text;
            }
            .item input:focus ~ .Search{
                right: -300px;
                background: #151515;
                z-index: 6;
            }
            .item input:focus ~ .Search::before{
                top: 0;
                left: 0;
                width: 25px;
            }
            .item input:focus ~ .Search::after{
                top: 0;
                left: 0;
                width: 25px;
                height: 2px;
                border: none;
                background: white;
                border-radius: 0%;
                transform: rotate(-45deg);
            }
            .item input::placeholder{
                color:white;
                opacity: 0.5;
                font-weight: bolder;
            }
        </style>

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark" style="padding-bottom: 30px;padding-top: 15px">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <a class="navbar-brand" href="#" style="color: white">ODB</a>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0" >
                    <li class="nav-item active">
                        <a href="Dashboard?accountID=${user2.accountID}" class="nav-link" style="color:white">Home</a>
                    </li>
                    <!--                    <li class="nav-item">
                                            <a class="nav-link" href="#" style="color: white">Profile</a>
                                        </li>-->
                </ul>
                <form class="form-inline" >                   
                    <form action="Logout" method="get" class="form-inline">
                        <a href="ViewProfile" class="btn btn-warning" style="border-radius: 15px;margin-top: 10px"><i class="fa-solid fa-lg fa-user"></i></a>                          
                        <a href="Logout" class="btn btn-warning" style="border-radius: 15px; margin-left: 15px;margin-top: 10px"><i class="fa-solid fa-right-from-bracket"></i></a> 
                    </form>
                </form>
            </div>

        </nav>
        <div class='item'>
            <input type="search" placeholder="Search...">
            <div class="Search">

            </div>
        </div>

    </body>
    <script>
    </script>
</html>
