using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_addreview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        bool done = BooksDAL.AddReview(
               Int32.Parse(Request.QueryString["bookid"]),
               Int32.Parse(Session["userid"].ToString()),
               Int32.Parse(ddlRating.SelectedItem.Value),
               txtReview.Text);
        if (done)
            lblMsg.Text = "Your review has been added sucessfully!";
        else
            lblMsg.Text = "Sorry! Could not add your review. Please try again!";
                  
    }
}