<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/UserControls/ucHomeVideo.ascx" TagPrefix="uc1" TagName="ucHomeVideo" %>
<%@ Register Src="~/UserControls/ucHomeIntro.ascx" TagPrefix="uc1" TagName="ucHomeIntro" %>
<%@ Register Src="~/UserControls/ucHomeProduct.ascx" TagPrefix="uc1" TagName="ucHomeProduct" %>
<%@ Register Src="~/UserControls/ucHomeService.ascx" TagPrefix="uc1" TagName="ucHomeService" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Trang Chủ - Tàu Thuyền Việt</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">

    <uc1:uchomevideo runat="server" id="ucHomeVideo" />

    <uc1:ucHomeIntro runat="server" id="ucHomeIntro" />

    <uc1:ucHomeProduct runat="server" id="ucHomeProduct" />

    <uc1:ucHomeService runat="server" id="ucHomeService" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Foot" runat="Server">
</asp:Content>

