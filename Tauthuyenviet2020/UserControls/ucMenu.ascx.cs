using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucMenu : System.Web.UI.UserControl
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
        var query = from m in db.ProductMainCategories
                    where m.Status == true
                    select new
                    {
                        ID = m.ProductMainCategoryID,
                        m.Title,
                        SubCat = (from c in m.ProductCategories
                                  where c.Status == true
                                  select new
                                  {
                                      ID = c.ProductCategoryID,
                                      c.Title
                                  })
                    };
        //Đổ vào dòng lập
        Repeater_Menu.DataSource = query.ToList();
        //Hiển thị
        Repeater_Menu.DataBind();
    }
}