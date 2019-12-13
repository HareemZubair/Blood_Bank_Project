using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Ports;
using System.Web.ClientServices;
using System.Net;
using System.IO;

namespace blood_bucket.Admin
{
    public partial class sms : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //webClient client = new webClient();
                WebClient client = new WebClient();
                Stream s = client.OpenRead(string.Format("https://platform.clickatell.com/messages/http/send?apiKey=E129He-UQb--ODWtwl1M-Q==&to={0}&content={1}", TextBox1.Text, TextBox2.Text));
                StreamReader reader = new StreamReader(s);
                string result = reader.ReadToEnd();
                Label1.Text = result;
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}