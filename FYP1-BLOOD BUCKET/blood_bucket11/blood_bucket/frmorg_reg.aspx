<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmorg_reg.aspx.cs" Inherits="blood_bucket.frmorg_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="style/OrgReg.css" />

    <div class="home-header">
        <div id="header" style="top:0; height: 25px; width: 100%; background-color: darkred; position:fixed;"></div>
        <br />
    <h1 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-align:center;">ORGANIZATION REGISTRATION</h1>
    <div id="labels">
        <br />
    <asp:Label ID="Label1" runat="server" ForeColor="YellowGreen"></asp:Label>
    <asp:Label ID="Label2" runat="server" ForeColor="YellowGreen"></asp:Label></div>
    <div id="login-box">
        <div class="left-box">
            Name :
        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="100%" placeholder="Ali, etc"></asp:TextBox>
             Username :
        <asp:TextBox ID="TextBox6" runat="server" MaxLength="15" Height="35px" placeholder="abc123" Width="100%"></asp:TextBox>
        User Password :
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Height="35px" Width="100%"></asp:TextBox>
            Branch :
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Karachi, etc" Height="35px" Width="100%"></asp:TextBox>
            Province :<br />
        <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Sindh</asp:ListItem>
            <asp:ListItem>Punjab</asp:ListItem>
            <asp:ListItem>Balochistan</asp:ListItem>
            <asp:ListItem>KPK</asp:ListItem>
            <asp:ListItem>Kashmir</asp:ListItem>
        </asp:DropDownList><br /><br />
        </div>
        <div class="right-box">
            Email 
        <asp:TextBox ID="TextBox3" runat="server" placeholder="abc@gmail.com" TextMode="Email" Height="35px" Width="100%"></asp:TextBox><br />
          <br />  Phone :
        <asp:TextBox ID="TextBox4" runat="server" placeholder="03xxxxxxxxx" TextMode="Phone" Height="35px" Width="100%"></asp:TextBox><br />
         <br />   Country :<br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="100%">
        </asp:DropDownList><br /><br />
            City :<br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Karachi</asp:ListItem>
            <asp:ListItem>Lahore</asp:ListItem>
            <asp:ListItem>Islamabad</asp:ListItem>
            <asp:ListItem>Quetta</asp:ListItem>
            <asp:ListItem>Peshawar</asp:ListItem>
        </asp:DropDownList><br /><br />
            Address :
        <asp:TextBox ID="TextBox5" runat="server" Height="35px" Width="100%" placeholder="Streetno, etc"></asp:TextBox>
        </div>
        </div>
    <div class="btnRegister">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" />
    </div>  
       </div>
</asp:Content>

