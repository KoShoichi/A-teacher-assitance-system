<%@ Page Language="C#" MasterPageFile="~/Teachter/MasterPage.master" AutoEventWireup="true" CodeFile="AddFen.aspx.cs" Inherits="Admin_AddFen" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        width="100%">
        <tr>
            <td background="images/bg.gif" bgcolor="#ffffff" class="STYLE3" colspan="4" height="22">
                <div align="center">
                    作业成绩添加</div>
            </td>
        </tr>
        <tr>
            <td align="left" bgcolor="#ffffff" class="STYLE1" colspan="4">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td class="STYLE1" nowrap="nowrap" style="width: 99px; height: 32px">
                            <div align="left">
                                作业名称：</div>
                        </td>
                        <td class="STYLE1" colspan="3" style="height: 32px">
                            <div align="left">
                                <asp:Label ID="txtTitle" runat="server" Text="Label" Width="450px"></asp:Label>&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="STYLE1" nowrap="nowrap" style="width: 99px; height: 33px">
                            <div align="left">
                                作业科目：</div>
                        </td>
                        <td class="STYLE1" colspan="3" style="height: 33px">
                            <div align="left">
                                &nbsp;<asp:Label ID="ddClass" runat="server"></asp:Label></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="STYLE1" style="width: 99px; height: 40px">
                            <div align="center" nowrap="nowrap">
                                <div align="left">
                                    提交学生：</div>
                            </div>
                        </td>
                        <td class="STYLE1" colspan="3" style="height: 40px">
                            <div align="left">
                                <asp:Label ID="student" runat="server"></asp:Label>&nbsp;</div>
                        </td>
                        <td class="STYLE1" colspan="1" style="height: 40px">
                        </td>
                    </tr>
                    <tr>
                        <td class="STYLE1" style="width: 99px; height: 41px">
                            <div align="center" nowrap="nowrap">
                                <div align="left">
                                    作业描述：</div>
                            </div>
                        </td>
                        <td class="STYLE1" colspan="3" style="height: 41px">
                            <div align="left">
                                <asp:Label ID="ds" runat="server"></asp:Label>
                            </div>
                        </td>
                        <td class="STYLE1" colspan="1" style="height: 41px">
                        </td>
                    </tr>
                    <tr>
                        <td class="STYLE1" style="width: 99px; height: 35px">
                            <div align="center" nowrap="nowrap">
                                <div align="left">
                                    作业附件：</div>
                            </div>
                        </td>
                        <td class="STYLE1" colspan="3" style="height: 35px">
                            <asp:HyperLink ID="HyperLink1" runat="server">下载学生作业</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="STYLE1" style="width: 99px; height: 35px">
                            评分：</td>
                        <td class="STYLE1" colspan="3" style="height: 35px">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                ErrorMessage="请输入分数"></asp:RequiredFieldValidator>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="评分" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

