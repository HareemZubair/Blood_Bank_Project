<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmaccount.aspx.cs" Inherits="blood_bucket.frmaccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="style/account.css" />
    <link rel="stylesheet" href="style/Dashboard.css" />
    <link rel='stylesheet' href='assets/css/animate.css'>
    <link rel='stylesheet' href='assets/css/bootstrap.min.css'>
    <link href='assets/css/font-awesome.css' rel='stylesheet' />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

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
            <div id="labels">
             <asp:Label ID="Label2" runat="server"></asp:Label></div>
           <h1 class="lg-head">Welcome! <span class="lg-heading"><asp:Label ForeColor="DarkRed" ID="Label1" runat="server"></asp:Label></span></h1><br /><br />
           
            <br />  <h2 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Check Availability</h2><br />
              The ‘Check availability option’ gives the available quantity of the entered blood group from the nearby blood banks and hospitals using the entered pin code. <br /><br />
                <h2 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Request Blood</h2><br />
             The ‘Request’ option can be used by the hospitals and the blood banks to request blood from the registered blood banks. The request can be sent by entering the id of the blood bank and the blood group of the required blood. <br /><br />
                   <h2 style="color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Bank Update</h2><br />
              The ‘Update’ option can be used the hospitals and the blood banks to update their inventory status on regular basis. The hospitals and blood banks are needed to update their status after every transaction thus to avoid inaccurate data. <br /><br />
                 </div>              
            </div> 
</asp:Content>
