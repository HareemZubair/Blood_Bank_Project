using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket
{
    public partial class frmpat_reg : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string qry;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //id = int.Parse(obj.NewID("Login", "USR_ID"));
           // id = int.Parse(obj.NewID("pat_reg", "pat_id"));
        }

        protected void ClearBoxes2()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox7.Text = "";
            TextBox10.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox1.Focus();

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text=="" || TextBox9.Text=="" )
            {
                Label1.Text = "All field Required";
            }
            else
            {
                bool chk = obj.SearchRecord("pat_reg", "pat_name", TextBox1.Text);

                if (chk == false)
                {

                    qry = "select * from pat_reg where pat_user_id='" + TextBox8.Text + "' or pat_user_pass = '" + TextBox9.Text + "'";

                    bool check = obj.SearchRecord(qry);

                    if (check == false)
                    {

                        qry = "insert into pat_reg values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "', '" +TextBox5.Text + "', '" + TextBox6.Text + "','" +TextBox7.Text + "', '" + DropDownList3.SelectedItem.Text + "', '" + TextBox8.Text + "', '" + TextBox9.Text + "','" + TextBox10.Text + "')";
                        

                        Label1.Text = obj.Manipulate(qry, "New Registration");
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

        protected void btnclear_Click(object sender, EventArgs e)
        {
            ClearBoxes2();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text == "" || TextBox12.Text == "")
            {
                Label2.Text = "All field Required";
            }
            else
            {
                bool chk = obj.SearchRecord("Login", "USR_LOGINID", TextBox11.Text);

                if (chk == false)
                {

                    qry = "select * from Login where USR_LOGINID='" + TextBox11.Text + "' or USR_PASSWORD = '" + TextBox12.Text + "'";

                    bool check = obj.SearchRecord(qry);

                    if (check == false)
                    {

                        qry = "insert into Login values('" + TextBox11.Text + "','" + TextBox12.Text + "')";

                        Label2.Text = obj.Manipulate(qry, "New USER");
                    }
                    else
                    {
                        Label2.Text = "user id or Password Already exists";
                        TextBox11.Text = "";
                        TextBox11.Focus();
                    }

                }
                else
                {
                    Label2.Text = "user name Already Exist";
                    TextBox11.Text = "";
                    TextBox12.Focus();
                }
                Response.Redirect("frmlogin.aspx");
            }
        }
    }
}