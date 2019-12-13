using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket
{
    public partial class frmconfirmmsg : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                lblmsg.Text = "Both Fields are required for Continuing Registration";
            }
            else
            {

                bool chk = obj.SearchRecord("Login", "USR_LOGINID", TextBox1.Text);

                if (chk == false)
                {

                    qry = "select * from Login where USR_LOGINID='" + TextBox1.Text + "' or USR_PASSWORD = '" + TextBox2.Text + "'";

                    bool check = obj.SearchRecord(qry);

                    if (check == false)
                    {

                        qry = "insert into Login values('" + TextBox1.Text + "','" + TextBox2.Text + "')";

                        lblmsg.Text = obj.Manipulate(qry, "New USER");
                    }
                    else
                    {
                        lblmsg.Text = "user id or Password Already exists";
                        TextBox1.Text = "";
                        TextBox1.Focus();
                    }

                }
                else
                {
                    lblmsg.Text = "user name Already Exist";
                    TextBox1.Text = "";
                    TextBox2.Focus();

                }
                Response.Redirect("frmlogin.aspx");

            }
        
            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmhome.aspx");
        }
    }
    }
