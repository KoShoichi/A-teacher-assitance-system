<%@ Page Language="C#" MasterPageFile="~/Teachter/MasterPage.master" AutoEventWireup="true" CodeFile="~/Teachter/LyList.aspx.cs" Inherits="LyList" Title="Untitled Page" %>
<%@ Register src="~/Teachter/PageCtrl.ascx" tagname="PageCtrl" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="__01" border="0" cellpadding="0" cellspacing="0" height="125" width="785">
        <tr>
            <td   height="18">
                <table align="center" border="0" cellpadding="3" cellspacing="1" class="" style="width: 100%">
                    <tr>
                        <td class="left_title_1" colspan="2" height="30">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="3" DataSourceID="SqlDataSource1" EmptyDataText="暂无信息"
                                PageSize="18" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None">
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="ShowTopic.aspx?id={0}"
                                        DataTextField="Topic" HeaderText="问题标题">
                                        <HeaderStyle Height="30px" Width="400px" />
                                        <ItemStyle Height="30px" Width="400px" />
                                    </asp:HyperLinkField>
                                    <asp:BoundField DataField="AddUser" HeaderText="发布人">
                                        <HeaderStyle Height="30px" Width="100px" />
                                        <ItemStyle Height="30px" Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Addtime" DataFormatString="{0:d}" HeaderText="时间">
                                        <HeaderStyle Height="30px" Width="100px" />
                                        <ItemStyle Height="30px" Width="100px" />
                                    </asp:BoundField>
                                </Columns>
                                <RowStyle ForeColor="#000066" />
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="left_title_1" colspan="2" height="30">
                            <uc1:pagectrl id="PageCtrl1" runat="server"></uc1:pagectrl>
                        </td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlcon %>">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

