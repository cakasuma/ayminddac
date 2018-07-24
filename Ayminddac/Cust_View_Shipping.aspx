<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Cust_View_Shipping.aspx.cs" Inherits="Ayminddac.Cust_View_Shipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%while (sdr.Read())
        { %>
    <section id="main">
        <div class="breadcrumb-wrapper">
            <div class="pattern-overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                            <h2 class="title">View Shipping</h2>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                            <div class="breadcrumbs pull-right">
                                <ul>
                                    <li>You are Now on:</li>
                                    <li>View Shipping</li>
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

                                    <h6>View current Shipping</h6>
                                </a>
                                <div id="step-1">
                                    <div class="step-content">

                                        <div class="col-sm-6 col-md-6">
                                            <label for="mondayTime">Departure Port</label>
                                            <input type="text" class="form-control" value="<%=sdr["depport"] %>" name="depport" required readonly>
                                        </div>
                                        <div class="col-sm-6 col-md-6">
                                            <label for="thrusdayTime">Arrival Port</label>
                                            <input type="text" class="form-control" value="<%=sdr["arrport"] %>" name="arrport" required readonly>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-sm-6 col-md-6">
                                            <label for="tuesdayTime">Shipment Date</label>
                                            <input type="date" name="date" value="<%=sdr["Date_Shipping"] %>" class="form-control" id="tuesdayTime" required readonly>
                                        </div>
                                        <div class="col-sm-6 col-md-6">
                                            <label for="fridayTime">Shipment Weight KG</label>
                                            <input type="number" onchange="checkcost();" value="<%=sdr["Weight"] %>" class="form-control" id="weight" name="weight" required readonly>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-sm-6 col-md-6">
                                            <label for="sundayTime">Shipment Details </label>
                                            <textarea name="details" class="form-control" required readonly><%=sdr["Details"] %></textarea>
                                        </div>
                                        <div class="col-sm-6 col-md-6">
                                            <label for="saturdayTime">Estimate Duration</label>
                                            <input type="text" class="form-control" id="duration" value="<%=sdr["Duration"] %>" name="duration" required readonly>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-sm-6 col-md-6">
                                            <label for="wednesdayTime">Estimate Cost</label>
                                            <input type="text" class="form-control" value="<%=sdr["Cost"] %>" id="cost" name="cost" required readonly>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-sm-6 col-md-6">
                                            <label for="wednesdayTime">Status</label>
                                            <input type="text" class="form-control" value="<%=sdr["Status"] %>" name="status" required readonly>
                                        </div>

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
    <%} %>
</asp:Content>
