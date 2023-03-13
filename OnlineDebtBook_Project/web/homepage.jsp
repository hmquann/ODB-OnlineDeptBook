<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>HomePage</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
        <link rel="stylesheet" href="css/homepage.css">
    </head>
    <body>
        <header>
            <div class="nav" id="nav">              
                <div class="other">
                    <ul class="otheroption">
                        <li><a href="Login">Login</a></li>
                        <li><a href="Register">Register</a></li>
                    </ul>
                </div>
            </div>
            <div class="item banner">
            </div>
        </header>
        <div class="container">
            <div class="item intro">
                <div class="content">
                    <div class="showtotop">Debt Manegement</div>
                    <h2 class="showtotop delay-02">Online Debt Book</h2>
                    <div class="text">
                        <p class="showtotop delay-04">Websites that help you control your money</p>
                        <p class="showtotop delay-06">DON'T LEAVE MONEY</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="item travel">
            <div class="title">
                <h2 class="showtotop delay-02">SMART MONEY MANAGEMENT</h2>
            </div>
            <div class="list">
                <div class="itemImg showtotop delay-04">
                    <div class="content">
                        <h3>Accurate results</h3>
                    </div>
                    <img src="image/tn1.png" alt="">
                </div>
                <div class="itemImg showtotop delay-06">
                    <div class="content">
                        <h3>Easy to approach
                        </h3>
                    </div>
                    <img src="image/tn2.png" alt="">
                </div>
                <div class="itemImg showtotop delay-06">
                    <div class="content">
                        <h3>Safe security
                        </h3>
                    </div>
                    <img src="image/tn3.png" alt="">
                </div>
                <div class="itemImg showtotop delay-04">
                    <div class="content">
                        <h3>Long term storage</h3>
                    </div>
                    <img src="image/tn4.png" alt="">
                </div>
            </div>
        </div>

        <div class="item teacher">
            <h2>ABOUT US</h2>
            <div id="formList">
                <div id="list">
                    <div class="item_teacher showtotop delay-08">
                        <img src="image/maitranhuy.jpg" class="avatar">
                        <div class="content_teacher showtotop delay-02">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Name</td>
                                    <td>Mai Tr?n Huy</td>
                                </tr>
                                <tr>
                                    <td>Position</td>
                                    <td>Leader</td>
                                </tr>
                                <tr>
                                    <td>Date of birth</td>
                                    <td>17-02-2002</td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">FPT University</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="item_teacher showtotop delay-06">
                        <img src="image/hoangminhquan.jpg" class="avatar">
                        <div class="content_teacher ">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Name</td>
                                    <td>Ho�ng Minh Qu�n</td>
                                </tr>
                                <tr>
                                    <td>Position</td>
                                    <td>Developer</td>
                                </tr>
                                <tr>
                                    <td>Date of birth</td>
                                    <td>16-11-2002</td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">FPT University</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="item_teacher showtotop delay-04">
                        <img src="image/phamchithanh.jpg" class="avatar">
                        <div class="content_teacher">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Name</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Position</td>
                                    <td>Developer</td>
                                </tr>
                                <tr>
                                    <td>Date of birth</td>
                                    <td>25-10-2002</td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">FPT University</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="item_teacher showtotop delay-02">
                        <img src="image/caovancong.jpg" class="avatar">
                        <div class="content_teacher">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Name</td>
                                    <td>L? Trung Dung</td>
                                </tr>
                                <tr>
                                    <td>Position</td>
                                    <td>Developer</td>
                                </tr>
                                <tr>
                                    <td>Date of birth</td>
                                    <td>19-12-2002</td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">FPT University</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="item_teacher">
                        <img src="image/khoann.png" class="avatar">
                        <div class="content_teacher">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Name</td>
                                    <td>Nguyen Nguyen Khoa</td>
                                </tr>
                                <tr>
                                    <td>Position</td>
                                    <td>Developer</td>
                                </tr>
                                <tr>
                                    <td>Date of birth</td>
                                    <td>26-09-2002</td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">FPT University</td>
                                </tr>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
            <div class="direction">
                <button id="prev"> < </button>
                <button id="next"> > </button>
            </div>
        </div>

        <div class="footer">
            <p>Email : swpgroup3@fpt.edu.vn</p>
            <p>Address: FPT University, H?a L?c, H? N?i</p>
            <h5>&copy; Copyright 2023. SWP GROUP 3</h5>
        </div>
        <script src='js/homepage.js'></script>
    </body>
</html>
