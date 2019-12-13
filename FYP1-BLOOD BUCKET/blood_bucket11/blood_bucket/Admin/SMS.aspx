<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sms.aspx.cs" Inherits="blood_bucket.Admin.sms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="../style/AdminPanels.css" />
    <link rel="stylesheet" href="../style/Dashboard.css" />
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
                        <a href='frmAdminDonor.aspx'><span><img src="../images/heart (2).png" width="20px" height="20px" alt=""></span><b> See Donors</b></a>
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
           <h1 style="text-align:center; font-size:40px; margin-top:40px; color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Messaging Service</h1>
    <br /><br />
            <div class="dropDown">
         Select City :
        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="20%">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Karachi</asp:ListItem>
            <asp:ListItem>Lahore</asp:ListItem>
            <asp:ListItem>Islamabad</asp:ListItem>
            <asp:ListItem>Quetta</asp:ListItem>
            <asp:ListItem>Peshawar</asp:ListItem>
        </asp:DropDownList>
    </div><br />
    <div class="dropDown">
      Send SMS to :
        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="20%"></asp:TextBox><br /><br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button3" runat="server" Text="Needers" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Width="70px" Height="30px" />
        <asp:Button ID="Button2" runat="server" Text="Donors" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Width="70px" Height="30px" />
    <br /><br />
        <asp:TextBox ID="TextBox2" runat="server" Height="138px" TextMode="MultiLine" Width="280px">  Blood_Bucket
  Blood Donation Service
  Needer's Details

  Needer :         
  Hospital :
  Blood-Group:
  Contact :
  City:
        </asp:TextBox><br /><br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Width="100px" Height="30px" />
                    </div>
            </div>
    </div>
</asp:Content>
