using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucHomeProduct : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }

    public void LoadData()
    {
        //kết nối dữ liệu
        DBEntities db = new DBEntities();
        //viết câu truy vấn
        var query = from m in db.ProductMainCategories
                    where m.Status == true
                    orderby m.Position ascending
                    select new
                    {
                        ID = m.ProductMainCategoryID,
                        m.Avatar,
                        m.Thumb,
                        CatList = (from c in m.ProductCategories
                                where c.Status == true
                                orderby c.Position ascending
                                select new
                                {
                                    ProductList = (from p in c.Products
                                               where p.Status == true 
                                               orderby p.CreateTime descending 
                                               select new
                                               {
                                                   ID = p.ProductID,
                                                   p.Title,
                                                   p.ImageList
                                               })
                                })
                    };
        //đổ dữ liệu
        Repeater_Main.DataSource = query.ToList();
        //hiển thị dữ liệu
        Repeater_Main.DataBind();
    }
}