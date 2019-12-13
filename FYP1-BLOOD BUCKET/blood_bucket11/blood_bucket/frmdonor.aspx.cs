using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace blood_bucket
{
    public partial class frmdonor : System.Web.UI.Page
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
                DropDownList2.DataSource = objcountries;
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "Select");
            }
        }
        protected void ClearBoxes2()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Focus();

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmaccount.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmhome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == ""  || DropDownList1.SelectedItem.Text == "" || DropDownList2.SelectedItem.Text == "" || DropDownList3.SelectedItem.Text == "" || TextBox2.Text == "" || DropDownList4.SelectedItem.Text == "" || TextBox4.Text == "" || TextBox3.Text == "")
            {
                Label1.Text = "All field Required";
            }
            else
            {
                bool chk = obj.SearchRecord("donor", "dname", TextBox1.Text);

                if (chk == false)
                {

                    qry = "select * from donor where dname='" + TextBox1.Text + "' or dcontact = '" + TextBox3.Text + "'";

                    bool check = obj.SearchRecord(qry);

                    if (check == false)
                    {

                        qry = "insert into donor values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox2.Text + "', '" + DropDownList4.SelectedItem.Text + "', '" + TextBox4.Text + "','" + TextBox3.Text + "')";


                        Label1.Text = obj.Manipulate(qry, "New Donation is Sent");
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClearBoxes2();
        }
    }
}