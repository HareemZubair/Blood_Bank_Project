using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket
{
    public partial class frmseedonor : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string q;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["USR_LOGINID"] != null)
            //{
                //Label1.Text = Session["USR_LOGINID"].ToString();
            //}
            q = "select * from donor";
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
            q = "select * from donor where dbg='" + DropDownList1.SelectedItem.ToString() + "'";
            obj.BindToGridView(q, GridView1);
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            q = "select * from donor where dcity='" + DropDownList2.SelectedItem.ToString() + "'";
            obj.BindToGridView(q, GridView1);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmhome.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmaccount.aspx");
        }
    }
}