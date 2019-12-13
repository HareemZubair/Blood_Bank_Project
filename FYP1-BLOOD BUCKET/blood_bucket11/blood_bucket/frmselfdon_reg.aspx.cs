using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace blood_bucket
{
    public partial class frmselfdon_reg : System.Web.UI.Page
    {
        clsblood_bucket obj = new clsblood_bucket();
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> objcountries = new List<string>();
                CultureInfo[] objculture = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
                foreach (CultureInfo getculture in objculture)
                {
                    RegionInfo objregion = new RegionInfo(getculture.LCID);
                    if (!(objcountries.Contains(objregion.EnglishName)))
                    {
                        objcountries.Add(objregion.EnglishName);
                    }
                }
                objcountries.Sort();
                DropDownList1.DataSource = objcountries;
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "Select");
            }
        }
        protected void ClearBoxes2()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox1.Focus();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             if (TextBox1.Text == "" || TextBox2.Text == "" || DropDownList1.SelectedItem.Text == "" || DropDownList2.SelectedItem.Text == "" || DropDownList3.SelectedItem.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || DropDownList4.Text == "" || DropDownList5.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text == "")
            {
                Label1.Text = "All field Required";
            }
            else
            {
                bool chk = obj.SearchRecord("don_reg", "don_name", TextBox1.Text);

                if (chk == false)
                {

                    qry = "select * from don_reg where don_user_id='" + TextBox8.Text + "' or don_user_pass = '" + TextBox10.Text + "'";

                    bool check = obj.SearchRecord(qry);

                    if (check == false)
                    {

                        qry = "insert into don_reg values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "', '" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList6.SelectedItem.Text + "','" + TextBox8.Text + "','" + TextBox10.Text + "')";
                       

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
                Response.Redirect("frmconfirmmsg.aspx");
            }

        }

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    if (TextBox9.Text == "" || TextBox10.Text == "")
        //    {
        //        Label2.Text = "All field Required";
        //    }
        //    else
        //    {
        //        bool chk = obj.SearchRecord("Login", "USR_LOGINID", TextBox9.Text);

        //        if (chk == false)
        //        {

        //            qry = "select * from Login where USR_LOGINID='" + TextBox9.Text + "' or USR_PASSWORD = '" + TextBox10.Text + "'";

        //            bool check = obj.SearchRecord(qry);

        //            if (check == false)
        //            {

        //                qry = "insert into Login values('" + TextBox9.Text + "','" + TextBox10.Text + "')";

        //                Label2.Text = obj.Manipulate(qry, "New USER");
        //            }
        //            else
        //            {
        //                Label2.Text = "user id or Password Already exists";
        //                TextBox9.Text = "";
        //                TextBox9.Focus();
        //            }

        //        }
        //        else
        //        {
        //            Label2.Text = "user name Already Exist";
        //            TextBox8.Text = "";
        //            TextBox8.Focus();
        //        }

        //        Response.Redirect("frmconfirmmsg.aspx");
        //    }
        //}
    }
}