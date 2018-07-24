<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Staff_Home.aspx.cs" Inherits="Ayminddac.Staff_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section id="main">
        <!-- Title, Breadcrumb -->
        <div class="breadcrumb-wrapper">
            <div class="pattern-overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                            <h2 class="title">Shipment in your port</h2>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                            <div class="breadcrumbs pull-right">
                                <ul>
                                    <li>You are Now on:</li>
                                    <li>Staff Home</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Title, Breadcrumb -->
        <!-- Main Content -->
        <div class="content margin-top60 margin-bottom60">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="table-box">
                            <!-- shopping-cart-table -->
                            <table class="shopping-cart-table responsive-table table table-bordered table-striped" id="shopping-cart-table">
                                <thead>
                                    <tr>
                                        <th>Shipping Id</th>
                                        <th>Departure Port</th>
                                        <th>Arrival Port</th>
                                        <th>Request Date</th>
                                        <th>Status</th>
                                        <th>Control</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        while (sdr.Read())
                                        {
                                    %>
                                    <tr class="rowItem">
                                        <td><%=sdr["ShID"] %></td>
                                        <td><%=sdr["depport"] %></td>
                                        <td><%=sdr["arrport"] %></td>
                                        <td><%=sdr["Date_Shipping"] %></td>
                                        <td><span class="label label-warning"><%=sdr["Status"] %></span></td>

                                        <td><a class="btn-submit" href="Staff_Edit_Shipping.aspx?edit=<%=sdr["ShID"] %>&curport=<%=currentportid %>&shipdepport=<%=sdr["Dep_PID"] %>">Edit</a></td>
                                    </tr>
                                    <%} %>
                                </tbody>
                            </table>
                            <!-- /shopping-cart-table -->
                        </div>
                        
                    </div>
                </div>
                
            </div>
        </div>
        <!-- /Main Content -->
    </section>
</asp:Content>
