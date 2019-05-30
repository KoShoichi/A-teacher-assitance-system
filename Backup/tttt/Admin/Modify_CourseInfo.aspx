<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Modify_CourseInfo.aspx.cs" Inherits="Admin_Modify_CourseInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;课程名称：<asp:TextBox ID="txtUser" runat="server" Width="79px"></asp:TextBox>&nbsp;
    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="修改" />&nbsp;
    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

