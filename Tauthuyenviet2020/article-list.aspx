<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="article-list.aspx.cs" Inherits="article_list" %>

<%@ Register Src="~/UserControls/ucPaging.ascx" TagPrefix="uc1" TagName="ucPaging" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Danh Sách Tin Tức - Tàu Thuyền Việt</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <section id="article-list">
        <div class="container">
            <asp:Repeater ID="Repeater_Main" runat="server">
                <ItemTemplate>
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <a href='<%# Eval("ID","/article-detail.aspx?id={0}") %>'>
                                <img class="img-fluid img-thumbnail" src='<%# Eval("Avatar") %>' />
                            </a>
                        </div>
                        <div class="col-12 col-md-8">
                            <h4 class="text-uppercase"><%# Eval("Title") %>
                            </h4>
                            <div class="text-justify">
                                <%# Eval("Description") %>
                            </div>
                            <a class="btn btn-warning pull-right" href='<%# Eval("ID","/article-detail.aspx?id={0}") %>'>
                                <i class="fa fa-hand-o-right"></i>
                                Xem thêm
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <div class="row">
                <div class="col">
                    <uc1:ucPaging runat="server" ID="ucPaging" />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Foot" runat="Server">
</asp:Content>

