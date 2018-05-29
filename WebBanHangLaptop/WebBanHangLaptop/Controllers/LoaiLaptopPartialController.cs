using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHangLaptop.Models;

namespace WebBanHangLaptop.Controllers
{
    public class LoaiLaptopPartialController : Controller
    {
        WebBanHangLapTopEntities db = new WebBanHangLapTopEntities();
        // GET: LoaiLaptopPartial
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult LoaiLaptopPartial()
        {
            return PartialView(db.LoaiLaptops.ToList());
        }
    }
}