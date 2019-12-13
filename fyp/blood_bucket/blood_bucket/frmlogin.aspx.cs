using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket
{
    public partial class frmlogin : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string qry;
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(obj.NewID("Login", "USR_ID"));
        }
        protected void ClearBoxes1()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox1.Focus();

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                lblmessage.Text = "ID and Password Required";
            }
            else
            {


                qry = "select * from Login where USR_LOGINID='" + TextBox1.Text + "' and USR_PASSWORD = '" + TextBox2.Text + "'";

                bool check = obj.SearchRecord(qry);

                if (check == false)
                {

                    lblmessage.Text = "Invalid User ID or Password";
                    ClearBoxes1();

                }
                else
                {
                    Session["USR_ID"] = obj.FindField("Login", "USR_LOGINID", TextBox1.Text, "USR_ID");
                    Session["USR_LOGINID"] = obj.FindField("Login", "USR_LOGINID", TextBox1.Text, "USR_LOGINID");
                    Response.Redirect("frmaccount.aspx");

                   

                }

            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("frmregistration.aspx");
        }
    }
}