using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            PageMenu.Initialise(Page);
            if (Session["New"] == null)
            {
                lblLoggedIn.Text = "";
                btnLogin.Visible = true;
                btnLogout.Visible = false;
            }
            else
            {
                lblLoggedIn.Text = Session["New"].ToString();
                btnLogin.Visible = false;
                btnLogout.Visible = true;
            }
        }
        catch (Exception exception)
        {
            Response.Write("<script> alert('Oops page failed to load properly!')</script>");
        }
       


        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.twitter.com/");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://aboutme.google.com/u/0/?referer=gplus");
    }
    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("~/LoginNew.aspx");
        }
    }
    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("~/LoginNew.aspx");
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("~/Default.aspx");
    }
    protected void btnLogin_Click2(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("~/LoginNew.aspx");
        }
    }
    protected void HeadLoginStatus_LoggingOut(object sender, LoginCancelEventArgs e)
    {

    }
}
