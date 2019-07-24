using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;

namespace WebStart.Controllers
{
    public class ContactController : Controller
    {

        public ActionResult Index2()
        {
            ViewBag.Title = "Contact Stuff";

            return View();
        }
    }
}
