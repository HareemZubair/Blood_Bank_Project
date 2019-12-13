using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket
{
    public partial class frmseeneeder : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string q;

        protected void Page_Load(object sender, EventArgs e)
        {
            q = "select * from needer";
            obj.BindToGridView(q, GridView1);

            if (!IsPostBack)
            {
                DropDownList2.Items.Add("Lahore");
                DropDownList2.Items.Add("Karachi");
                DropDownList2.Items.Add("Islamabad");
                DropDownList2.Items.Add("Quetta");
                DropDownList2.Items.Add("Pehawar");
                //obj.BindToDropDownlist(q, DropDownList1, "blood_group", "nid");
            }
          
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            q = "select * from needer where blood_group='" + DropDownList1.SelectedItem.ToString() + "'";
            obj.BindToGridView(q, GridView1);
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            q = "select * from needer where city='" + DropDownList2.SelectedItem.ToString() + "'";
            obj.BindToGridView(q, GridView1);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmaccount.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmhome.aspx");
        }
    }
}