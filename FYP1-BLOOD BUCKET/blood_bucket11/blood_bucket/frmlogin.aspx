<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmlogin.aspx.cs" Inherits="blood_bucket.frmlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link rel="stylesheet" href="style/Navigation.css" />
    <link rel="stylesheet" href="style/Login.css" />
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
    <div class="home-header">
        <h1 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;  margin-top:5px; text-align:center;">LOGIN PAGE</h1>
        <a href="/frmAdmin.aspx" class="btn-light">
                    <i class="fas" ></i>Sign In as an ADMIN
        </a>
        <div id="login-box">
            <br /><br />
        Login Id :
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="15"></asp:TextBox><br /><br />
        Login Password :
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><br /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="DarkGray" OnClick="LinkButton1_Click1">New Member? Click over here!</asp:LinkButton><br />
            <div class="btnRegister">
        <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Login" BackColor="DimGray" ForeColor="DarkRed" Font-Size="Medium" BorderColor="DimGray" Height="35px" Width="90px" /><br /></div>
        <asp:Label ID="lblmessage" runat="server" ForeColor="YellowGreen"></asp:Label>
        </div>  
        </div>
</asp:Content>

