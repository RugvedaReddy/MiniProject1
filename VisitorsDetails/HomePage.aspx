<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorsTemplate.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="VisitorsDetails.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 425px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check-In" />
    <asp:Button ID="Button2" runat="server" CssClass="auto-style3" OnClick="Button2_Click" Text="Check-Out" />
</asp:Content>
