<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StReg.aspx.cs" Inherits="StReg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align=center >
        <table id="__01" border="0" cellpadding="0" cellspacing="0" height="125" width="785">
            <tr>
                <td height="30">
                    <img alt="" height="30" src="images/login1_01.gif" width="785" /></td>
            </tr>
            <tr>
                <td background="images/login1_02.gif" height="18">
                    <table align="center" border="0" cellpadding="3" cellspacing="1" class="" style="width: 100%">
                        <tr>
                            <td class="left_title_1" height="30" style="width: 88px">
                                姓名：</td>
                            <td align="left" height="30" style="width: 621px">
                                <asp:TextBox ID="txtname" runat="server" Width="109px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td class="left_title_1" height="30" style="width: 88px">
                                性别：</td>
                            <td align="left" height="30" style="width: 621px">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="89px">
                                    <asp:ListItem>男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="color: #000000">
                            <td class="left_title_1" style="width: 88px; height: 30px">
                                专业：</td>
                            <td align="left" style="width: 621px; height: 30px">
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                                    Width="191px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="color: #000000">
                            <td class="left_title_1" style="width: 88px; height: 30px">
                                班级：</td>
                            <td align="left" style="width: 621px; height: 30px">
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="132px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td class="left_title_1" style="width: 88px; height: 119px">
                                个人描述：</td>
                            <td align="left" style="width: 621px; height: 119px">
                                <asp:TextBox ID="txtds" runat="server" Height="115px" OnTextChanged="txtds_TextChanged"
                                    TextMode="MultiLine" Width="473px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="left_title_1" height="30" style="width: 88px">
                                登录密码：</td>
                            <td align="left" height="30" style="width: 621px">
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="center" class="left_title_1" colspan="2" style="height: 30px">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="56px">注册</asp:LinkButton></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="39">
                    <asp:ImageButton ID="ibtnLogin" runat="server" ImageUrl="~/Images/login1_03.gif" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
