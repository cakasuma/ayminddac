<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Ayminddac.Profile" %>

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
                            <h2 class="title">Profile</h2>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                            <div class="breadcrumbs pull-right">
                                <ul>
                                    <li>You are Now on:</li>
                                    <li>Profile</li>
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
                    <!-- Left Section -->
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="my-account margin-top">
                            <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <div class="title-box">
                                        <h3>Account Information</h3>
                                    </div>
                                    <ul class="list-unstyled">
                                        <li>
                                            <div class="form-group">
                                                <label for="fname">Name <span class="required">*</span></label>
                                                <input type="text" name="fname" id="fname" value="<%=sdr["Name"] %>" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="lname">Email <span class="required">*</span></label>
                                                <input type="text" name="lname" id="lname" value="<%=sdr["Email"] %>" class="form-control" readonly>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="form-group">
                                                <label for="emailAddress">User Role <span class="required">*</span></label>
                                                <input type="text" value="<%=sdr["UserRole"] %>" name="email" id="emailAddress" class="form-control" readonly>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <div class="title-box">
                                        <h3>Change Password</h3>
                                    </div>
                                    <ul class="list-unstyled">
                                        <li>
                                            <div class="form-group">
                                                <label for="cpassword">Company Name <span class="required">*</span></label>
                                                <input type="text" name="cpassword" value="<%=sdr["Company_Name"] %>" id="cpassword" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="npassword">Contact <span class="required">*</span></label>
                                                <input type="text" name="npassword" value="<%=sdr["Contact"] %>" id="npassword" class="form-control" readonly>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="form-group">
                                                <label for="cnewpassword">Person In Charge <span class="required">*</span></label>
                                                <input type="text" name="cnewpassword" value="<%=sdr["Per_I_C"] %>" id="cnewpassword" class="form-control" readonly>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Main Content -->
    </section>
    <%} %>
</asp:Content>
