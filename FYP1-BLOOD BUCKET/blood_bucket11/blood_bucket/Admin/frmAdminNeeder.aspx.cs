using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket.Admin
{
    public partial class frmAdminNeeder : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string q;
     

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                q = "select * from needer";
                obj.BindToDropDownlist(q, DropDownList1, "nid", "nid");
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                q = "delete from needer where nid = " + DropDownList1.SelectedValue + "";

                Label1.Text = obj.Manipulate(q, "Deletion");


            }
            catch (Exception ex)
            {
                Label1.Text = "Error Occured";
             
            }


        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
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
            q = "select * from needer";
            obj.BindToGridView(q, GridView1);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            q = "select * from needer where nid=" + DropDownList1.SelectedValue + "";
            obj.BindToGridView(q, GridView1);
        }
    }
}