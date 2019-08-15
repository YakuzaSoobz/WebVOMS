using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; 

/// <summary>
/// Summary description for PageMenu
/// </summary>
public class PageMenu
{
    public PageMenu(Page webPage)
	{
        
	}

    public static void Initialise(Page webPage)
    {
        if (webPage.User.IsInRole("Employee"))
        {
            Menu EmployeeNavigationMenu;
            EmployeeNavigationMenu = (Menu)webPage.Page.Master.FindControl("EmployeeNavigationMenu");
            EmployeeNavigationMenu.Visible = true;
        }
        if (webPage.User.IsInRole("Manager"))
        {
            Menu ManagerNavigationMenu;
            ManagerNavigationMenu = (Menu)webPage.Page.Master.FindControl("ManagerNavigationMenu");
            ManagerNavigationMenu.Visible = true;

            Menu EmployeeNavigationMenu;
            EmployeeNavigationMenu = (Menu)webPage.Page.Master.FindControl("EmployeeNavigationMenu");
            EmployeeNavigationMenu.Visible = true;
        }
        if (webPage.User.IsInRole("Customer"))
        {
            Menu CustomerNavigationMenu;
            CustomerNavigationMenu = (Menu)webPage.Page.Master.FindControl("CustomerNavigationMenu");
            CustomerNavigationMenu.Visible = true;
        }
    }
}