using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket
{
    public partial class frmneeder : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClearBoxes2()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox7.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox1.Focus();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || DropDownList1.SelectedItem.Text == "" || DropDownList2.SelectedItem.Text == "" || DropDownList3.SelectedItem.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "")
            {
                Label1.Text = "All field Required";
            }
            else
            {
                bool chk = obj.SearchRecord("needer", "name", TextBox1.Text);

                if (chk == false)
                {

                    qry = "select * from needer where name='" + TextBox1.Text + "' or attendee = '" + TextBox2.Text + "'";

                    bool check = obj.SearchRecord(qry);

                    if (check == false)
                    {

                        qry = "insert into needer values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "','" + TextBox6.Text + "', '" + TextBox7.Text + "')";


                        Label1.Text = obj.Manipulate(qry, "New Request is Sent");
                        ClearBoxes2();
                    }
                    else
                    {
                        Label1.Text = "user id or Password Already exists";
                        TextBox1.Text = "";
                        TextBox1.Focus();
                    }

                }
                else
                {
                    Label1.Text = "user name Already Exist";
                    TextBox1.Text = "";
                    TextBox1.Focus();
                }


            }
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