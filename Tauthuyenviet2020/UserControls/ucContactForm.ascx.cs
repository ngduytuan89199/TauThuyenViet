using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            alert_danger.Visible = false;
            alert_success.Visible = false;
        }
    }

    protected void LinkButton_Send_Click(object sender, EventArgs e)
    {
        DBEntities db = new DBEntities();
        Contact item = new Contact();
        item.FullName = input_Fullname.Value.Trim();
        item.Email = input_Email.Value.Trim();
        item.Mobi = input_Mobile.Value.Trim();
        item.Content = textarea_Content.Value.Trim();
        item.CreateTime = DateTime.Now;
        item.Status = false;

        //kiểm tra lỗi
        if(item.FullName == string.Empty)
        {
            alert_danger.InnerText = "Vui lòng nhập họ tên";
            alert_danger.Visible = true;
            return;
        }

        if (item.Email == string.Empty)
        {
            alert_danger.InnerText = "Vui lòng nhập email";
            alert_danger.Visible = true;
            return;
        }

        if (item.Mobi == string.Empty)
        {
            alert_danger.InnerText = "Vui lòng nhập số điện thoại";
            alert_danger.Visible = true;
            return;
        }

        if (item.Content == string.Empty)
        {
            alert_danger.InnerText = "Vui lòng nhập nội dung";
            alert_danger.Visible = true;
            return;
        }

        //Lưu vào db
        db.Contacts.Add(item);
        db.SaveChanges();

        //thông báo thành công
        alert_success.InnerText = "Cảm ơn bạn đã liên hệ";
        alert_success.Visible = true;
        alert_danger.Visible = false;

        //Xóa trắng form
        input_Fullname.Value = string.Empty;
        input_Email.Value = string.Empty;
        input_Mobile.Value = string.Empty;
        textarea_Content.Value = string.Empty;
    }
}