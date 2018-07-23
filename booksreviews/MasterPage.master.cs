using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String links = "";

        if (Request.IsAuthenticated)
        {
            lblUser.Text = Session["email"].ToString ();

            hl1.NavigateUrl = "~/user/changepassword.aspx";
            hl1.Text = "Change Password";

            hl2.NavigateUrl = "~/user/logout.aspx";
            hl2.Text = "Logout";
        }
        else
        {
            lblUser.Text = "";
            hl1.NavigateUrl = "~/login.aspx";
            hl1.Text = "Login";

            hl2.NavigateUrl = "~/register.aspx";
            hl2.Text = "Register";
        }
    }
}
