<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmselfdon_reg.aspx.cs" Inherits="blood_bucket.frmselfdon_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="style/SelDonReg.css" />

    <div class="home-header">
        <div id="header" style="top:0; height: 25px; width: 100%; background-color: darkred; position:fixed;"></div>
        <br />
    <h1 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-decoration:solid; text-align:center;">SELF DONOR REGISTRATION</h1>
    <div id="labels">
         <br />
               <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Label ID="Label2" runat="server"></asp:Label>
    </div>
    <div id="login-box">
        <div class="right-box">
            Email:
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" placeholder="abc@gmail.com" Height="35px" Width="100%"></asp:TextBox>
         <br /><br />   City:<br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Karachi</asp:ListItem>
            <asp:ListItem>Lahore</asp:ListItem>
            <asp:ListItem>Islamabad</asp:ListItem>
            <asp:ListItem>Pehawar</asp:ListItem>
            <asp:ListItem>Quetta</asp:ListItem>
        </asp:DropDownList><br /><br />
            Phone:
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Phone" placeholder="03xxxxxxxxx" Height="35px" Width="100%"></asp:TextBox>
            <br /><br />Weight:
        <asp:TextBox ID="TextBox7" runat="server" Height="35px" Width="100%" placeholder="55 kg"></asp:TextBox>
            Blood Group:<br />
        <asp:DropDownList ID="DropDownList5" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
        </asp:DropDownList><br /><br />
            Donor - Type:<br />
        <asp:DropDownList ID="DropDownList6" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Regular</asp:ListItem>
            <asp:ListItem>Irregular</asp:ListItem>
        </asp:DropDownList><br /><br />
             Height:
        <asp:TextBox ID="TextBox6" runat="server" Height="35px" Width="100%" placeholder="5'9"></asp:TextBox>
        </div>
        <div class="left-box">
            Name:
        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="100%" placeholder="Ali, etc"></asp:TextBox>
            Username:
        <asp:TextBox ID="TextBox8" runat="server" MaxLength="15" placeholder="abc123" Height="35px" Width="100%"></asp:TextBox>
        User Password:
        <asp:TextBox ID="TextBox10" runat="server" TextMode="Password" Height="35px" Width="100%"></asp:TextBox>
            Country:<br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="100%">
        </asp:DropDownList><br /><br />
            CNIC :
        <asp:TextBox ID="TextBox2" runat="server" placeholder="42101xxxxxxxx" MaxLength="13" Height="35px" Width="100%"></asp:TextBox>
            Province:<br />
        <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Sindh</asp:ListItem>
            <asp:ListItem>Punjab</asp:ListItem>
            <asp:ListItem>Balochistan</asp:ListItem>
            <asp:ListItem>KPK</asp:ListItem>
            <asp:ListItem>Kashmir</asp:ListItem>
        </asp:DropDownList><br /><br />
            Gender:<br />
        <asp:DropDownList ID="DropDownList4" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList><br /><br />
            Address:
        <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="100%" placeholder="Street no, etc"></asp:TextBox>
        </div>
        </div>
    <div class="btnRegister">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            <asp:Button ID="Button2" runat="server" Text="Clear" />
        </div>
        </div>
</asp:Content>
