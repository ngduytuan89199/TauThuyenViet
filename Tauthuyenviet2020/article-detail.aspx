<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="article-detail.aspx.cs" Inherits="AticleDetail" %>

<%@ Register Src="~/UserControls/ucProductRelated.ascx" TagPrefix="uc1" TagName="ucProductRelated" %>
<%@ Register Src="~/UserControls/ucArticleRelated.ascx" TagPrefix="uc1" TagName="ucArticleRelated" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Chi tiết tin tức - Tàu Thuyền việt</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <section id="article-detail">
        <div class="container">
            <asp:Repeater ID="Repeater_Main" runat="server">
                <ItemTemplate>
                    <article>
                        <h1>
                            <%# Eval("Title") %>
                        </h1>
                        <div class="d-lg-block d-none desc">
                            <img class="img-thumbnail" src=' <%# Eval("Avatar") %>' />
                            <span> <%# Eval("Description") %></span>
                        </div>
                        <div class="clearfix"></div>
                        <div class="content">
                            <%# Eval("Content") %>
                        </div>
                    </article>
                </ItemTemplate>
            </asp:Repeater>
            <uc1:ucArticleRelated runat="server" ID="ucArticleRelated" />

            <uc1:ucProductRelated runat="server" ID="ucProductRelated" />
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Foot" runat="Server">
</asp:Content>


