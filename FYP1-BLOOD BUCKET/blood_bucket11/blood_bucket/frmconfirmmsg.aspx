<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmconfirmmsg.aspx.cs" Inherits="blood_bucket.frmconfirmmsg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="style/ConfMsg.css" />

    <div class="home-header">
        <div id="header"></div>
        <h1 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-align:center;">CONFIRMATION</h1>
        <br />
    <div id="login-box">
        <br /><br />
        <div id="labels">
        <asp:Label ID="lblmsg" runat="server" ForeColor="YellowGreen"></asp:Label></div>
        Re - Type User ID : *
        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="25%" placeholder="abc123, etc" required=""></asp:TextBox><br /><br />
        Re - Type User Password : *
        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="25%" TextMode="Password" required=""></asp:TextBox>
    </div>
    <div class="btnRegister">
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
       <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Exit" />
    </div>
        </div>
</asp:Content>
