<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddTopic.aspx.cs" EnableEventValidation="false" ValidateRequest="false"  Inherits="AddTopic" Title="Untitled Page" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="3" cellspacing="1" class="" style="width: 100%">
        <tr>
            <td class="left_title_1" height="30" style="width: 309px">
                问题：</td>
            <td height="30" style="width: 1000px" align="left">
                <asp:TextBox ID="tb_title" runat="server" MaxLength="100" Rows="1" Width="493px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="left_title_1" style="width: 309px; height: 119px">
                内容：</td>
            <td style="width: 1000px; height: 119px" align="left">
                <fckeditorv2:fckeditor id="ArticleContent" runat="server" basepath="~/FCKeditor/">&nbsp;</fckeditorv2:fckeditor>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 16px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发布" /></td>
        </tr>
    </table>
</asp:Content>

