﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket.Admin
{
    public partial class frmAdminDonor : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                qry = "select * from donor";
                obj.BindToDropDownlist(qry, DropDownList1, "did", "did");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                qry = "delete from donor where did = " + DropDownList1.SelectedValue + "";

                Label1.Text = obj.Manipulate(qry, "Deletion");


            }
            catch (Exception ex)
            {
                Label1.Text = "Error Occured";

            }


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAdminPanel.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/frmAdmin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            qry = "select * from donor";
            obj.BindToGridView(qry, GridView1);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            qry = "select * from donor where did=" + DropDownList1.SelectedValue + "";
            obj.BindToGridView(qry, GridView1);
        }
    }
}