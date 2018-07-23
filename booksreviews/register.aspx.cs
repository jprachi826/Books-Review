using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        bool done = UserDAL.RegisterUser(txtEmail.Text, txtPwd.Text);
        if (done)
            lblMsg.Text = "Register is successful. Click on <b>Login</b> link to login!";
        else
            lblMsg.Text = "Sorry! Could not register. Possible reason is duplicate email address!";

    }
}