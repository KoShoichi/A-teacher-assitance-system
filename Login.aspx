<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 408px;
            height: 292px;
        }
        .style2
        {
            width: 1056px;
            height: 90px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="0" cellpadding="0" cellspacing="0" height="284" width="676">
            <tr>
                <td align="left" style="height: 84px">
                    <table border="0" cellpadding="0" cellspacing="0" 
                        style="width: 913px; height: 71px">
                        <tr>
                            <td align="right" bgcolor="#ffffff">
                                <img alt="" class="style2" src="Images/biaotilogin.jpg"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table id="__01" border="0" cellpadding="0" cellspacing="0" height="125" width="785">
                        <tr>
                            <td height="30">
                                <img alt="" height="30" src="images/login1_01.gif" width="785" /></td>
                        </tr>
                        <tr>
                            <td background="images/login1_02.gif" height="18">
                                <table align="center" border="0" cellpadding="0" cellspacing="0" width="776">
                                    <tr>
                                        <td align="center" width="401">
                                            <img alt="" class="style1" src="Images/login.jpg" /></td>
                                        <td width="375">
                                            <table border="0" cellpadding="0" cellspacing="0" height="198" width="332">
                                                <tr>
                                                    <td class="henhong" style="height: 30px" valign="top">
                                                        <table border="0" cellpadding="0" cellspacing="0" height="40" width="332">
                                                            <tr>
                                                                <td valign="top">
                                                                    用户名：&nbsp; 
                                                                    <asp:TextBox ID="UserName" runat="server" Width="185px"></asp:TextBox>
                                                                    <br />
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                                                        ErrorMessage="请输入登陆昵称"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table border="0" cellpadding="0" cellspacing="0" height="40" width="332">
                                                            <tr>
                                                                <td valign="top">
                                                                    密 &nbsp; 码：
                                                                    <asp:TextBox ID="PassWord" runat="server" TextMode="Password" Width="185px"></asp:TextBox>
                                                                    <br />
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassWord"
                                                                        ErrorMessage="请输入登陆密码"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                             <table width="332" height="40" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td valign="top">角 &nbsp;&nbsp;色：
                             
                              <asp:DropDownList ID="DropDownList1" runat="server" Height="37px" Width="186px">
                                  <asp:ListItem>管理员</asp:ListItem>
                                  <asp:ListItem>学生</asp:ListItem>
                                  <asp:ListItem>教师</asp:ListItem>
                              </asp:DropDownList>
                            </td>
                        </tr>
                      </table>
                                                        <table align="center" border="0" cellpadding="0" cellspacing="0" height="34" width="320">
                                                            <tr>
                                                                <td>
                                                                    <asp:ImageButton ID="ibtnLogin" runat="server" Height="38px" ImageUrl="~/Images/loginb.gif"
                                                                        OnClick="ibtnLogin_Click" Width="127px" />
                                                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" ImageUrl="~/Images/Regb.gif"
                                                                        OnClick="ImageButton1_Click" /><br />
                                                                    <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height="39">
                                <img alt="" height="39" src="images/login1_03.gif" width="785" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
