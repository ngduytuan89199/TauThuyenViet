using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }

    public void LoadData()
    {
        //Lấy id từ query string
        int id = 0;
        //int id = int.Parse(Request.QueryString["id"]);
        int.TryParse(Request.QueryString["id"], out id);
        //Kết nối DB
        DBEntities db = new DBEntities();
        //Viết câu truy vấn
        var query = from p in db.Products
                    where p.ProductID == id
                    select new
                    {
                        ID = p.ProductID,
                        p.Avatar,
                        p.Title,
                        p.Content,
                        p.ImageList
                    };
        //Đổ vòng lặp
        Repeater_Main.DataSource = query.ToList();
        //Hiển thị
        Repeater_Main.DataBind();
    }
}