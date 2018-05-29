using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHangLaptop.Models;

namespace WebBanHangLaptop.Controllers
{
    public class DanhMucLaptopBanChayController : Controller
    {
        WebBanHangLapTopEntities db = new WebBanHangLapTopEntities();
        // GET: DanhMucLaptopBanChay
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult DanhMucLatopBanChayPartial()
        {
            return PartialView(db.Laptops.Where(n => n.Moi == 2).Take(4).ToList());
        }
    }
}