<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMyzuoye.aspx.cs" Inherits="AddMyzuoye" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        width="100%">
        <tr>
            <td background="images/bg.gif" bgcolor="#ffffff" class="STYLE3" colspan="4" style="height: 22px">
                <div align="center">
                    提交我的作业<asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></div>
            </td>
        </tr>
        <tr style="color: #000000">
            <td align="left" bgcolor="#ffffff" class="STYLE1" colspan="4">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td class="STYLE1" nowrap="nowrap" style="width: 99px; height: 32px">
                            <div align="left">
                                作业名称：</div>
                        </td>
                        <td class="STYLE1" colspan="3" style="height: 32px">
                            <div align="left">
                                &nbsp;<asp:TextBox ID="txtTitle" runat="server" Width="428px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
                                    ErrorMessage="*"></asp:RequiredFieldValidator></div>
                        </td>
                    </tr>
                    <tr style="color: #000000">
                        <td class="STYLE1" nowrap="nowrap" style="width: 99px; height: 34px">
                            <div align="left">
                                科目：</div>
                        </td>
                        <td class="STYLE1" colspan="3" style="height: 34px">
                            <div align="left">
                                &nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="STYLE1" style="width: 99px; height: 164px">
                            <div align="center" nowrap="nowrap">
                                <div align="left">
                                    作业说明：</div>
                            </div>
                        </td>
                        <td class="STYLE1" colspan="3" style="height: 164px">
                            <div align="left">
                                &nbsp;
                                <asp:TextBox ID="txtDs" runat="server" Height="215px" TextMode="MultiLine" Width="486px"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDs" ErrorMessage="*"></asp:RequiredFieldValidator></div>
                        </td>
                        <td class="STYLE1" colspan="1" style="height: 164px">
                        </td>
                    </tr>
                    <tr>
                        <td class="STYLE1" style="width: 99px; height: 35px">
                            <div align="center" nowrap="nowrap">
                                <div align="left">
                                    上传作业：</div>
                            </div>
                        </td>
                        <td class="STYLE1" colspan="3" style="height: 35px">
                            <div align="left">
                                <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                                    id="file1" runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button
                                        ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                                        OnClick="Button1_Click" Text="上传我的作业" Width="131px" /><asp:Label ID="Label1" runat="server"
                                            Visible="False" Width="60px"></asp:Label>
                                &nbsp; &nbsp; 类型：Doc，PDF，RAR，Zip</div>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="STYLE1" colspan="4" height="40">
                            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="添加" />
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

