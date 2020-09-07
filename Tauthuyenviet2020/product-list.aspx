<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product-list.aspx.cs" Inherits="product_list" %>

<%@ Register Src="~/UserControls/ucPaging.ascx" TagPrefix="uc1" TagName="ucPaging" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Sản phẩm - Tàu Thuyền Việt</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <main>
        <section id="product-list">
            <ul class="nav nav-tabs nav-justified">
                <li class="nav-item">
                    <a class="nav-link active" href="product.html">
                        <img class="img-fluid" src="Content/images/product-category-tab/seadoo.png" />
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.html">
                        <img class="img-fluid" src="Content/images/product-category-tab/offroad.png" />
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.html">
                        <img class="img-fluid" src="Content/images/product-category-tab/spyder.png" />
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.html">
                        <img class="img-fluid" src="Content/images/product-category-tab/accessories.png" />
                    </a>
                </li>
            </ul>
            <div class="container-fluid">
                <div class="row mansory">
                    <asp:Repeater ID="Repeater_Product" runat="server">
                        <ItemTemplate>
                            <div class="item">
                                <a href='<%# Eval("ID","/product-detail.aspx?id={0}") %>'>
                                    <img class="img-fluid" src='<%#Eval("ImageList").SpitImage() %>' />
                                    <span><%# Eval("Title") %>
                                    </span>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <uc1:ucPaging runat="server" ID="ucPaging" />

            <div class="clearfix pt-3"></div>
        </section>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Foot" runat="Server">
</asp:Content>

