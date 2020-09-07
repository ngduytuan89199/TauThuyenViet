using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class article_list : System.Web.UI.Page
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
        var query = from a in db.Articles
                    where a.Status == true
                    orderby a.CreateTime descending
                    select new
                    {
                        ID = a.ArticleID,
                        a.Title,
                        a.Avatar,
                        a.Description
                    };
        //Đổ vào dòng lập
        Repeater_Main.DataSource = query.ToList();
        //Hiển thị
        Repeater_Main.DataBind();
    }

}