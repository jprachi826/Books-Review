using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class recoverpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        User u = UserDAL.GetUser(txtEmail.Text);
        if (u == null)
        {
            lblMsg.Text = "Sorry! Could not find given email address";
            return;
        }

        MailMessage m = new MailMessage();
        m.To.Add(new MailAddress(txtEmail.Text));
        m.From = new MailAddress("admin@ebook.com");
        m.Subject = "Password";
        m.IsBodyHtml = true;
        m.Body = "Dear Member<p/>Please use the following password to login.<p/>Password : " + u.Password + "<p/>WebMaster<br/>BooksReviews.Com";
        SmtpClient smtp = new SmtpClient("ebook");
        smtp.Send(m);
        lblMsg.Text = "Password was sent to email address. Please use that password to login again!";
    }
}