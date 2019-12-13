<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmpat_reg.aspx.cs" Inherits="blood_bucket.frmpat_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="style/PatReg.css" />
    <link rel="stylesheet" href="style/intlTelInput.css">
    
    <div class="home-header">
        <div id="header" style="top:0; height: 25px; width: 100%; background-color: darkred; position:fixed;"></div>
        <br />
    <h1 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-align:center;">PATIENT REGISTRATION</h1>
    <div id="labels">
         <br />
        <asp:Label ID="Label1" runat="server" ForeColor="YellowGreen"></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="YellowGreen"></asp:Label>
    </div>
    <div id="login-box">
        <div class="left-box">
            MR No# :
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="10" Height="35px" Width="100%" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            Username :
        <asp:TextBox ID="TextBox8" runat="server" MaxLength="15" Height="35px" Width="100%" placeholder="abc123"></asp:TextBox>
            Password:
        <asp:TextBox ID="TextBox9" runat="server" TextMode="Password" Height="35px" Width="100%"></asp:TextBox>
            CNIC :
        <asp:TextBox ID="TextBox5" runat="server" placeholder="42101xxxxxxxx" MaxLength="13" Height="35px" Width="100%"></asp:TextBox>
            City :<br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="100%">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Karachi</asp:ListItem>
            <asp:ListItem>Islamabad</asp:ListItem>
            <asp:ListItem>Lahore</asp:ListItem>
            <asp:ListItem>Peshawar</asp:ListItem>
            <asp:ListItem>Quetta</asp:ListItem>
        </asp:DropDownList><br /><br />
            Hospital :
        <asp:TextBox ID="TextBox6" runat="server" Height="35px" Width="100%" placeholder="Hospital Name"></asp:TextBox>
            Patient Type :<br />
        <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="100%">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Regular</asp:ListItem>
            <asp:ListItem>Irregular</asp:ListItem>
        </asp:DropDownList><br /><br />
        </div>
        <div class="right-box">
             Name 
        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="100%" placeholder="Ali, etc"></asp:TextBox>
            Phone :
        <asp:TextBox ID="TextBox4" runat="server" placeholder="03xxxxxxxxx" MaxLength="11" TextMode="Phone"  Height="35px" Width="100%"></asp:TextBox><br />
            Country :<br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="100%">
        </asp:DropDownList><br /><br />
            Hospital Branch :
        <asp:TextBox ID="TextBox7" runat="server" placeholder="Karachi, etc" Height="35px" Width="100%"></asp:TextBox>
            Attendee Name :
        <asp:TextBox ID="TextBox10" runat="server" Height="35px" Width="100%"></asp:TextBox>
        Address :
        <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="100%" placeholder="Street no, etc"></asp:TextBox>
        </div>
        </div>
    <div class="btnRegister">
        <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
        <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click" />
        </div>
        </div>
</asp:Content>
