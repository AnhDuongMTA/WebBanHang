using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHangLaptop.Models;
using PagedList;
using PagedList.Mvc;
namespace WebBanHangLaptop.Controllers
{
    public class QuanLySanPhamController : Controller
    {
        WebBanHangLapTopEntities db = new WebBanHangLapTopEntities();
        // GET: QuanLySanPham
        public ActionResult Index(int? page)
        {
            int pagenumber = (page ?? 1);
            int pagesize = 5;
            return View(db.Laptops.ToList().OrderBy(n=>n.MaLaptop).ToPagedList(pagenumber,pagesize));
        }
    }
}