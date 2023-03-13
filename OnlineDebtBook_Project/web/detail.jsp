<%-- 
    Document   : detail
    Created on : Mar 12, 2023, 8:25:22 AM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <title>Debt Detail</title>
    </head>


    <body>

        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card-group">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="float-left">
                                            <h3 class="mb-0">Debtor Detail</h3>
                                        </div>
                                        <div class="float-right">
                                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#new_debt" name="AddNewDebtPlus">
                                                <i class="fa fa-plus"></i></button>
                                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#new_debt" name="AddNewDebtMinus">
                                                <i class="fa fa-minus"></i></button>
                                        </div>
                                    </div>
                                    <div class="card-body" id="detail_debt" >
                                        <div class="table">
                                            <table class="table table-bordered table-sm" data-resizable-columns-id="demo-table-v2">
                                                <thead>
                                                    <tr>
                                                        <th data-resizable-column-id="id" scope="col">ID</th>
                                                        <th data-resizable-column-id="Note"scope="col">Note</th>
                                                        <th data-resizable-column-id="Classify" scope="col" style="position: relative; width: 81.225px;">Classify</th>
                                                        <th data-resizable-column-id="Total" scope="col" style="position: relative; width: 171.225px;">Total</th>
                                                        <th data-resizable-column-id="StartDate" scope="col" style="position: relative; width: 184.225px;">Start Date</th>
                                                        <th data-resizable-column-id="TimeStart" scope="col" style="position: relative; width: 172.225px;">Time start</th>
                                                        <th data-resizable-column-id="Action" scope="col" style="position: relative; width: 212.25px;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="o" items="${listDetail}">
                                                        <tr style="color:  ${o.classify ? "green" : "red"}">
                                                            <td scope="row">${o.transactionID}</td>
                                                            <td>${o.note}</td>
                                                            <td>${o.classify ? "+" : "-"}</td>
                                                            <td>${o.moneyDebt}</td>
                                                            <td>${o.dateDebt}</td>
                                                            <td>${o.dateCreate}</td>
                                                            <td>
                                                                <div style="margin: auto;text-align: center;">
                                                                    <button type="button" class="btn btn-primary"
                                                                            data-toggle="modal" data-target="#debtSettlement" name="Details_Btn">Details
                                                                    </button>
                                                                    <button type="button" title="plus"
                                                                            class="btn btn-success ${o.classify ? "disabled" : ""}" ${o.classify ? "disabled" : ""} data-toggle="modal" data-target="#debtSettlement" name="btn_detail"><em class="fa fa-plus"></em></button>
                                                                    <button type="button" title="minus"
                                                                            class="btn btn-danger ${o.classify ? "" : "disabled"}"  ${o.classify ? "" : "disabled"} data-toggle="modal" data-target="#debtSettlement" name="btn_detail"><em class="fa fa-minus"></em></button>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="window.history.go(-1);" >Back</button>
                </div>
            </div>
        </div>

        <div class="modal fade" id="debtSettlement" tabindex="-1" role="dialog" aria-labelledby="debtSettlement"
             aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card-group">
                                    <div class="card">
                                        <div class="card-header">
                                            <div class="pull-left">
                                                <h3 class="mb-0">Detail Settlement</h3>
                                            </div>
                                            <div class="pull-right"></div>
                                        </div>
                                        <div class="card-body">
                                            <form role="form" action="Debt" method="post" id="SettlementDebtForm">
                                                <input style="display:none" id="SettlementDebtByCustomerId" name="customerId"/>
                                                <div autocomplete="off">
                                                    <div class="position-relative row form-group">
                                                        <div class="form-label-horizontal col-md-3"><label class=""><b>Note(*)
                                                                </b></label></div>
                                                        <div class="col-md-9"><textarea rows="8" placeholder="Note"
                                                                                        class="form-control" name="note" id="noteSettlement"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="position-relative row form-group">
                                                        <div class="form-label-horizontal col-md-3">
                                                            <label class="">
                                                                <b>Classify(*)</b>
                                                            </label>
                                                        </div>
                                                        <div class="col-md-9" id="classifyModeDetail">
                                                        </div>
                                                    </div>
                                                    <div class="position-relative row form-group">
                                                        <div class="form-label-horizontal col-md-3">
                                                            <label class="">
                                                                <b>Amount(*)</b>
                                                            </label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input placeholder="Input number" type="text" class="form-control" name="amount" id="numberInput1" value="0" onkeypress="return validateNumberInput(event)">
                                                            <div id="numberText1"></div>
                                                        </div>
                                                    </div>
                                                    <div class="position-relative row form-group">
                                                        <div class="form-label-horizontal col-md-3"><label class=""><b>Start Date</b></label></div>
                                                        <div class="col-md-9">
                                                            <div>
                                                                <div class="react-datepicker-wrapper">
                                                                    <div class="react-datepicker__input-container"><input
                                                                            type="text" placeholder=""
                                                                            class="form-control full-width" id="datetimepicker1" value="" name="startDate"></div>
                                                                </div> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div style="display: flex; justify-content: center; align-items: center;">
                                                        <button type="submit" class="mr-1 btn btn-success" id="SettlementBtn" onclick="confirm('Are you sure to make a new debt note')">Settlement</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal" id="closeSettlement">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="helper.jsp"></jsp:include>
    </body>
    <script src="js/detail.js"></script>
</html>
