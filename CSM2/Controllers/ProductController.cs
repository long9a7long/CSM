using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.DAO;
using Models.Common;
using System.Collections;

namespace CSM2.Controllers
{
    public class ProductController : Controller
    {
        private const string CartSession = "CartSession";

        // GET: Product
        public ActionResult Index()
        {
            return View();
        }

        public void SetCategoryViewBag(int? selectedID = null)
        {
            var dao = new CategoryDAO();
            var listCategory = dao.GetListAll();
            ViewBag.CategoryID = listCategory;
        }

        public ActionResult Product(string search_kw = "", int page = 1, int price=0, int category=0)
        {
            //var category = new CategoryDAO().ViewDetail(productId);
            //ViewBag.Category = category;
            int totalRecord = 0;///tong ban ghi cua danh muc
            var product = new ProductDao().ListByCategoryId(ref totalRecord, page, search_kw, price, category);
            //ViewBag.Products = product;
            ViewBag.Total = totalRecord;
            ViewBag.Page = page;
            SetCategoryViewBag();
            int maxPage = 3;//so trang hien thi toi da treng trang
            int totalPage = 0; //tong so trang tính ra
            
            totalPage = totalRecord==Constants.PageSize?1:(int)Math.Ceiling((double)(totalRecord / Constants.PageSize)) + 1;//chia tong ban ghi cho so luong tren trang, làm tron len
            ViewBag.TotalPage = totalPage;
            ViewBag.MaxPage = maxPage;
            ViewBag.First = 1;
            ViewBag.Last = totalPage;//trang cuoi cung
            ViewBag.Next = page + 1;
            ViewBag.Prev = page - 1;
            ViewBag.Price = price;
            if (totalRecord <= Constants.PageSize)
            {
                ViewBag.RecordinPage = totalRecord;
            }else
                ViewBag.RecordinPage = totalRecord < page*Constants.PageSize?totalRecord % page:Constants.PageSize;
            return View(product);
            
        }
        public JsonResult ListName(string q)
        {
            var data = new ProductDao().ListName(q);
            return Json(new
            {
                data = data,
                status = true
            }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Search(string search_kw, int pageIndex = 1)
        {
            //var category = new CategoryDAO().ViewDetail(productId);
            //ViewBag.Category = category;
            int totalRecord = 0;///tong ban ghi cua danh muc
            var search = new ProductDao().Search(search_kw, ref totalRecord, pageIndex);
            
            ViewBag.Total = totalRecord;
            ViewBag.Page = pageIndex;
            ViewBag.Keyword = search_kw;

            int maxPage = 3;//so trang hien thi toi da treng trang
            int totalPage = 0; //tong so trang tính ra
            totalPage = (int)Math.Ceiling((double)(totalRecord / Constants.PageSize)) + 1;//chia tong ban ghi cho so luong tren trang, làm tron len
            ViewBag.TotalPage = totalPage;
            ViewBag.MaxPage = maxPage;
            ViewBag.First = 1;
            ViewBag.Last = totalPage;//trang cuoi cung
            ViewBag.Next = pageIndex + 1;
            ViewBag.Prev = pageIndex - 1;
            return View(search);
        }
	}
}