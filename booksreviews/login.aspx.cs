﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        User u = UserDAL.Login(txtEmail.Text, txtPwd.Text);
        if ( u == null)
            lblMsg.Text = "Sorry! Invalid Login!";
        else
        {
            Session.Add("userid", u.UserId);
            Session.Add("email", u.Email);
            FormsAuthentication.RedirectFromLoginPage( txtEmail.Text,false);
        }

    }
}