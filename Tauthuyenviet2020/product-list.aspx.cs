using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }

    public void LoadData()
    {
        //Bước 1 : Kết Nối db
        DBEntities db = new DBEntities();
        //Viết câu truy vấn
        var query = from p in db.Products
                    from c in db.ProductCategories
                    orderby p.CreateTime descending
                    where p.ProductCategoryID == c.ProductCategoryID
                    select new
                    {
                        ID = p.ProductID,
                        p.ImageList,
                        p.Title,
                        p.ProductCategoryID,
                        c.ProductMainCategoryID
                    };

        //lấy cid từ url
        int cid = 0;
        int.TryParse(Request.QueryString["cid"], out cid);
        //nếu có cid thì thêm điều kiện lọc với cid
        if(cid>0)
            query = query.Where(x => x.ProductCategoryID == cid);
        //lấy mid từ url
        int mid = 0;
        int.TryParse(Request.QueryString["mid"], out mid);
        //nếu có mid thì thêm điều kiện lọc với mid
        if(mid > 0)
            query = query.Where(y => y.ProductMainCategoryID == mid);
        //Đổ vào dòng lập
        Repeater_Product.DataSource = query.ToList();
        //Hiển thị
        Repeater_Product.DataBind();
    }
}