
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
        <link rel="stylesheet" href="css/admin.css"/>

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
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="shortcut icon" href="./img/ODB_ Online_Debt_Book.png" type="image/x-icon">
    </head>
    <style>
        .negativeTotal {
            background-color: red;
        }
    </style>
    <title>Debtors List</title>
</head>

<body>
    <jsp:include page="./header.jsp" />
    <c:if test="${sessionScope.user2.isAdmin==false}">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="main">
                        <div class="card">
                            <div class="card-header">
                                <div class="float-left">
                                    <h3 class="mb-0">Debtors list ${mess}</h3>
                                    <p class="small text-muted m-0">Total: ${record} Record(s)</p>
                                </div>
                                <div class="float-right">
                                    <a type="button" href="ListCustomer?operater=true" title="List Owner"
                                       class="mr-1 btn btn-primary" style="border-radius: 20px;">List Owner</a>
                                </div>
                                <div class="float-right">
                                    <a type="button" href="ListCustomer?operater=false" title="List Owner"
                                       class="mr-1 btn btn-primary" style="border-radius: 20px;">List Debtor</a>
                                </div>
                                <div class="float-right"><button type="button" data-toggle="modal" data-target="#add_debtor" title="Add new Debtor"
                                                                 class="mr-1 btn btn-primary" style="border-radius: 20px;"><i class="fa fa-plus"></i>
                                        Add new Debtors</button>
                                </div>
                            </div>
                            <form action="Search" method="post">
                                <div class="input-group">
                                    <div class="form-outline">
                                        <input type="search" name="customerName" value="${customerName}"  placeholder="Search" class="form-control" style="border-radius: 15px;margin-top: 10px;margin-left: 20px">

                                    </div>
                                    <button type="submit" class="btn btn-secondary" style="border-radius: 15px;margin-top: 10px;margin-left:30px">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div> 
                            </form>
                            <div class="card-body">
                                <div class="table-responsive" style="text-align: center;">
                                    <table class="table table-bordered table-sm" data-resizable-columns-id="demo-table-v2">
                                        <thead>
                                            <tr id="ta"  style="background-color: white;color:black;">
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

                                        </thead>
                                        <tbody >
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
                                    <div id="pagination" class="pagination-responsive d-flex justify-content-center" style="justify-content: center">
                                        <ul class="pagination justify-content-end" style="justify-items:  center" >
                                            <c:if test="${indexPage > 1 }">
                                                <li class="page-item "><a class="page-link" href="${pageDirect ? "Dashboard" : "ListCustomer"}?index=${indexPage-1}&operater=${operater}">Previous</a></li>
                                                </c:if>                                      
                                                <c:forEach begin="1" end="${endP}" var="i">   
                                                <li class="page-item ${indexPage == i?"active":"" }"><a class="page-link" href="${pageDirect ? "Dashboard" : "ListCustomer"}?index=${i}&operater=${operater}">${i}</a></li>                                   
                                                </c:forEach>
                                                <c:if test="${indexPage < endP}">
                                                <li class="page-item"><a class="page-link" href="${pageDirect ? "Dashboard" : "ListCustomer"}?index=${indexPage+1}&operater=${operater}">Next</a></li>
                                                </c:if>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:if>
    <c:if test="${sessionScope.user2.isAdmin==true}">
        <jsp:include page="./admin.jsp" />
    </c:if>

    <jsp:include page="helper.jsp"></jsp:include>
</body>
<script src="js/main.js"></script>
<script>
    const totalCell = document.querySelectorAll('tr td:nth-child(6)');
// Kiểm tra giá trị total
    totalCell.forEach(totalCell => {
        if (parseFloat(totalCell.innerText) < 0) {
            totalCell.parentNode.style.color = 'red';
        } else if (parseFloat(totalCell.innerText) == 0 || totalCell.innerText == 'Active' || totalCell.innerText == 'De Active') {
            totalCell.parentNode.style.color = 'black';
        } else {
            totalCell.parentNode.style.color = 'green';
        }
    });

function clickSubmitAddNewNote(e){
    e.preventDefault();
    confirm('lmaklmdsa');
}
</script>
</html>