<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Modify_ClassInfo.aspx.cs" Inherits="Admin_Modify_ClassInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    专业名称：<asp:DropDownList ID="DropDownList1" runat="server" Width="132px">
    </asp:DropDownList>班级名称：<asp:TextBox ID="TextBox1" runat="server" Width="156px"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="修改" />&nbsp;
    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

