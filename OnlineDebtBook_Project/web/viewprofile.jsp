<%-- 
    Document   : pro5
    Created on : Feb 5, 2023, 11:29:14 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/3098a9fa7b.js" crossorigin="anonymous"></script>
        <title>View profile</title>
        <link rel="stylesheet" href="css/viewprofile.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>

        <jsp:include page="./header.jsp" />
        <section class="vh-50" style="background-color: #f4f5f7;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-lg-6 mb-4 mb-lg-0">
                        <div class="card mb-3" style="border-radius: .5rem;">
                            <div class="row g-0">
                                <div class="col-md-4 gradient-custom text-center text-white"
                                     style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                         alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
                                    <h5>${u.accountName}</h5>
                                    <p>Web Designer</p>
                                    <div>
                                        <i class="far fa-edit mb-5"></i>
                                        <a href="EditProfile?accountId=${u.accountID}">Edit</a><br>
                                    </div>
                                    <div style="margin-top: -40px" >
                                        <i class="fa-solid fa-lock"></i>
                                        <a href="ChangePassProfile?email=${u.email}">Change Password</a></div>
                                    <i class='bx bx-sun' id="Mode"></i>
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body p-4">
                                        <h6>Information</h6>
                                        <h5 style="color: red">${u.isAdmin==true?'Admin':'User'}</h5>
                                        <hr class="mt-0 mb-4">
                                        <div class="row pt-1">
                                            <div class="col-6 mb-3">
                                                <h6>Phone</h6>
                                                <p class="text-muted">${u.phone}</p>
                                            </div>
                                            <div class="col-6 mb-3">
                                                <h6>Address</h6>
                                                <p class="text-muted">${u.address}</p>
                                            </div>
                                        </div>
                                        <h6>Email</h6>
                                        <div class="row pt-1">
                                            <div class="col-12 mb-3">
                                                <p class="text-muted">${u.email}</p>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="#!" class="btn btn-link btn-floating btn-lg text-center m-1"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                                            <a href="#!" class="btn btn-link btn-floating btn-lg text-center m-1"><i class="fab fa-twitter fa-lg me-3"></i></a>
                                            <a href="#!" class="btn btn-link btn-floating btn-lg text-center m-1"><i class="fab fa-instagram fa-lg"></i></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
