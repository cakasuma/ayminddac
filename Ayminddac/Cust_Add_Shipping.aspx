<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Cust_Add_Shipping.aspx.cs" Inherits="Ayminddac.Cust_Add_Shipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="main">
        <div class="breadcrumb-wrapper">
            <div class="pattern-overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                            <h2 class="title">Add Shipping</h2>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                            <div class="breadcrumbs pull-right">
                                <ul>
                                    <li>You are Now on:</li>
                                    <li>Add Shipping</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content -->
        <div class="content margin-top60 margin-bottom60">
            <div class="container">
                <div class="row">
                    <!-- Content -->
                    <div class="content col-sm-12 col-md-12">
                        <!-- check out steps -->
                        <ul id="checkoutsteps" class="clearfix panel-group">

                            <!-- Panel 2 -->
                            <li class="panel">
                                <a href="#" class="collapsed step-title">

                                    <h6>Add new Shipping</h6>
                                </a>
                                <div id="step-1">
                                    <div class="step-content">
                                        <form class="row no-margin">
                                            <div class="col-sm-6 col-md-6">
                                                <label for="mondayTime">Departure Port</label>
                                                <select name="depport" onchange="checkcost();checkduration();" id="depport" class="form-control" required>
                                                    <option></option>
                                                    <%
                                                        foreach (var pair in allports)
                                                        {
                                                    %>
                                                    <option value="<%=pair.Key %>,<%=pair.Value %>"><%=pair.Key %></option>
                                                    <%} %>
                                                </select>
                                            </div>
                                            <div class="col-sm-6 col-md-6">
                                                <label for="thrusdayTime">Arrival Port</label>
                                                <select name="arrport" onchange="checkcost();checkduration();" id="arrport" class="form-control" required>
                                                    <option></option>
                                                    <%
                                                        foreach (var pair in allports)
                                                        {
                                                    %>
                                                    <option value="<%=pair.Key %>,<%=pair.Value %>"><%=pair.Key %></option>
                                                    <%} %>
                                                </select>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-sm-6 col-md-6">
                                                <label for="tuesdayTime">Shipment Date</label>
                                                <input type="date" name="date" class="form-control" id="tuesdayTime" required>
                                            </div>
                                            <div class="col-sm-6 col-md-6">
                                                <label for="fridayTime">Shipment Weight KG</label>
                                                <input type="number" onchange="checkcost();" class="form-control" id="weight" name="weight" required>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-sm-6 col-md-6">
                                                <label for="sundayTime">Shipment Details </label>
                                                <textarea name="details" class="form-control" required></textarea>
                                            </div>
                                            <div class="col-sm-6 col-md-6">
                                                <label for="saturdayTime">Estimate Duration</label>
                                                <input type="text" class="form-control" id="duration" name="duration" required readonly>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-sm-6 col-md-6">
                                                <label for="wednesdayTime">Estimate Cost</label>
                                                <input type="text" class="form-control" id="cost" name="cost" required readonly>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-sm-12 buttons-box text-right">
                                                <button type="button" class="btn btn-color">Add</button>
                                                <span class="required"><b>*</b> All Fields Required</span>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </li>
                            <!-- /Panel 2 -->

                            <!-- /Panel 6 -->
                        </ul>
                        <!-- /check out steps -->
                    </div>
                    <!-- /content -->
                    <!-- sidebar -->

                    <!-- /sidebar -->
                </div>
            </div>
        </div>
        <!-- /Main Content -->
    </section>
</asp:Content>
