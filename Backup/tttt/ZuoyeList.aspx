<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ZuoyeList.aspx.cs" Inherits="ZuoyeList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gvFilms" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        BackColor="White" CellPadding="3" DataKeyNames="id" OnPageIndexChanging="gvFilms_PageIndexChanging"
        OnRowDataBound="gvFilms_RowDataBound" PageSize="12" Width="100%" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <PagerSettings FirstPageText="首页" LastPageText="尾页"
            NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
        <RowStyle HorizontalAlign="Left" ForeColor="#000066" />
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
       
            <asp:TemplateField HeaderText="下载作业">
                <ItemTemplate>
                    <a href='uploads/<%#Eval("SPath") %>' target="_blank">下载作业</a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="做作业">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "AddMyzuoye.aspx?id="+Eval("id") %>'
                        Text="做作业"></asp:HyperLink>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="50px" />
            </asp:TemplateField>
        </Columns>
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
        <PagerStyle BackColor="White" HorizontalAlign="Left" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
</asp:Content>

