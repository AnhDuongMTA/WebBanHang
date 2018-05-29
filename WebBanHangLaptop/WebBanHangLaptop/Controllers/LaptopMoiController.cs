using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHangLaptop.Models;

namespace WebBanHangLaptop.Controllers
{
    public class LaptopMoiController : Controller
    {
        WebBanHangLapTopEntities db = new WebBanHangLapTopEntities();
        // GET: LaptopMoi
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult LaptopMoiPartial()
        {
            var listLaptop = db.Laptops.Take(2).ToList();
            return PartialView(listLaptop);
        }
    }
}