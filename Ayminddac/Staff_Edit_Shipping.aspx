<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Staff_Edit_Shipping.aspx.cs" Inherits="Ayminddac.Staff_Edit_Shipping" %>

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
                            <h2 class="title">Edit Shipping</h2>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                            <div class="breadcrumbs pull-right">
                                <ul>
                                    <li>You are Now on:</li>
                                    <li>Edit Shipping</li>
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

                                    <h6>Edit current Shipping</h6>
                                </a>
                                <div id="step-1">
                                    <div class="step-content">
                                        <form class="row no-margin" method="post" action="Staff_Edit_Shipping.aspx?add=true&edit=<%=sdr["ShID"] %>&curport=<%=currentportid %>&shipdepport=<%=sdr["Dep_PID"] %>">
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
                                                <label for="wednesdayTime">Approval</label>
                                                <%if (sdr["Status"].ToString() == "Pending" || sdr["Status"].ToString() == "Arriving")
                                                    { %>
                                                <select name="approval" class="form-control" required>
                                                    <option></option>
                                                    <%if (shipdepid == currentportid)
                                                        { %>
                                                    <%if (sdr["Status"].ToString() == "Pending")
                                                        { %>
                                                    <option value="Approved">Approved</option>
                                                    <option value="Declined">Declined</option>
                                                    <%} %>
                                                    <%if (sdr["Status"].ToString() == "Arriving")
                                                        { %>
                                                    <option disabled>arriving</option>
                                                    <%} %>
                                                    <%}
                                                        else
                                                        { %>
                                                    <%if (sdr["Status"].ToString() == "Arriving")
                                                        { %>
                                                    <option value="Received">Received</option>
                                                    <%} %>
                                                    <%if (sdr["Status"].ToString() == "Pending")
                                                        { %>
                                                    <option disabled>Waiting for departure approval</option>
                                                    <%} %>
                                                    <%} %>
                                                </select>
                                                <%}
                                                    else
                                                    { %>
                                                <%if (sdr["Status"].ToString() == "Approved")
                                                    { %>
                                                <input type="text" class="form-control" value="Wait for Container Assignation" disabled />
                                                <%} %>
                                                <%if (sdr["Status"].ToString() == "Declined")
                                                    { %>
                                                <input type="text" class="form-control" value="Shipment Declined" disabled />
                                                <%if (sdr["Status"].ToString() == "Received")
                                                    { %>
                                                <input type="text" class="form-control" value="Shipment already delivered" disabled />
                                                <%} %>
                                                <%} %>
                                                <%} %>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-sm-6 col-md-6">
                                                <label for="wednesdayTime">Container</label>
                                                <%if (shipdepid == currentportid)
                                                    { %>
                                                <%if (sdr["Status"].ToString() == "Approved" || sdr["Status"].ToString() == "Declined")
                                                    { %>
                                                <select name="conid" class="form-control" required>
                                                    <option></option>
                                                    <%
                                                        foreach (var pair in allcontainers)
                                                        {
                                                    %>
                                                    <option value="<%=pair.Key %>"><%=pair.Value %></option>
                                                    <%} %>
                                                </select>
                                                <%}
                                                    else
                                                    { %>
                                                <%if (sdr["Status"].ToString() == "Arriving" || sdr["Status"].ToString() == "Received")
                                                    { %>
                                                <input type="text" class="form-control" value="<%=sdr["Container_ID"] %>" name="conid" required readonly>
                                                <%}
                                                    else
                                                    { %>
                                                <input type="text" class="form-control" value="waiting for approval" disabled>
                                                <%} %>
                                                <%} %>
                                                <%}
                                                    else
                                                    { %>
                                                <input type="text" class="form-control" value="<%=sdr["Container_ID"] %>" name="conid" required readonly>
                                                <%} %>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-sm-12 buttons-box text-right">
                                                <button type="submit" class="btn btn-color">Edit</button>

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
    <%} %>
</asp:Content>
