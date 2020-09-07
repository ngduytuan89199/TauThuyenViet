<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product-detail.aspx.cs" Inherits="product_detail" %>

<%@ Register Src="~/UserControls/ucProductRelated.ascx" TagPrefix="uc1" TagName="ucProductRelated" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Chi tiết sản phẩm</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <section id="product-detail">
        <asp:Repeater ID="Repeater_Main" runat="server">
            <ItemTemplate>
                <aside class="avatar">
                    <img class="img-fluid" src='<%# Eval("Avatar") %>' />
                </aside>
                <aside class="info">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <h1>
                                    <%# Eval("Title") %>
                                </h1>
                               <div>
                                   <%# Eval("Content") %>
                               </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="product-imagelist-swiper">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
                                            <asp:Repeater ID="Repeater_ImageList" DataSource='<%# Eval("ImageList").SplitImageList() %>' runat="server">
                                                <ItemTemplate>
                                                    <div class="swiper-slide">
                                                        <a href="#">
                                                            <img class="img-fluid" src='<%# Container.DataItem %>' />
                                                        </a>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <div class="swiper-pagination"></div>
                                        <div class="swiper-button-prev"></div>
                                        <div class="swiper-button-next"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>
                 <uc1:ucProductRelated runat="server" ID="ucProductRelated" ProductID='<%# Eval("ID") %>' />
            </ItemTemplate>
        </asp:Repeater>
        <uc1:ucProductRelated runat="server" ID="ucProductRelated" />
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Foot" runat="Server">
</asp:Content>

