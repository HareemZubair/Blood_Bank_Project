<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmAdminDonor.aspx.cs" Inherits="blood_bucket.Admin.frmAdminDonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="../style/AdminPanels.css" />
    <link rel="stylesheet" href="../style/Dashboard.css" />
    <link rel="stylesheet" href="../style/gridView.css" />
    <link href="../style/font-awesome.min.css" rel='stylesheet' />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <div class="home-header">
               <div id="header"></div>
         <div class="dashboard">    
        <div class='sidebar-collapse'>
                <ul class='nav' id='main-menu'>
                    <br /><br />
                    <li>
                        <a href='frmAdminPanel.aspx'><span><img src="../images/online-banking.png" width="20px" height="20px" alt=""></span><b> Admin</b></a>
                    </li><br />
                    <li>
                        <a href='frmAdminNeeder.aspx'><span><img src="../images/heart.png" width="20px" height="20px" alt=""></span><b> See Needers</b></a>
                    </li><br />
                    <li>
                        <a href='frmAdminNeeder.aspx'><span><img src="../images/heart (2).png" width="20px" height="20px" alt=""></span><b> See Donors</b></a>
                    </li><br />
                    <li>
                        <a href='frmAdminREG_PAT.aspx'><span><img src="../images/patient.png" width="20px" height="20px" alt=""></span><b> Patients</b></a>
                    </li><br />
                    <li>
                        <a href='frmAdminREG_HOS.aspx'><span><img src="../images/hospital.png" width="20px" height="20px" alt=""></span><b> Hospitals</b></a>
                    </li><br />
                    <li>
                        <a href='frmAdminREG_ORG.aspx'><span><img src="../images/organization.png" width="20px" height="20px" alt=""></span><b> Organizations</b></a>
                    </li><br />
                    <li>
                        <a href='frmAdminREG_SELF-DON.aspx'><span><img src="../images/selfDonor.png" width="20px" height="20px" alt=""></span><b> Self Donors</b></a>
                    </li><br />
                     <li>
                        <a href='SMS.aspx'><span><img src="../images/email.png" width="20px" height="20px" alt=""></span><b> Messaging Service</b></a>
                    </li><br />
                    <li>
                        <a href='/frmhome.aspx'><span><img src="../images/exit.png" width="20px" height="20px" alt=""></span><b> Log Out</b></a>
                    </li>
                </ul>
            </div>
            </div>
        <div id="main">
        <h1 style="text-align:center; color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">DONOR'S DETAILS</h1>
    <br />
        <div id="labels">
                    <asp:Label ID="Label1" ForeColor="YellowGreen" runat="server"></asp:Label>
        </div>
        <div class="dropDown">
        Donor's ID: 
        <asp:DropDownList ID="DropDownList1" runat="server"  Height="35px" Width="20%">
        </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="DarkRed" Width="26px" OnClick="LinkButton3_Click" >Submit</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Width="70px" Height="30px" />
    </div>
    <div class="mx-auto">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show All" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Width="100px" Height="30px" />
    </div><br /><br />
            <div id="dvScreenWidth" visible="false"></div>
            <div class="GridDock" id="dvGridWidth">
    <div class="gridset">
        <asp:GridView ID="GridView1" runat="server" Width="50%" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="hdr" RowStyle-CssClass="rows">
          </asp:GridView>
    </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
            $('#dvGridWidth').width($('#dvScreenWidth').width());
    </script>
</asp:Content>
