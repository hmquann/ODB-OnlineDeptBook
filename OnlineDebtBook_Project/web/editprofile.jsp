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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/3098a9fa7b.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <title>Edit Profile</title>
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">
    </head>
    <body>
        <jsp:include page="./header.jsp" />
        <form action="EditProfile" method="post">
            <div class="container bootstrap snippets bootdey" style="margin-top: 10px">
                <h1 class="text-primary">Edit Profile</h1>
                <hr>
                <div class="row">
                    <div class="col-md-3">
                        <div class="card-body">
                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp" class="avatar img-circle img-thumbnail" alt="avatar">
                        </div>
                    </div>
                    <div class="col-md-9 personal-info">
                        <h3>Personal info</h3>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Name:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" value="${u.accountName}" name="accountname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email:</label>
                            <div class="col-lg-8">
                                <input class="form-control" readonly type="text" value="${u.email}" name="accountemail">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Phone:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" value="${u.phone}" name="accountphone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Address:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" value="${u.address}" name="accountaddress">
                            </div>
                        </div>                       
                    </div>
                </div>        
                <div style="color: red; margin-left: 300px">${mess}</div>
                <div class="form-group" style="text-align: center">
                    <input onclick="return showmess()" type="submit" value="Update" class="btn btn-success">
                </div>
            </div>
        </form>
        <script>
            function showmess() {
                var option = confirm("Are you sure to Update your profile?");
                if (option === true) {
                    return true;
                } else {
                    return false;
                }
            }
        </script>
    </body>
</html>