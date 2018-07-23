using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Book b = BooksDAL.GetBook( Int32.Parse(Request.QueryString["bookid"]));
        fvBook.DataSource =  new Book [] { b };
        fvBook.DataBind();

        if (b.Reviews == null || b.Reviews.Count() == 0)
        {
            dlReviews.Visible = false;
        }
        else
        {

            dlReviews.DataSource = b.Reviews;
            dlReviews.DataBind();
            dlReviews.Visible = true;
        }
    }
}