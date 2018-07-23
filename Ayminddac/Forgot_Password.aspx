<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="Ayminddac.Forgot_Password" %>

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
                            <h2 class="title">Password Recovery</h2>
                        </div>
                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                            <div class="breadcrumbs pull-right">
                                <ul>
                                    <li>You are Now on:</li>
                                    <li>Password Recovery</li>
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
            <!-- container -->
            <div class="container">
                <div class="row">
                    <div class="content col-sm-12 col-md-12">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <!-- form-box -->
                                <form class="form-box login-form">
                                    <h3 class="title">Retrieve your password here</h3>
                                    <p>Please enter your email address below. You will receive a link to reset your password.</p>
                                    <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                                    <div class="buttons-box clearfix">
                                        <button class="btn btn-color">Submit</button>
                                        <a href="#" data-toggle="modal" data-target="#loginModal" class="btn btn-color btn-inverse"><i class="fa fa-sign-in"></i>Login</a>
                                        <span class="required pull-right"><b>*</b> Required Field</span>
                                    </div>
                                </form>
                                <!-- /form-box -->
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- /container -->
        </div>
        <!-- Main Content -->
    </section>

</asp:Content>
