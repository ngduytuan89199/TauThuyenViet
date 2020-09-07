<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucProductRelated.ascx.cs" Inherits="ucProductRelated" %>

<aside>
    <h2>CÁC SẢN PHẨM LIÊN QUAN
    </h2>
    <div class="product-other-swiper">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <asp:Repeater ID="Repeater_Main" runat="server">
                    <ItemTemplate>
                        <div class="swiper-slide">
                            <a href='<%# Eval("ID", "/product-detail.aspx?id={0}") %>'>
                                <img class="img-fluid" src='<%# Eval("ImageList").SpitImage() %>' />
                                <span>
                                    <%# Eval("Title") %>
                                </span>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater >
            </div>
        </div>
    </div>
</aside>
