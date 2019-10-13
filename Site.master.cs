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

            if (Session["New"].Equals("") || Session["New"] == null)
            {
                lblPrefix.Text = "";
                lblUser.Text = "";
                btnLogin.Visible = true;
                btnLogout.Visible = false;
                lblLoggedIn.Text = "";
            }
            else
            {
                Label1.Visible = false;
                HyperLink1.Visible = false;
                lblPrefix.Text = "User Logged In is : ";
                lblUser.Text = Session["New"].ToString();
                lblLoggedIn.Text = Session["New"].ToString();
                btnLogin.Visible = false;
                btnLogout.Visible = true;

            }


            if(Session["Role"].ToString().Equals("Customer")){
                CustomerNavigationMenu.Visible = true;
            }
            else if(Session["Role"].ToString().Equals("Employee"))
            {
                EmployeeNavigationMenu.Visible = true;
            }
            else if(Session["Role"].ToString().Equals("Manager"))
            {
                EmployeeNavigationMenu.Visible = true;
                ManagerNavigationMenu.Visible = true;
            }
        }
        catch (Exception exception)
        {
            //Response.Write("<script> alert('Oops page failed to load properly!')</script>");
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
        Response.Redirect("~/Default.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Session["New"].Equals(""))
        {
            Response.Redirect("~/LoginNew.aspx");
        }
    }
    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        if (Session["New"].Equals(""))
        {
            Response.Redirect("~/LoginNew.aspx");
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["New"] = "";
        Session["Role"] = "";
        Label1.Visible = true;
        HyperLink1.Visible = true;
        Response.Redirect("~/Default.aspx");
    }
    protected void btnLogin_Click2(object sender, EventArgs e)
    {
       
            Response.Redirect("~/LoginNew.aspx");
        
    }
    protected void HeadLoginStatus_LoggingOut(object sender, LoginCancelEventArgs e)
    {

    }
}
