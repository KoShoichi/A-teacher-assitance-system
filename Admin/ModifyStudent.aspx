<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ModifyStudent.aspx.cs" Inherits="Admin_ModifyStudent" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="3" cellspacing="1" class="" style="width: 100%">
        <tr>
            <td class="left_title_1" height="30" style="width: 88px">
                姓名：</td>
            <td height="30" style="width: 621px" align="left">
                <asp:TextBox ID="txtname" runat="server" Width="109px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td class="left_title_1" height="30" style="width: 88px">
                性别：</td>
            <td height="30" style="width: 621px" align="left">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="89px">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr style="color: #000000">
            <td class="left_title_1" style="width: 88px; height: 30px">
                专业：</td>
            <td style="width: 621px; height: 30px" align="left">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Width="191px">
                </asp:DropDownList></td>
        </tr>
        <tr style="color: #000000">
            <td class="left_title_1" style="width: 88px; height: 30px">
                班级：</td>
            <td style="width: 621px; height: 30px" align="left">
                <asp:DropDownList ID="DropDownList3" runat="server" Width="132px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="left_title_1" style="width: 88px; height: 119px">
                个人描述：</td>
            <td style="width: 621px; height: 119px" align="left">
                <asp:TextBox ID="txtds" runat="server" Height="115px" TextMode="MultiLine" Width="473px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="left_title_1" height="30" style="width: 88px">
                登录密码：</td>
            <td height="30" style="width: 621px" align="left">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" class="left_title_1" colspan="2" style="height: 30px">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="56px">修改</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

