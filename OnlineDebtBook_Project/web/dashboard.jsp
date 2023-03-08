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


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <script src="https://kit.fontawesome.com/3098a9fa7b.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

        <!-- Moment.js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
        <script src="js/resizableColumns.min.js"></script>
        <!-- Bootstrap DateTimePicker -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/resizableColumns.min.js"></script>

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
                border-radius: 25px !important;
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
            table {
                table-layout: fixed;
            }

            table td,
            table th {
                overflow: hidden;
                white-space: nowrap;
                -moz-text-overflow: ellipsis;
                -ms-text-overflow: ellipsis;
                -o-text-overflow: ellipsis;
                text-overflow: ellipsis;
            }
        </style>

        <title>Debtors List</title>
    </head>

    <body>
        <header class="p-3 bg-dark text-white">
            <a href="Dashboard" class="btn btn-warning" style="border-radius: 15px;">Home</a>
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start" >

                    <form class="col-lg-auto mb-3 mb-lg-0 me-lg-3" action="Search" method="post" >
                        <input name="a" value="${name}" class="form-control form-control-dark" placeholder="Search Debt" aria-label="Search" style="border-radius: 15px;">
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-search"></i>
                        </button>
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
                                    <table class="table table-bordered" data-resizable-columns-id="demo-table-v2">
                                        <thead>
                                            <tr style="background-color: white;color:black;">
                                                <th data-resizable-column-id="id" style="position: relative; width: 64.4375px" >ID</th>
                                                <th data-resizable-column-id="name">Name</th>
                                                <th data-resizable-column-id="address">Address</th>
                                                <th data-resizable-column-id="phone">Phone</th>
                                                <th data-resizable-column-id="email">Email</th>
                                                <th data-resizable-column-id="total">Total</th>
                                                <th data-resizable-column-id="startDate">Start Date</th>
                                                <th data-resizable-column-id="update">Update</th>
                                                <th data-resizable-column-id="action" style="position: relative; width: 303.65px;">Action</th>
                                            </tr>
                                            <tr>
                                                <td style="width: 200px;height: 20px;
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
                                                </td>
                                                <td style="width: 200px;height: 20px;
                                                    padding: 0;
                                                    padding-bottom: 15px;">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div>
                                                                <input type="text" placeholder="" class="form-control"
                                                                       value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td style="width: 200px;height: 20px;
                                                    padding: 0;
                                                    padding-bottom: 15px;">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div>
                                                                <input type="text" placeholder="" class="form-control"
                                                                       value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td style="width: 200px;height: 20px;
                                                    padding: 0;
                                                    padding-bottom: 15px;">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div>
                                                                <input type="text" placeholder="" class="form-control"
                                                                       value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td style="width: 200px;height: 20px;
                                                    padding: 0;
                                                    padding-bottom: 15px;">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div>
                                                                <input type="text" placeholder="" class="form-control"
                                                                       value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td style="width: 200px;height: 20px;
                                                    padding: 0;
                                                    padding-bottom: 15px;">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div>
                                                                <input type="text" placeholder="" class="form-control"
                                                                       value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>

                                                <td style="width: 200px;height: 20px;
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
                                                </td>

                                                <td  style="width: 200px;height: 20px;
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
                                                </td>
                                                <td style="border:0;padding: 0 0 0 0;"><button type="button"
                                                                                               class="btn btn-danger btn-block">Clear
                                                        filter</button>
                                                    <button type="button" class="btn btn-primary btn-block">Hide
                                                        &gt;&gt;</button>
                                                </td>
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
                                                    <td>0</td>
                                                    <td>${o.dateCustomerCreate}</td>
                                                    <td>${o.dateUpdateCustomer}</td>
                                                    <td>
                                                        <div style="margin: auto; text-align:center">
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#detail_debt">
                                                                Details
                                                            </button>
                                                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#new_debt"
                                                                    <i class="fa fa-plus"></i> Add Debit Note</button>
                                                            <button type="" data-toggle="modal" data-target="#add_debtor" title="Edit"
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

                                    <c:forEach begin="1" end="${endP}" var="i">
                                        <a href="Dashboard?index=${i}">${i}</a>
                                    </c:forEach>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="helper.jsp"></jsp:include>
<!--        <nav aria-label="Page navigation example">
            <ul class="pagination" >
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
            </ul>
        </nav>-->
    </body>
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

        $(function () {
            $("table").resizableColumns({
                store: window.store
            });
        });
    </script>

</html>