using Model.EF;
using Models.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Model.DAO
{
    public class CategoryDAO
    {
        ShopDBContext db = null;
         public CategoryDAO()
        {
            db = new ShopDBContext();
        }
        private static CategoryDAO instance;
        public static CategoryDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new CategoryDAO();
                }
                return instance;
            }
        }
        public List<Category> ListAll()
        {
            return db.Categories.Where(x => x.isActive == true).OrderBy(x => x.CateID).ToList();
        }
        //public IEnumerable<Category> ListAllPaging(string searchString, int page)
        //{
        //    IQueryable<Category> model = db.Categories;
        //    if (!string.IsNullOrEmpty(searchString))
        //    {
        //        model = model.Where(x => x.CateName.Contains(searchString));
        //    }
        //    return model.OrderByDescending(x => x.CreatedAt).ToPagedList(page, Constants.PageSize);
        //}
        public int Insert(Category entity) 
        {
            entity.CreatedAt = DateTime.Now;
            db.Categories.Add(entity);
            db.SaveChanges();
            return entity.CateID;
        }
        public Category GetByID(int cateID)
        {
            return db.Categories.SingleOrDefault(x => x.CateID == cateID);
        }
        public Category GetByName(string cateName)
        {
            return db.Categories.SingleOrDefault(x => x.CateName == cateName);
        }
        public bool Delete(int cateID)
        {
            try
            {
                var cate = db.Categories.Find(cateID);
                db.Categories.Remove(cate);
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public List<Category> GetListAll()
        {
            return db.Categories.OrderByDescending(x => x.CateID).ToList();
        }

        public List<Category> GetListActive()
        {
            return db.Categories.Where(x => x.isActive == true).OrderByDescending(x => x.CateID).ToList();
        }

        public bool changeStatus(int _key)
        {
            var category = GetByID(_key);
            category.isActive = !category.isActive;
            category.UpdatedAt = DateTime.Now;
            db.SaveChanges();
            return category.isActive;
        }
        public bool delete(int _key)
        {
            if (hasReference(_key))
                return false;
            db.Categories.Remove(GetByID(_key));
            db.SaveChanges();
            return true;
        }
        private bool hasReference(int _key)
        {
            var category = GetByID(_key);
            if (category != default(Category))
            {
                var count_one = db.Categories.Where(obj => obj.CateID == _key).ToList().Count;
                return count_one > 0;
            }
            return false;
        }
        public bool UpdateName(int cateID, string cateName)
        {
            var category = GetByID(cateID);
            category.CateName = cateName;
            category.UpdatedAt = DateTime.Now;
            db.SaveChanges();
            return true;
        }

        public object ViewDetail(int _key)
        {
            return db.Categories.Find(_key);
        }

    }
}
