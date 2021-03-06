﻿using System;
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

        public ActionResult Product(string search_kw = "", int page = 1, int price=0, int category=0,int order=1)
        {
            int n, order_by = 1;
            bool isNumeric = int.TryParse(order.ToString(), out n);
            if (isNumeric)
            {
                order_by = order;
            }
            int totalRecord = 0;///tong ban ghi cua danh muc
            var product = new ProductDao().ListByCategoryId(ref totalRecord, page, search_kw, price, category, order_by);
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
        
	}
}