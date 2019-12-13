<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmregistration.aspx.cs" Inherits="blood_bucket.frmregistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link rel="stylesheet" href="style/Navigation.css" />
    <link rel="stylesheet" href="style/Registration.css" />
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    
    <div class="navback">           
        <div class="custom-padding">
                         <div class="nav-back">
                          <nav class="navbar">
                            <div class="logo"></div>
                            <ul class="menu-area">
                              <li><a href="/frmhome.aspx">Home</a></li>
                              <li><a href="#explore-head-section">About</a></li>
                              <li><a href="#contact-head-section">Contact</a></li>
                              <li><a href="/frmlogin.aspx">Login</a></li>
                            </ul>
                          </nav>
                        </div>
                      </div>
            </div>  
    <br />
    <div class="home-header">
     <h1 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-align:left;">Registration as a,</h1><br />
    <div class="about-info">
          <div class="job job-1">
                <h3>Patient Registration</h3><br />
                <p>Those who wanted to register as a Patient,<br /> click below.</p><br /><br />
                <a href="/frmpat_reg.aspx" class="btn-light">
                    <i class="fas"></i>Register
                </a>  
          </div>
            <div class="job job-2">
                <h3>Hospital Registration</h3><br />
                <p>Those who wanted to register as a Hospital or Hospital Owner, click below.</p><br /><br />
                <a href="/frmhos_reg.aspx" class="btn-light">
                    <i class="fas"></i>Register
                </a>
            </div>
            <div class="job job-3">
                <h3>Organization Registration</h3><br />
                <p>Those who wanted to register as an Organization or Organization Owner, click below.</p><br /><br />
                <a href="/frmorg_reg.aspx" class="btn-light">
                    <i class="fas"></i>Register
                </a>
            </div>
            <div class="job job-4">
                <h3>Self Donor Registration</h3><br />
                <p>Those who wanted to register as a Self-Donor,<br /> click below.</p><br /><br />
                <a href="/frmselfdon_reg.aspx" class="btn-light">
                    <i class="fas"></i>Register
                </a>
            </div>
        </div><br /><br />
    <a href="/frmlogin.aspx" class="btnlight">
                    <i class="fas"></i>Already a member? Sign In
        </a>
        </div>
</asp:Content>
