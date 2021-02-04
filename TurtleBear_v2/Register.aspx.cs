using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurtleBear_v2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (LoginClass.NewUser(txtUser.Text, txtPass1.Text, txtPhone.Text))
                Response.Redirect("Login.aspx");
            else
                btnTopRegister.Text = "User Already Exists";
        }
        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}