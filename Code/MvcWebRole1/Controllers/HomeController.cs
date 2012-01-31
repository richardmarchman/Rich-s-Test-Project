using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BusiniessEntities;

namespace MvcWebRole1.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        [HttpPost]
        public JsonResult AddWidget(Widget widget)
        {

            return Json(widget, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddCog(Cog cog)
        {

            return Json(cog, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddWidgetFailureReturnNull(Widget widget)
        {

            return Json(null, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddCogFailureReturnNull(Cog cog)
        {

            return Json(null, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetWidget(string id)
        {
            Widget c = new Widget()
            {
                Id = new Guid(id),
                Name = "test",
                Creation = DateTime.Now
            };

            return Json(c, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetCog(string id)
        {
            Cog c = new Cog()
            {
                Id = new Guid(id),
                Name = "test",
                Creation = DateTime.Now
            };

            return Json(c, JsonRequestBehavior.AllowGet);
        }
    }
}
