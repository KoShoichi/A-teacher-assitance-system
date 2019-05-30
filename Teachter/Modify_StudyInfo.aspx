<%@ Page Language="C#" MasterPageFile="~/Teachter/MasterPage.master" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"  CodeFile="Modify_StudyInfo.aspx.cs" Inherits="Admin_Modify_StudyInfo" Title="Untitled Page" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="3" cellspacing="1" class="" style="width: 100%">
        <tr>
            <td class="left_title_1" height="30" style="width: 88px">
                标题：</td>
            <td height="30" style="width: 621px">
                <asp:TextBox ID="txtname" runat="server" Width="569px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="left_title_1" style="width: 88px; height: 119px">
                内容：</td>
            <td style="width: 621px; height: 119px">
                <fckeditorv2:fckeditor id="txtcontents" runat="server" height="300px"></fckeditorv2:fckeditor>
            </td>
        </tr>
        <tr>
            <td align="center" class="left_title_1" colspan="2" style="height: 30px">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="56px">修改</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

