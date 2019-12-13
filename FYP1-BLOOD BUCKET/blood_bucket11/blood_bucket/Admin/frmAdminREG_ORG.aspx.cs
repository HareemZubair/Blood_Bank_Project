using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket.Admin
{
    public partial class frmAdminREG_ORG : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                qry = "select * from org_reg";
                obj.BindToDropDownlist(qry, DropDownList1, "org_id", "org_id");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                qry = "delete from org_reg where org_id = " + DropDownList1.SelectedValue + "";

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
            Response.Redirect("frmAdminCheckRegistration.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/frmAdmin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            qry = "select * from org_reg";
            obj.BindToGridView(qry, GridView1);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            qry = "select * from org_reg where org_id=" + DropDownList1.SelectedValue + "";
            obj.BindToGridView(qry, GridView1);
        }
    }
}