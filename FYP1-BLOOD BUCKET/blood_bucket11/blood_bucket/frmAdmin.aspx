<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmAdmin.aspx.cs" Inherits="blood_bucket.frmAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="style/Navigation.css" />
    <style>
.home-header {
    background-color: dimgray;
    padding-top:70px;
    margin-top:60px;
    height:500px;
    width:100%;
}
.adlog{
            text-align:center;
            margin-left:350px;;
        }
    </style>
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
        <h1 style="text-align:center; color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Admin Panel</h1>
    <br /><br /><br />
        <div class="adlog">
        <asp:Login ID="Login1" runat="server" BackColor="darkred"  BorderColor="darkred" BorderPadding="18" BorderStyle="Solid" BorderWidth="24px" Font-Names="Segoe UI', Tahoma, Geneva, Verdana, sans-serif" Font-Size="2.8em" ForeColor="white" OnAuthenticate="Login1_Authenticate" TextLayout="TextOnTop">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle  BackColor="darkred" CssClass="adlog" BorderColor="black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Segoe UI', Tahoma, Geneva, Verdana, sans-serif" Font-Size="1.1em" ForeColor="white" />
            <TextBoxStyle Font-Size="1.2em" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        </asp:Login>
    </div>
</div>
</asp:Content>
