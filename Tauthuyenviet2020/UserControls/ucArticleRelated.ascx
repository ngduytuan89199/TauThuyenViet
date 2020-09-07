<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucArticleRelated.ascx.cs" Inherits="ucArticleRelated" %>

<aside>
    <h2>CÁC TIN TỨC KHÁC
    </h2>
    <ul class="row article-other">
        <asp:Repeater ID="Repeater_Main" runat="server">
            <ItemTemplate>
                <li class="col-6 col-lg-4">
                    <a href='<%# Eval("ID","/article-detail.aspx?id={0}") %>'>
                        <img class="img-fluid img-thumbnail" src='<%# Eval("Avatar") %>' />
                        <span>
                            <%# Eval("Title") %>
                        </span>
                    </a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</aside>
