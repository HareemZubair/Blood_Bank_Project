<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmhome.aspx.cs" Inherits="blood_bucket.frmhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link rel="stylesheet" href="style/Navigation.css" />
        <link rel="stylesheet" href="style/Home.css" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    
    <div class="navback">           
        <div class="custom-padding">
                         <div class="nav-back">
                          <nav class="navbar">
                            <div class="logo">
                            </div>
                            <ul class="menu-area">
                              <li><a href="/frmhome.aspx">Home</a></li>
                              <li><a href="#explore-head-section">About</a></li>
                              <li><a href="#contact-head-section">Contact</a></li>
                              <li><a href="/frmlogin.aspx">Login</a></li>
                            </ul>
                          </nav>
                        </div>
                      </div>
            </div>  
    <!-- HOME SECTION-->
        <header>
            <div class="home-header">
                    <div class="container">
                        <h1  class="lg-heading" style="color:darkred; text-align:center;">
                            BLOOD <span style="color:black;">BUCKET</span>
                        </h1><br />
                        <h2 class="sm-heading" style="text-align:center; font-size:26px;">
                             Platform where you can <span style="color:darkred" class="txt-type" data-wait="1000" data-words='["Donate Blood", "Get Blood", "Connect as an Organization", "Connect as Hospital"]'></span>
                        </h2>
                </div>
            </div>
        </header>

        <!-- EXPLORE HEAD -->
  <section id="explore-head-section">
    <div class="container">
           <h1 style="text-align:center;"></h1>
      </div>
  </section>

  <!-- EXPLORE SECTION -->
  <section id="explore-section" class="bg-light text-muted py-5">
    <div class="container">
<%--          <h3 style="color:darkred; text-align:center; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight:600">About</h3>--%>
      <div class="row">
        <div class="right" style="width:50%; float:right;">
          <br />
            <div class="d-flex flex-row">
             &nbsp;&nbsp;<i class="fa fa-check" style="color:darkred"></i>&nbsp;&nbsp;&nbsp;&nbsp;
              Easily Donor accessible. <br /><br />
              &nbsp;&nbsp;<i class="fa fa-check" style="color:darkred"></i>&nbsp;&nbsp;&nbsp;&nbsp;
              Easily Needer accessible<br /><br />
                &nbsp;&nbsp;<i class="fa fa-check" style="color:darkred"></i>&nbsp;&nbsp;&nbsp;&nbsp;
              Donor can get blood as well.<br /><br />
             &nbsp;&nbsp;<i class="fa fa-check" style="color:darkred"></i>&nbsp;&nbsp;&nbsp;&nbsp;
              Needer can donate blood as well.<br /><br />
                &nbsp;&nbsp;<i class="fa fa-check" style="color:darkred"></i>&nbsp;&nbsp;&nbsp;&nbsp;
              Organizations can help Donor/Needers.<br /><br />
                &nbsp;&nbsp;<i class="fa fa-check" style="color:darkred"></i>&nbsp;&nbsp;&nbsp;&nbsp;
              Hospitals can get benefits of them.<br /><br />
          </div>
        </div>
          <br />
          <div class="left" style="width:50%; float:left; text-align:center">
          <img src="images/transfusion.png" alt="" class="img-fluid mb-2 rounded-circle" height="350px" width="350px">
        </div>
      </div>
    </div>
  </section>

    <!-- CONTACT HEAD -->
  <section id="contact-head-section">
    <div class="container">
            <h1></h1>
      </div>
  </section>

  <!-- CONTACT SECTION -->
  <section id="contact-section" class="bg-light text-muted py-5">
    <div id="contact">
        <h2 class="sm-heading" style="font-size:27px; margin-top:10px;">
            This is how you can reach us...
        </h2>
        <div class="boxes">
            <div id="box1">
            <span class="text-secondary">Email:</span>
            bloodbucket@gmail.com
        </div>
        <div id="box2">
            <span class="text-secondary">Phone no:</span>
             (+92) 300-123456789
            </div>
            <div id="box3">
            <span class="text-secondary">Address:</span>
                Headquarter at Karachi, Pakistan
            </div>
        </div>
    </div>
      <div id="elementId">
            <a href="https://twitter.com/AiMohsin03">
                <img src="images/twitter.png" height="40px" width="40px" />
            </a>&nbsp;&nbsp;&nbsp;
            <a href="https://www.facebook.com/aimohsin">
                <img src="images/facebook.png" height="40px" width="40px" />
            </a>&nbsp;&nbsp;&nbsp;
            <a href="https://www.linkedin.com/in/aiman-mohsin-b672b8158/">
                <img src="images/instagram.png" height="40px" width="40px" />
            </a>
        </div>
  </section>
    <script src="js/home.js"></script>
</asp:Content>

