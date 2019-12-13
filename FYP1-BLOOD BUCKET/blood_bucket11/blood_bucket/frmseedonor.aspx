<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmseedonor.aspx.cs" Inherits="blood_bucket.frmseedonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link rel="stylesheet" href="style/SeeNeedersDonors.css" />
    <link rel="stylesheet" href="style/Dashboard.css" />
    <link rel="stylesheet" href="style/gridView.css" />
    
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
        <h1 style="text-align:center; color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Blood Donors</h1><br />
       <div class="dropDown">
         Blood-Group: <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="20%">
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="DarkRed" Height="16px" OnClick="LinkButton3_Click" Width="22px">Submit</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         City:
        <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="20%">
        </asp:DropDownList>
        <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="DarkRed" Height="16px" OnClick="LinkButton4_Click" Width="20px">Submit</asp:LinkButton>
        </div><br /><br />
            <div id="dvScreenWidth" visible="false">
    </div>
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
