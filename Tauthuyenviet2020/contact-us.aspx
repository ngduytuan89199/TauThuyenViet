<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>

<%@ Register Src="~/UserControls/ucContactForm.ascx" TagPrefix="uc1" TagName="ucContactForm" %>
<%@ Register Src="~/UserControls/ucContactInto.ascx" TagPrefix="uc1" TagName="ucContactInto" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Liên Hệ - Tàu Thuyền Việt</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <section id="contact">
        <div class="container-fluid">
            <div class="row">
                <uc1:uccontactform runat="server" id="ucContactForm" />

                <uc1:ucContactInto runat="server" id="ucContactInto" />

            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Foot" runat="Server">
</asp:Content>

