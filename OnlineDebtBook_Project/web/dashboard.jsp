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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Moment.js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
        <script src="js/resizableColumns.min.js"></script>
        <!-- Bootstrap DateTimePicker -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/resizableColumns.min.js"></script>
        <link rel="stylesheet" href="css/dashboard.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/json2/20160511/json2.min.js"></script>
        <script src="js/numtowords.min.js" ></script>
        <!-- Import thư viện JSON -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/json2/20160511/json2.min.js"></script>
    </head>
    <style>
        .negativeTotal {
            background-color: red;
        }
    </style>
    <title>Debtors List</title>
</head>

<body>
    <header class="p-3 bg-dark text-white">
        <a href="Dashboard" class="btn btn-warning" style="border-radius: 15px;">Home</a>
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start" >


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
                                <table class="table table-bordered table-sm" data-resizable-columns-id="demo-table-v2">
                                    <thead>
                                        <tr style="background-color: white;color:black;">
                                            <th data-resizable-column-id="id" style="position: relative; width: 64.4375px" >ID</th>
                                            <th data-resizable-column-id="name">Name</th>
                                            <th data-resizable-column-id="address" >Address</th>
                                            <th data-resizable-column-id="phone" style="position: relative; width: 128.25px;">Phone</th>
                                            <th data-resizable-column-id="email" style="position: relative; width: 175.275px;">Email</th>
                                            <th data-resizable-column-id="total" style="position: relative; width: 109.25px;">Total</th>
                                            <th data-resizable-column-id="startDate" style="position: relative; width: 155.275px;">Start Date</th>
                                            <th data-resizable-column-id="update" style="position: relative; width: 199.325px;">Update</th>
                                            <th data-resizable-column-id="action" style="position: relative; width: 317.65px;">Action</th>
                                        </tr>
                                        <tr>
                                            <td class="thHead">
                                            </td>
                                            <td class="thHead">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div>
                                                            <form action="Search" method="post">
                                                                <input type="text" name="customerName" value="${customerName}" placeholder="" class="form-control"
                                                                       value="">
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="thHead">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div>
                                                            <form action="Search" method="post">
                                                                <input type="text" name="address" value="${address}" placeholder="" class="form-control"
                                                                       value="">
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="thHead">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div>
                                                            <input type="text" placeholder="" class="form-control"
                                                                   value="">
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="thHead">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div>
                                                            <input type="text" placeholder="" class="form-control"
                                                                   value="">
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="thHead">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div>
                                                            <input type="text" placeholder="" class="form-control"
                                                                   value="">
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="thHead">
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

                                            <td class="thHead">
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
                                                <td>${o.total}</td>
                                                <td>${o.dateCustomerCreate}</td>
                                                <td>${o.dateUpdateCustomer}</td>
                                                <td>
                                                    <div style="margin: auto; text-align:center">
                                                        <a href="DetailDebt?Customerid=${o.customerID}" class="btn btn-primary">
                                                            Details
                                                        </a>
                                                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#new_debt" name="AddNewDebtPlus">
                                                            <i class="fa fa-plus"></i></button>
                                                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#new_debt" name="AddNewDebtMinus">
                                                            <i class="fa fa-minus"></i></button>
                                                        <button type="" data-toggle="modal" data-target="#edit_debtor" title="Edit"
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
                                <!--                                <div class="pagination" style="display:flex;justify-content: space-between;align-items: stretch;" >
                                                                    <button type="button" class="float-left btn-pgn-bottom">Previous</button>
                                                                    <div class="center" id="center">
                                                                        <span class="pageInfo" style="display: flex;align-items: center">Page
                                                                            <div class="pageJump"><input type="number" value="1" id="pageNum" style="width: 57.2px;">
                                                                            </div> /
                                                                            <span class="totalPages" id="totalPages" style="padding-left:5%">3</span>
                                                                        </span>
                                                                    </div>
                                                                    <button type="button" class="float-right btn-pgn-bottom">Next</button>
                                                                </div>-->

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
</body>
<script src="js/main.js"></script>
<script>
    const totalCell = document.querySelectorAll('tr td:nth-child(6)');
// Kiểm tra giá trị total
    totalCell.forEach(totalCell => {
        if (parseFloat(totalCell.innerText) < 0) {
            totalCell.parentNode.style.color = 'red';
        } else {
             totalCell.parentNode.style.color = 'green';
        }
    });

</script>
</html>