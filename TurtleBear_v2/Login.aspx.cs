using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurtleBear_v2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //I Put the Authentication here because i couldn't access my class from the html,
            //I figured because its hidden behind a class and a hash it would be acceptable
            if (LoginClass.ChkLog(txtUser01.Text, txtPass01.Text))
                FormsAuthentication.RedirectFromLoginPage(txtUser01.Text, Persist.Checked);
        }
    }
}