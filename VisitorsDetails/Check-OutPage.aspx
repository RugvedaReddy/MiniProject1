<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorsTemplate.Master" AutoEventWireup="true" CodeBehind="Check-OutPage.aspx.cs" Inherits="VisitorsDetails.Check_OutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            border: 2px solid #000000;
            background-color: #FFFFFF;
        }
        .auto-style4 {
            margin-left: 177px;
        }
        .auto-style5 {
            margin-left: 54px;
        }
        .auto-style6 {
            margin-left: 83px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td>VisitorsIn<asp:TextBox ID="txtVisitors" runat="server" CssClass="auto-style4" Width="196px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Search By ID" Width="111px" />
                <asp:Button ID="Button2" runat="server" CssClass="auto-style6" OnClick="Button2_Click" Text="Search By Name" Width="114px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                     <Columns>
                    <asp:TemplateField HeaderText="Sign out">
               <ItemTemplate  >
                   <asp:Button ID="b3" runat="server" Text="Click to sign out>>>" OnClick="b3_Click" />

               </ItemTemplate>
           </asp:TemplateField>
                </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
