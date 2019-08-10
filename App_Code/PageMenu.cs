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
	public PageMenu()
	{
        

	}
    public static void Initialise(Page webPage)
    {
        if (webPage.User.IsInRole("Employee"))
        {
            Menu PrivateMenu;
            PrivateMenu = (Menu)webPage.Page.Master.FindControl("PrivateMenu");
            PrivateMenu.Visible = true;
        }
    }
}