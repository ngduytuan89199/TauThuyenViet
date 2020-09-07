<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucContactForm.ascx.cs" Inherits="ucContactForm" %>

<div class="col-12 col-md-6 form">
    <div>
        <h1>Liên Hệ
        </h1>
        <asp:ScriptManager runat="server" />    
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="form-group">
                    <input id="input_Fullname" runat="server" class="form-control" type="text" placeholder="Họ tên quý khách..." />
                </div>
                <div class="form-group">
                    <input id="input_Email" runat="server" class="form-control" type="text" placeholder="Emai liên hệ..." />
                </div>
                <div class="form-group">
                    <input id="input_Mobile" runat="server" class="form-control" type="text" placeholder="Số điện thoại liên lạc..." />
                </div>
                <div class="form-group">
                    <textarea id="textarea_Content" runat="server" class="form-control" rows="7" placeholder="Nội dung cần liên hệ..."></textarea>
                </div>
                <div class="form-group">
                    <div id="alert_danger" runat="server" class="alert alert-danger">
                    </div>
                    <div id="alert_success" runat="server" class="alert alert-success">
                    </div>
                </div>
                <div class="form-group">
                    <asp:LinkButton Text="Gửi thư liên hệ" ID="LinkButton_Send" OnClick="LinkButton_Send_Click" runat="server" class="btn btn-warning" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
