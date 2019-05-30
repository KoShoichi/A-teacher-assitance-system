<%@ Page Language="C#" MasterPageFile="~/Teachter/MasterPage.master" AutoEventWireup="true" CodeFile="ZuoyeList.aspx.cs" Inherits="Admin_ZuoyeList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        width="100%">
        <tr>
            <td class="STYLE1" colspan="4" style="width: 100%; background-color: #ffffff">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="center" style="width: 100%; height: 10px" valign="top">
                            <asp:GridView ID="gvFilms" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                CellPadding="3" DataKeyNames="id" OnPageIndexChanging="gvFilms_PageIndexChanging"
                                OnRowDataBound="gvFilms_RowDataBound" OnRowDeleted="gvFilms_RowDeleted" OnRowDeleting="gvFilms_RowDeleting"
                                PageSize="12" Width="100%">
                                <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PageButtonCount="12"
                                    PreviousPageText="上一页" />
                                <RowStyle ForeColor="#000066" HorizontalAlign="Left" />
                                <Columns>
                                    <asp:TemplateField HeaderText="作业名称">
                                        <ItemTemplate>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("Sname") %>' Width="322px"></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="200px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="科目">
                                        <ItemTemplate>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("SClassName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="80px" />
                                    </asp:TemplateField>
                               
                                    <asp:TemplateField HeaderText="下载作业">
                                        <ItemTemplate>
                                            <a href='../uploads/<%#Eval("SPath") %>' target="_blank">下载作业</a>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="100px" />
                                    </asp:TemplateField>
                                        <asp:TemplateField HeaderText="修改">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "Modify_ZuoYe.aspx?id="+Eval("id") %>'
                        Text="修改"></asp:HyperLink>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="200px" />
            </asp:TemplateField>
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <PagerTemplate>
                                    <table border="0" width="100%">
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                                    Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                                <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                                    CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                                <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                                    Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                                <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                                    Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                                共
                                                <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                                第
                                                <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                            </td>
                                            <td align="right" width="20%">
                                            </td>
                                        </tr>
                                    </table>
                                </PagerTemplate>
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                </td>
        </tr>
        <tr>
            <td align="center" background="images/bg.gif" bgcolor="#ffffff" class="STYLE3" colspan="4"
                style="width: 717px; height: 22px">
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

