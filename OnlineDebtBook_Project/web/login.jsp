
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="css/login.css">
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">
    </head>
    <body>
        <div class="box">
            <div class="container">

                <div class="top">
                    <span>Have an account?</span>
                    <header>ODB Login</header>
                </div>

                <form method="post" action="Login">

                    <div class="input-field">
                        <input type="email" class="input" placeholder="Email" id="" name="email">
                        <i class='bx bx-envelope'></i>
                    </div>

                    <div class="input-field">
                        <input type="Password" class="input" placeholder="Password" id="" name="password">
                        <i class='bx bx-lock-alt'></i>
                    </div>

                    <p class="mess">${mess}</p>

                    <div class="input-field">
                        <button type="submit" class="submit" value="Login" id="">Login</button>
                    </div>

                </form>

                <div class="two-col">
                    <div class="one">
                        <label><a href="register.jsp">Register</a></label>
                    </div>
                    <div class="two">
                        <label><a href="forgotpass.jsp">Forgot password?</a></label>
                    </div>
                </div>
            </div>
            <script src="main.js"></script>
    </body>
</html>
