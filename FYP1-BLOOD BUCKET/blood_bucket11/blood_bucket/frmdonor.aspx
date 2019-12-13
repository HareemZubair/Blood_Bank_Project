<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmdonor.aspx.cs" Inherits="blood_bucket.frmdonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link rel="stylesheet"  href="style/Donors.css"/>
        <link rel="stylesheet" href="style/Dashboard.css" />

    <div class="home-header">
        <div id="header"></div>
        <div class="dashboard">    
        <div class='sidebar-collapse'>
                <ul class='nav' id='main-menu'>
                    <br /><br />
                    <li>
                        <a href='/frmaccount.aspx'><span><img src="images/online-banking.png" width="20px" height="20px" alt=""></span><b> Account</b></a>
                    </li><br />
                    <li>
                        <a href='/frmneeder.aspx'><span><img src="images/heart.png" width="20px" height="20px" alt=""></span><b> Request for blood</b></a>
                    </li><br />
                    <li>
                        <a href='/frmseeneeder.aspx'><span><img src="images/heart.png" width="20px" height="20px" alt=""></span><b> See Blood Needers</b></a>
                    </li><br />
                    <li>
                        <a href='/frmdonor.aspx'><span><img src="images/heart (2).png" width="20px" height="20px" alt=""></span><b>Donate Blood</b></a>
                    </li><br />
                    <li>
                        <a href='/frmseedonor.aspx'><span><img src="images/heart (2).png" width="20px" height="20px" alt=""></span><b> See Blood donors</b></a>
                    </li>
                    <li><br />
                        <a href='/frmhome.aspx'><span><img src="images/exit.png" width="20px" height="20px" alt=""></span><b> Log Out</b></a>
                    </li>
                </ul>
            </div>
            </div>
        <div id="main">
        <h1 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-align:center;">Blood Donation</h1>
        <div id="labels">
            <br />
              <asp:Label ID="Label1" runat="server" ForeColor="YellowGreen"></asp:Label>
        </div>
        <div id="login-box">
            <div class="left-box">
                Name:
        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="100%" placeholder="Ali, etc"></asp:TextBox>
                Blood-Group:<br />
        <asp:DropDownList ID="DropDownList4" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
        </asp:DropDownList><br /><br />
                Country:<br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="100%">
        </asp:DropDownList><br /><br />
                Address:
        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="100%" placeholder="Street no. etc"></asp:TextBox>
            </div>
            <div class="right-box">
                Type:<br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Regular</asp:ListItem>
            <asp:ListItem>Irregular</asp:ListItem>
        </asp:DropDownList><br /><br />
                Blood-Quantity:
        <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="100%" placeholder="1 bottle"></asp:TextBox>
                City:<br />
        <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="100%">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Karachi</asp:ListItem>
            <asp:ListItem>Lahore</asp:ListItem>
            <asp:ListItem>Islamabad</asp:ListItem>
            <asp:ListItem>Quetta</asp:ListItem>
            <asp:ListItem>Peshawar</asp:ListItem>
        </asp:DropDownList><br /><br />
                Phone no:
        <asp:TextBox ID="TextBox3" runat="server" MaxLength="11" placeholder="03xxxxxxxxx" Height="35px" Width="100%"></asp:TextBox>
            </div>
            <div class="btnRegister">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Clear" />
            </div>
        </div>
            </div>
        </div>
</asp:Content>
