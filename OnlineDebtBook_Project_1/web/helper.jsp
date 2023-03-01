<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="detail_debt" tabindex="-1"
     role="dialog" aria-labelledby="detail_debt"
     aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-group">
                            <div class="card">
                                <div class="card-header">
                                    <div class="float-left">
                                        <h3 class="mb-0">Debtor Name
                                        </h3>
                                        <p
                                            class="small text-muted m-0">
                                            Total: 0
                                            Record(s)</p>
                                    </div>
                                    <div class="float-right"><button
                                            type="button"
                                            data-toggle="modal" 
                                            data-target="#new_debt"
                                            title="add new debt"
                                            class="mr-1 btn btn-primary"
                                            style="border-radius: 20px; background-color: #2374e1;"><i
                                                class="fa fa-plus"></i>
                                            Add New Debt</button>
                                    </div>
                                </div>
                                <div class="card-body" id="detail_debt" >
                                    <div class="table">
                                        <table class="table mb-0">
                                            <thead>
                                                <tr>
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Note</th>
                                                    <th scope="col">Classify</th>
                                                    <th scope="col">Total</th>
                                                    <th scope="col">Start Date</th>
                                                    <th scope="col">Time start</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                                <tr>
                                                    <th scope="col" style="width: 200px;height: 20px;padding: 0;padding-bottom: 15px;">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div>
                                                                    <input type="text" placeholder="From" class="form-control"
                                                                           value="">
                                                                </div>
                                                            </div>
                                                            <div class="col-12">
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
                                                            <div class="col-12">
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
                                                                    <input type="text" placeholder="From"
                                                                           class="form-control full-width" value="">
                                                                </div>
                                                            </div>
                                                            <div class="col-12">
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
                                                <tr>
                                                    <th scope="row" style="color: #666666;">1</th>
                                                    <td>Own</td>
                                                    <td>+</td>
                                                    <td>10000</td>
                                                    <td>31/12/2022</td>
                                                    <td>01/01/2023</td>
                                                    <td>
                                                        <div style="margin: auto;text-align: center;">
                                                            <button type="button" class="btn btn-primary"
                                                                    data-toggle="modal" data-target="#new_debt">Details
                                                            </button>
                                                            <button type="button" title="plus"
                                                                    class="btn btn-success" data-toggle="modal" data-target="#new_debt"><em class="fa fa-plus"></em></button>
                                                            <button type="button" title="minus"
                                                                    class="btn btn-danger" data-toggle="modal" data-target="#new_debt"><em class="fa fa-minus"></em></button>
                                                        </div>
                                                    </td>
                                                </tr>
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
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div> 

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
                                        <h3 class="mb-0">Detail Own</h3>
                                    </div>
                                    <div class="pull-right"></div>
                                </div>
                                <div class="card-body">
                                    <div autocomplete="off">
                                        <div class="position-relative row form-group">
                                            <div class="form-label-horizontal col-md-3"><label class=""><b>Note
                                                    </b></label></div>
                                            <div class="col-md-9"><textarea rows="8" placeholder=""
                                                                            class="form-control">Payment for debit note number 1</textarea>
                                            </div>
                                        </div>
                                        <div class="position-relative row form-group">
                                            <div class="form-label-horizontal col-md-3"><label class=""><b>Classify
                                                        (*)</b></label></div>
                                            <div class="col-md-9"><button type="button" class="btn btn-secondary"
                                                                          style="width: 49%; margin-right: 5px; margin-bottom: 5px;">-</button><button
                                                                          type="button" class="btn btn-primary"
                                                                          style="width: 49%; margin-right: 5px; margin-bottom: 5px;">+</button>
                                            </div>
                                        </div>
                                        <div class="position-relative row form-group">
                                            <div class="form-label-horizontal col-md-3"><label class=""><b>Amount
                                                        (*)</b></label></div>
                                            <div class="col-md-9"><input placeholder="Input number" type="text"
                                                                         class="form-control" value="0">
                                                <div class="">Nah</div>
                                            </div>
                                        </div>
                                        <div class="position-relative row form-group">
                                            <div class="form-label-horizontal col-md-3"><label class=""><b>Start Date </b></label></div>
                                            <div class="col-md-9">
                                                <div>
                                                    <div class="react-datepicker-wrapper">
                                                        <div class="react-datepicker__input-container"><input
                                                                type="text" placeholder="DD/MM/YYYY HH:mm"
                                                                class="form-control full-width" value=""></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="position-relative row form-group">
                                            <div class="form-label-horizontal col-md-3"><label class=""><b>ID photo</b></label></div>
                                            <div class="col-md-9">
                                                <div><button type="button" class="btn btn-primary"><i
                                                            class="fa fa-plus"></i> Add a photo</button></div>
                                            </div>
                                        </div>
                                        <div style="display: flex; justify-content: center; align-items: center;">
                                            <button type="button" class="mr-1 btn btn-success"><i
                                                    class="fa fa-plus"></i> Add</button></div>
                                    </div>
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
                                                    <input placeholder="" type="text" class="form-control" value="" name="debtorName">
                                                    <div>${mess}</div>
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
                                                    <input disabled="" placeholder="Input number" type="text" class="form-control"value="0">
                                                    <div class="">Nah</div>
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


