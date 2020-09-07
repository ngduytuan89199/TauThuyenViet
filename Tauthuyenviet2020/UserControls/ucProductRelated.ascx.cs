using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucProductRelated : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }

    public int ProductID { get; set; }
    public void LoadData()
    {
        //Viết câu truy vấn
        DBEntities db = new DBEntities();
        var query = from p in db.Products
                    where p.Status == true
                    orderby p.CreateTime descending
                    select new
                    {
                        ID = p.ProductID,
                        p.Title,
                        p.ImageList
                    };
        //Nếu ProductID > 0, thì áp điều kiện
        if (ProductID > 0)
        {
            query = query.Where(x => x.ID != ProductID);
        }
        //Đổ vào vòng lập
        Repeater_Main.DataSource = query.ToList();
        //Hiển thị
        Repeater_Main.DataBind();
    }
}