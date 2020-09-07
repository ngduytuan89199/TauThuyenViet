<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHomeProduct.ascx.cs" Inherits="ucHomeProduct" %>

<section id="product-home">
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <div class="wrapper">
                <a href='<%# Eval("ID","/product-list.aspx?mid={0}") %>' class="avatar">
                    <img class="img-fluid" src='<%# Eval("Avatar") %>' />
                    <img class="overlay" src='<%# Eval("Thumb") %>' />
                </a>
                <div class="full">
                    <!-- Slider main container -->
                    <div class="swiper-container">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <asp:Repeater ID="Repeater_Cat" runat="server" DataSource='<%# Eval("CatList") %>'>
                                <ItemTemplate>
                                    <asp:Repeater ID="Repeater_Product" runat="server" DataSource='<%# Eval("ProductList") %>'>
                                        <ItemTemplate>
                                            <div class="swiper-slide">
                                                <a href='<%# Eval("ID","/product-detail.aspx?id={0}") %>'>
                                                    <img src='<%# Eval("ImageList").SpitImage() %>' />
                                                    <span><%# Eval("Title") %></span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
                <div class="thumb">
                    <!-- Slider main container -->
                    <div class="swiper-container">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <asp:Repeater ID="Repeater_Cat2" runat="server" DataSource='<%# Eval("CatList") %>'>
                                <ItemTemplate>
                                    <asp:Repeater ID="Repeater_Product2" runat="server" DataSource='<%# Eval("ProductList") %>'>
                                        <ItemTemplate>
                                            <div class="swiper-slide">
                                                <a href='<%# Eval("ID","/product-detail.aspx?id={0}") %>'>
                                                    <img src='<%# Eval("ImageList").SpitImage() %>' />
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                        <!-- If we need navigation buttons -->
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</section>
