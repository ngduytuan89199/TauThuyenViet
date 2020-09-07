using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucArticleRelated : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }

    public void LoadData()
    {
        int id = 0;

        int.TryParse(Request.QueryString["id"], out id);
        //tham khảo trang article-list aspx.cs
        //Bước 1 : Kết Nối db
        DBEntities db = new DBEntities();
        //Viết câu truy vấn
        var query = from a in db.Articles
                    where a.Status == true && a.ArticleID != id
                    orderby a.CreateTime descending
                    select new
                    {
                        ID = a.ArticleID,
                        a.Title,
                        a.Avatar,
                    };
        //Đổ vào dòng lập
        Repeater_Main.DataSource = query.Take(6).ToList();
        //Hiển thị
        Repeater_Main.DataBind();
    }

}