<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "dal.*" %>
<%@page import = "modal.*" %>
<%@page import = "java.util.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.css" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

        <!-- Moment.js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

        <!-- Bootstrap DateTimePicker -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.1.2/css/tempusdominus-bootstrap-4.min.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.1.2/js/tempusdominus-bootstrap-4.min.js"></script>


        <style>
            .select,
            #locale {
                width: 100%;
            }

            .like {
                margin-right: 10px;
            }
            body {
                background-color: rgba(218, 211, 224, 0.673);
            }

            .container-fluid {
                margin-top: 2%;

            }

            .card {

                border: 2px solid rgba(115, 110, 110, 0.508);
                border-radius: 25px;
                box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
            }

            .card-header {
                border-top-right-radius: 25px !important;
                border-top-left-radius: 25px !important;
                background-color: rgba(210, 210, 210, 0.567)
            }

            .modal-lg {
                max-width: 80%;
            }

            .pagination{
                z-index: 1;
                display: flex;
                justify-content: space-between;
                align-items: stretch;
                flex-wrap: wrap;
                padding: 3px;
                border-top: 2px solid rgba(0, 0, 0, 0.1);
            }

            .btn-pgn-bottom{
                margin: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                width: 115.2px;
                height: 45.2px;
                background-color: #2374e1;
                color: white;
                border: 2px solid rgba(115, 110, 110, 0.508);
                border-radius: 25px;
                box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
            }
            .modal-content{
                border: 2px solid rgba(115, 110, 110, 0.508);
                border-radius: 25px;
                box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
            }
            .form-label-horizontal {
                text-align: right;
            }
        </style>

        <title>Debtors List</title>
    </head>

    <body>
        <header class="p-3 bg-dark text-white">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start" >

                    <form class="col-lg-auto mb-3 mb-lg-0 me-lg-3" >
                        <input type="search" class="form-control form-control-dark" placeholder="Search Debt" aria-label="Search" style="border-radius: 15px;">
                    </form>

                    <div class="text-end" style="padding-left: 65%;">
                        <button type="button" class="btn btn-outline-light me-2" style="border-radius: 15px;">Login</button>
                        <button type="button" class="btn btn-warning" style="border-radius: 15px;">Sign-up</button>
                    </div>
                </div>
            </div>
        </header>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="main">
                        <div class="card">
                            <div class="card-header">
                                <div class="float-left">
                                    <h3 class="mb-0">Debtors list ${mess}</h3>
                                    <p class="small text-muted m-0">Total: 0 Record(s)</p>
                                </div>
                                <div class="float-right"><button type="button" data-toggle="modal" data-target="#add_debtor" title="Add new Debtor"
                                                                 class="mr-1 btn btn-primary" style="border-radius: 20px;"><i class="fa fa-plus"></i>
                                        Add new Debtors</button>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table" style="text-align: center;">
                                    <table class="table mb-0">
                                        <thead>
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">Name</th>
                                                <th scope="col">Address</th>
                                                <th scope="col">Phone</th>
                                                <th scope="col">Email</th>
                                                <th scope="col">Total</th>
                                                <th scope="col">Start Date</th>
                                                <th scope="col">Update</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                            <tr>
                                                <th scope="col" style="width: 200px;height: 20px;
                                                    padding: 0;
                                                    padding-bottom: 15px;">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div>
                                                                <input type="text" placeholder="From" class="form-control"
                                                                       value="">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div>
                                                                <div>
                                                                    <input type="text" placeholder="To" class="form-control"
                                                                           value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>

                                                <th scope="col" style="width: 200px;height: 20px;
                                                    padding: 0;
                                                    padding-bottom: 15px;">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div>
                                                                <input type="text" placeholder="From" class="form-control"
                                                                       value="">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div>
                                                                <div>
                                                                    <input type="text" placeholder="To" class="form-control"
                                                                           value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </th>

                                                <th scope="col" style="width: 200px;height: 20px;
                                                    padding: 0;
                                                    padding-bottom: 15px;">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div>
                                                                <input type="text" id="datetimepicker1" class="form-control full-width" placeholder="From" value=""/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div>
                                                                <div>
                                                                    <input type="text" placeholder="To"
                                                                           class="form-control full-width" value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </th>
                                                <th scope="col"><button type="button"
                                                                        class="btn btn-outline-danger btn-block">Clear
                                                        filter</button>
                                                    <button type="button" class="btn btn-outline-primary btn-block">Hide
                                                        &gt;&gt;</button>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="o" items="${list1}">
                                                <tr>
                                                    <td>${o.customerID}</td>
                                                    <td>${o.customerName}</td>
                                                    <td>${o.customerAddress}</td>
                                                    <td>${o.customerPhone}</td>
                                                    <td>${o.customerEmail}</td>
                                                    <td>Nah</td>
                                                    <td>${o.dateCustomerCreate}</td>
                                                    <td>${o.dateUpdateCustomer}</td>
                                                    <td>
                                                        <div style="margin: auto; text-align:center">
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#detail_debt">
                                                                Details
                                                            </button>
                                                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#new_debt"
                                                                    <i class="fa fa-plus"></i> Add Debit Note</button>
                                                            <button type="button" data-toggle="modal" data-target="#add_debtor" title="Edit"
                                                                    class="btn btn-warning"><i class="fa fa-pencil"></i>
                                                                Edit
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    <hr style="width:max-content">
                                    <div class="pagination" style="display:flex;justify-content: space-between;align-items: stretch;" >
                                        <button type="button" class="float-left btn-pgn-bottom">Previous</button>
                                        <div class="center" style="flex: 0.5 0;
                                             text-align: center;
                                             margin-bottom: 0;
                                             display: -ms-flexbox;
                                             display: flex;
                                             -ms-flex-direction: row;
                                             flex-direction: row;
                                             -ms-flex-wrap: wrap;
                                             flex-wrap: wrap;
                                             -ms-flex-align: center;
                                             align-items: center;
                                             -ms-flex-pack: distribute;
                                             justify-content: space-around;">
                                            <span class="pageInfo" style="display: flex;align-items: center">Page
                                                <div class="pageJump"><input type="number" value="1" id="pageNum" style="width: 57.2px;">
                                                </div> /
                                                <span class="totalPages" id="totalPages" style="padding-left:5%">3</span>
                                            </span>
                                        </div>
                                        <button type="button" class="float-right btn-pgn-bottom">Next</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class='input-group date' id='datetimepicker1'>
                <input type='text' class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
            <jsp:include page="helper.jsp"></jsp:include>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
    <script>
        var c = document.getElementById('pageNum');
        var d = document.getElementById('totalPages');
        console.log(d.innerText);
        c.addEventListener('change', function () {
            if (c.value < 1) {
                c.value = 1;
            } else if (c.value > d.innerText) {
                c.value = d.innerText;
            }
        })
        console.log(c.value);
        console.log(document.getElementById('datetimepicker1'))


        $(function () {
            $('#datetimepicker1').datetimepicker();
        });
    </script>

</html>