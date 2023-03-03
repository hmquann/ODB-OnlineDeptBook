

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="./css/login.css">
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">
    </head>
    <body>
      <div class="full-box">
            <div>
                <div class="textheader">Online Debt Book</div>
                <div class="texthead">Your Account For Everything Online Debt Book System</div>
            </div>
            <div class="right">
                <form method="post" action="Login">
                    <div>
                        <input type="email" placeholder="Enter email address(*)" name="email"/>
                    </div>
                    <br>
                    <div>
                        <input type="password" placeholder="Enter password(*)" name="password">

                <div class="top">
                    <span>Have an account?</span>
                    <header>ODB Login</header>
                </div>

                <form method="post" action="Login">

                    <div class="input-field">
                        <input type="email" class="input" placeholder="Email" id="" name="email">
                        <i class='bx bx-user'></i>
                    </div>

                    <div class="input-field">
                        <input type="Password" class="input" placeholder="Password" id="" name="password">
                        <i class='bx bx-lock-alt'></i>
                    </div>

                    <p class="mess">${mess}</p>
                    <br>
                    <div>
                        <div class="codealt">
                            <c:if test="${code != null}">
                                ${code}
                            </c:if>
                        </div>
                    </div>
                    <br>
                    <div>
                        <button type="submit" id="login-btn" class="sb" value="Login">Login</button>
                    </div>
                    <br>
                </form>

                <div class="two-col">
                    <div class="one">
                        <label><a href="http://localhost:9999/OnlineDebtBook_Project/Register">Register</a></label>
                    </div>
                    <div class="two">
                        <label><a href="http://localhost:9999/OnlineDebtBook_Project/ForgotPassword">Forgot password?</a></label>
                    </div>
            </div>
            <script src="main.js"></script>
    </body>
</html>
                    <br>
                </label>
                <p style="color: red; display: none;" >${to}</p>
                <label class="class1">
                    <p>By logging in, you agree to ODB's
                        <a href="">Privacy Policy </a>
                        "and"
                        <a href="">Terms of Use</a>
                    </p>
                </label>
