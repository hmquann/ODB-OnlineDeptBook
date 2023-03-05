

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
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
                <label class="class1">
                    <div>
                        <a href="forgotpass.jsp">Forgotten your password ?</a>
                    </div>
                    <br>
                    <div>
                        <a href="register.jsp">Created New Account</a>
                    </div>
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
            </div>
        </div>
        <script src="main.js"></script>
    </body>
</html>
