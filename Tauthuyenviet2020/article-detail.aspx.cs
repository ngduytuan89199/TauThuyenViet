using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AticleDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }

    public void LoadData()
    {
        //lấy id từ query string
        //int id = int.Parse(Request.QueryString["id"]);
        int id = 0;
        int.TryParse(Request.QueryString["id"], out id);
        //Bước 1 : Kết Nối db
        DBEntities db = new DBEntities();
        //Viết câu truy vấn
        var query = from a in db.Articles
                    where a.Status == true && a.ArticleID == id
                    select new
                    {
                        a.ArticleID,
                        a.Title,
                        a.Avatar,
                        a.Content,
                        a.Thumb,
                        a.Description
                    };
        //Đổ vào dòng lập
        Repeater_Main.DataSource = query.ToList();
        //Hiển thị
        Repeater_Main.DataBind();
    }
}