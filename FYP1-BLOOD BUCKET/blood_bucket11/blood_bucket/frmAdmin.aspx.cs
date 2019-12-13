using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace blood_bucket
{
    public partial class frmAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool chk = CheckUser(Login1.UserName, Login1.Password, Login1.RememberMeSet);

            if (chk == true)
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
            }
        }
        protected bool CheckUser(string userid, string password, bool remem)
        {
            if (userid == "hareem" && password == "123")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}