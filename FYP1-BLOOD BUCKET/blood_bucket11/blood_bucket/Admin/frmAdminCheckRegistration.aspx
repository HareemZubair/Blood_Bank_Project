<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmAdminCheckRegistration.aspx.cs" Inherits="blood_bucket.Admin.frmAdminCheckRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    .home-header {
    background-color: dimgray;
    padding-top:40px;
    height:500px;
    width:100%;
}
.btn-light {
    font-size:23px;
    text-align:center;
    background: dimgray;
    color: black;
    text-decoration:none;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight:500;
    display: block;
    padding: 0.5rem 1rem;
    border: 0;
    margin-bottom: 0.2rem;
}
.btn-light:hover, .btn-light:focus {
    font-size:30px;
    color: darkred;
}
</style>
    <div class="home-header">
       <div id="header" style="top:0; height: 25px; width: 100%; background-color: darkred; position:fixed;"></div>
        <h3 style="text-align:left;"><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">back</asp:LinkButton></h3>
        <h1 style="text-align:center; color:darkred; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">DETAILS OF USERS THAT ARE REGISTERED</h1>
        <h3 style="text-align:right;"><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">SignOut</asp:LinkButton></h3>
        <br /><br />
    <a href="frmAdminREG_PAT.aspx" class="btn-light">
                    <i class="fas" ></i>Patient's Details
        </a>
            <a href="frmAdminREG_HOS.aspx" class="btn-light">
                    <i class="fas" ></i>Hospital's Details
        </a>
            <a href="frmAdminREG_ORG.aspx" class="btn-light">
                    <i class="fas" ></i>Organization's Details
        </a>
            <a href="frmAdminREG_SELF-DON.aspx" class="btn-light">
                    <i class="fas" ></i>Self Donor's Details
        </a>
        </div>
</asp:Content>
