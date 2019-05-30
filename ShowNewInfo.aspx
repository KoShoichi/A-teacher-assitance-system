<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowNewInfo.aspx.cs" Inherits="ShowNewInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="3" cellspacing="1" class="" style="width: 100%">
        <tr>
            <td class="left_title_1" height="30" style="width: 45px">
                标题：</td>
            <td height="30" style="width: 717px" align="left">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="left_title_1" style="width: 45px; height: 119px">
                内容：</td>
            <td style="width: 717px; height: 119px" align="left">
                <div id="DIV1" runat="server" style="width: 725px; height: 100px">
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

