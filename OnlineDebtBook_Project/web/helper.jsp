<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="modal fade" id="new_debt" tabindex="-1" role="dialog" aria-labelledby="new_debt"
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
                                        <h3 class="mb-0">Detail Note</h3>
                                    </div>
                                    <div class="pull-right"></div>
                                </div>
                                <div class="card-body">
                                    <form role="form" action="Debt" method="post" id="addNewDebtForm">
                                        <input style="display:none" id="addNewDebtFormCustomerId"  name="customerId"/>
                                        <div autocomplete="off">
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Note(*)
                                                        </b></label></div>
                                                <div class="col-md-9"><textarea rows="8" placeholder="Note"
                                                                                class="form-control" name="note" value=""></textarea>
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3">
                                                    <label class="">
                                                        <b>Classify(*)</b>
                                                    </label>
                                                </div>
                                                <div class="col-md-9" id="classifyMode">
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3">
                                                    <label class="">
                                                        <b>Amount(*)</b>
                                                    </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <input placeholder="Input number" type="text" class="form-control" name="amount" id="numberInput" value="0" onkeypress="return validateNumberInput(event)" required>
                                                    <div id="numberText">zero</div>
                                                </div>

                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Start Date</b></label></div>
                                                <div class="col-md-9">
                                                    <div>
                                                        <div class="react-datepicker-wrapper">
                                                            <div class="react-datepicker__input-container"><input
                                                                    type="text" placeholder=""
                                                                    class="form-control full-width" id="datetimepicker" value="" name="startDate"></div>
                                                        </div> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <button type="submit" class="mr-1 btn btn-success" onclick="confirm('Are you sure to make a new debt note')"><i class="fa fa-plus"></i>Add New Note</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal" id="closeAddNewDebt">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="add_debtor" tabindex="-1" role="dialog" aria-labelledby="add_debtor"
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
                                        <h3 class="mb-0">Add New Debtor</h3>
                                    </div>
                                    <div class="pull-right"></div>
                                </div>
                                <div class="card-body">
                                    <form role="form" action="debtor" method="post">
                                        <div autocomplete="off">
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Name (*)</b></label></div>
                                                <div class="col-md-9">
                                                    <input placeholder="" type="text" class="form-control" value="" required name="debtorName">
                                                    <div></div>
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Address </b></label></div>
                                                <div class="col-md-9">
                                                    <textarea rows="8" placeholder="" class="form-control" name="debtorAddress"></textarea>
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Phone Number </b></label></div>
                                                <div class="col-md-9">
                                                    <input placeholder="" type="text" class="form-control" value="" name="debtorPhone">
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Email </b></label></div>
                                                <div class="col-md-9">
                                                    <input placeholder="" type="text" class="form-control" value="" name="debtorEmail">
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Total debt </b></label></div>
                                                <div class="col-md-9">
                                                    <input disabled="" placeholder="Input number" type="text" class="form-control" value="">
                                                    <div class="">Zero</div> 
                                                </div>
                                            </div>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <button type="submit" class="mr-1 btn btn-success"><i class="fa fa-plus"></i>Add new Debtor</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="edit_debtor" tabindex="-1" role="dialog" aria-labelledby="edit_debtor"
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
                                        <h3 class="mb-0">Debtor Details</h3>
                                    </div>
                                    <div class="pull-right"></div>
                                </div>
                                <div class="card-body">
                                    <form role="form" action="DetailDebtor" method="post">
                                        <input style="display:none" id="EditDebtorFormCustomerId" name="customerId"/>
                                        <div autocomplete="off">
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Name (*)</b></label></div>
                                                <div class="col-md-9">
                                                    <input placeholder="" type="text" class="form-control" value="" name="debtorName">
                                                    <div></div>
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Address </b></label></div>
                                                <div class="col-md-9">
                                                    <textarea rows="8" placeholder="" class="form-control" name="debtorAddress"></textarea>
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Phone Number </b></label></div>
                                                <div class="col-md-9">
                                                    <input placeholder="" type="text" class="form-control" value="" name="debtorPhone">
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Email </b></label></div>
                                                <div class="col-md-9">
                                                    <input placeholder="" type="text" class="form-control" value="" name="debtorEmail">
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <div class="form-label-horizontal col-md-3"><label class=""><b>Total debt </b></label></div>
                                                <div class="col-md-9">
                                                    <input disabled="" placeholder="Input number" type="text" class="form-control" value="" id="editDebtorTotalDebt">
                                                    <div class=""></div>
                                                </div>
                                            </div>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <button type="submit" class="mr-1 btn btn-success"><i class="fa fa-pencil"></i> Edit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


