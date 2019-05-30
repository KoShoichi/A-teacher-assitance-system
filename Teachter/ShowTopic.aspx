<%@ Page Language="C#" MasterPageFile="~/Teachter/MasterPage.master" AutoEventWireup="true" CodeFile="~/Teachter/ShowTopic.aspx.cs" EnableEventValidation="false" ValidateRequest="false"   Inherits="ShowTopic" Title="Untitled Page" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                <table align="center" border="0" cellpadding="3" cellspacing="1" class="" style="width: 100%">
                    <tr>
                        <td align="center" class="left_title_1" colspan="2" height="30">
                            &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" class="left_title_1" colspan="2" height="30">
                            发帖人：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            发帖时间：<asp:Label ID="Label2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" class="left_title_1" colspan="2" height="30">
                            <asp:Label ID="Label3" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" class="left_title_1" colspan="2" height="30">
                            <asp:DataList ID="DataList1" runat="server" Width="100%">
                                <ItemTemplate>
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 100%">
                                                姓名：<%#Eval("ReplayUser") %></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%">
                                                回答内容：<%#Eval("Replay") %></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%">
                                                回答时间：<%#Eval("AddTime","{0:d}") %></td>
                                        </tr>
                                    </table>
                                    <hr />
                                </ItemTemplate>
                            </asp:DataList></td>
                    </tr>
                    <tr>
                        <td align="left" class="left_title_1" colspan="2" style="height: 30px">
                            <fckeditorv2:fckeditor id="ArticleContent" runat="server" basepath="~/FCKeditor/">&nbsp;</fckeditorv2:fckeditor>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="left_title_1" colspan="2" style="height: 30px">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/1.gif" OnClick="ImageButton1_Click" /></td>
                    </tr>
                </table>
    
</asp:Content>

