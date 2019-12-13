﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bucket
{
    public partial class frmorg_reg : System.Web.UI.Page
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
            TextBox5.Text = "";
            TextBox1.Focus();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || DropDownList1.Text == "" || DropDownList2.Text == "" || DropDownList3.Text=="")
            {
                Label1.Text = "All field Required";
            }
            else
            {
                bool chk = obj.SearchRecord("org_reg", "org_name", TextBox1.Text);

                if (chk == false)
                {

                    qry = "select * from org_reg where org_user_id='" + TextBox6.Text + "' or org_user_pass = '" + TextBox7.Text + "'";

                    bool check = obj.SearchRecord(qry);

                    if (check == false)
                    {

                        qry = "insert into org_reg values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + DropDownList3.SelectedItem.Text + "','" + TextBox6.Text + "', '" + TextBox7.Text + "')";
                      
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClearBoxes2();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if  (TextBox8.Text == "" || TextBox9.Text == "")
            {
                Label2.Text = "All field Required";
            }
            else
            {
                bool chk = obj.SearchRecord("Login", "USR_LOGINID", TextBox8.Text);

                if (chk == false)
                {

                    qry = "select * from Login where USR_LOGINID='" + TextBox8.Text + "' or USR_PASSWORD = '" + TextBox9.Text + "'";

                    bool check = obj.SearchRecord(qry);

                    if (check == false)
                    {

                        qry = "insert into Login values('" + TextBox8.Text + "','" + TextBox9.Text + "')";

                        Label2.Text = obj.Manipulate(qry, "New USER");
                    }
                    else
                    {
                        Label2.Text = "user id or Password Already exists";
                        TextBox8.Text = "";
                        TextBox8.Focus();
                    }

                }
                else
                {
                    Label2.Text = "user name Already Exist";
                    TextBox8.Text = "";
                    TextBox8.Focus();
                }
                Response.Redirect("frmlogin.aspx");
            }
        }
    }
}