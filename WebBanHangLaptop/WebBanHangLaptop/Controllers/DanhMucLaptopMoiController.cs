using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHangLaptop.Models;

namespace WebBanHangLaptop.Controllers
{
    public class DanhMucLaptopMoiController : Controller
    {
        WebBanHangLapTopEntities db = new WebBanHangLapTopEntities();
        // GET: DanhMucLaptopMoi
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult DanhMucLaptopMoi()
        {
            return PartialView(db.Laptops.Where(n => n.Moi == 1).Take(4).ToList());
        }
        public ActionResult XemChiTiet(int MaLaptop = 0)
        {
            var laptop = db.Laptops.SingleOrDefault(n => n.MaLaptop == MaLaptop);
            if (laptop == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return PartialView(laptop);
        }
    }
}