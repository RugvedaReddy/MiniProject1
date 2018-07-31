<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorsTemplate.Master" AutoEventWireup="true" CodeBehind="VisitorIn.aspx.cs" Inherits="VisitorsDetails.VisitorIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
        border: 3px solid #000000;
        background-color: #FFFFFF;
    }
    .auto-style8 {
        height: 30px;
    }
    .auto-style13 {
        height: 30px;
        width: 120px;
    }
    .auto-style14 {
        width: 120px;
    }
    .auto-style17 {
        height: 32px;
        width: 120px;
    }
    .auto-style18 {
        height: 32px;
    }
    .auto-style19 {
        height: 29px;
        width: 120px;
    }
    .auto-style20 {
        height: 29px;
    }
    .auto-style21 {
        height: 27px;
        width: 120px;
    }
    .auto-style22 {
        height: 27px;
    }
    .auto-style23 {
        height: 41px;
        width: 120px;
    }
    .auto-style24 {
        height: 41px;
    }
    .auto-style26 {
        margin-left: 6px;
    }
    .auto-style27 {
        margin-left: 4px;
    }
    .auto-style28 {
        margin-left: 3px;
    }
    .auto-style29 {
        margin-left: 12px;
    }
    .auto-style30 {
        height: 35px;
        width: 120px;
    }
    .auto-style31 {
        height: 35px;
    }
    .auto-style32 {
        height: 32px;
        width: 404px;
    }
    .auto-style33 {
        height: 30px;
        width: 404px;
    }
    .auto-style34 {
        height: 29px;
        width: 404px;
    }
    .auto-style35 {
        height: 27px;
        width: 404px;
    }
    .auto-style36 {
        height: 35px;
        width: 404px;
    }
    .auto-style37 {
        width: 404px;
    }
    .auto-style38 {
        height: 41px;
        width: 404px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td class="auto-style17">First Name:</td>
        <td class="auto-style32">
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="auto-style28" Width="159px"></asp:TextBox>
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name can not be blank"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Last Name:</td>
        <td class="auto-style32">
            <asp:TextBox ID="txtLastName" runat="server" CssClass="auto-style26" Width="159px"></asp:TextBox>
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name can not be blank"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Company:</td>
        <td class="auto-style33">
            <asp:TextBox ID="txtCompany" runat="server" CssClass="auto-style28" Width="153px"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCompany" ErrorMessage="Company  name can not be blank"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">Visiting:</td>
        <td class="auto-style34">
            <asp:TextBox ID="txtVisiting" runat="server" CssClass="auto-style27" Width="153px"></asp:TextBox>
        </td>
        <td class="auto-style20">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtVisiting" ErrorMessage="enter the company name for visit"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">ID Type:</td>
        <td class="auto-style35">
            <asp:TextBox ID="txtIDType" runat="server" Width="149px"></asp:TextBox>
&nbsp;ID Num:<asp:TextBox ID="txtIDNum" runat="server" CssClass="auto-style29" Width="162px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtIDType" ErrorMessage="Give Some ID "></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtIDNum" ErrorMessage="enter id number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">Vehicle Number:</td>
        <td class="auto-style34">
            <asp:TextBox ID="txtVehicleType" runat="server" Width="163px"></asp:TextBox>
        </td>
        <td class="auto-style20">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtVehicleType" ErrorMessage="incorrect format of vehicle number" ValidationExpression="^[A-Z]{2}[0-9]{2}[-][A-Z]{2}[0-9]{4}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Contact Number:</td>
        <td class="auto-style33">
            <asp:TextBox ID="txtContactNumber" runat="server" Width="187px"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtContactNumber" ErrorMessage="enter contact number"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContactNumber" ErrorMessage="mobile no should contain exactly 10digits" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style30">Purpose of Visit:</td>
        <td class="auto-style36">
            <asp:TextBox ID="txtPurposeOfVisit" runat="server" Height="18px" Width="253px"></asp:TextBox>
        </td>
        <td class="auto-style31">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPurposeOfVisit" ErrorMessage="give the purpose of visit"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style37">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23">
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
        </td>
        <td class="auto-style38">
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </td>
        <td class="auto-style24">&nbsp;</td>
    </tr>
</table>
</asp:Content>
