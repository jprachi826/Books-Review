using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        bool done = UserDAL.ChangePassword(Session["email"].ToString(), txtOldPwd.Text, txtNewPwd.Text);
        if (done)
            lblMsg.Text = "Password Changed Successfully!";
        else
            lblMsg.Text = "Could not change password. Possible reason is invalid old password!";
    }
}