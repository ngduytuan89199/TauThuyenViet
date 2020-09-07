<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMenu.ascx.cs" Inherits="ucMenu" %>
<nav id="main-nav" class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="/">
            <img src="Content/images/logo/logo.png" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">
                        <i class="fa fa-home text-dark"></i>
                        Trang Chủ
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/product-list.aspx" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-first-order text-primary"></i>
                        Sản Phẩm
                    </a>
                    <ul class="dropdown-menu">
                        <asp:Repeater ID="Repeater_Menu" runat="server">
                            <ItemTemplate>
                                <li class="dropdown">
                                    <a class="dropdown-item" href='<%# Eval("ID","/product-list.aspx?mid={0}")  %>'>
                                        <%#Eval("Title") %>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <asp:Repeater ID="Repeater_subMenu" runat="server" DataSource='<%# Eval("Subcat") %>'>
                                            <ItemTemplate>
                                                <li class="dropdown">
                                                    <a class="dropdown-item" href='<%# Eval("ID","/product-list.aspx?cid={0}")  %>' >
                                                        <%# Eval("Title") %>
                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/article-list.aspx">
                        <i class="fa fa-newspaper-o text-danger"></i>
                        Tin Tức
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact-us.aspx">
                        <i class="fa fa-volume-control-phone text-success"></i>
                        Liên Hệ
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="language language-english"></i>
                        English
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a class="dropdown-item" href="/">
                                <i class="language language-vietnamese"></i>
                                Tiếng Việt
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="/">
                                <i class="language language-english"></i>
                                English
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
