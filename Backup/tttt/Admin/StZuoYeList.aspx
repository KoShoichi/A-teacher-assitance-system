<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="StZuoYeList.aspx.cs" Inherits="Admin_StZuoYeList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        width="100%">
        <tr>
            <td background="../images/bg.gif" bgcolor="#ffffff" class="STYLE3" colspan="4" style="width: 717px;
                height: 22px">
                <div align="center">
                    学生提交的作业列表（等待老师查看并进行评分）</div>
            </td>
        </tr>
        <tr>
            <td class="STYLE1" colspan="4" style="width: 100%; background-color: #ffffff">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="center" style="width: 722px; height: 43px">
                            <asp:GridView ID="gvFilms" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                CellPadding="3" DataKeyNames="id" OnPageIndexChanging="gvFilms_PageIndexChanging"
                                OnRowDataBound="gvFilms_RowDataBound" PageSize="12" Width="100%">
                                <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PageButtonCount="12"
                                    PreviousPageText="上一页" />
                                <RowStyle ForeColor="#000066" HorizontalAlign="Left" />
                                <Columns>
                                    <asp:TemplateField HeaderText="作业名称">
                                        <ItemTemplate>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("Sname") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="200px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="作业科目">
                                        <ItemTemplate>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("SClassName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="80px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="提交学生">
                                        <ItemTemplate>
                                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("Student") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="80px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="下载作业">
                                        <ItemTemplate>
                                            <a href='../<%#Eval("SPath") %>' target="_blank">下载作业</a>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="100px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="评分">
                                        <ItemTemplate>
                                            <a href='AddFen.aspx?tid=<%#Eval("tid") %>&id=<%#Eval("ID") %>'>评分 </a>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" Width="30px" />
                                    </asp:TemplateField>
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
            </td>
        </tr>
    </table>
</asp:Content>

