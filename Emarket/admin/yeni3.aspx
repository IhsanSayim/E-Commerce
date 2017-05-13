<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yeni3.aspx.cs" Inherits="Emarket.admin.yeni3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../kullanici.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 252px;
        }
        .auto-style2 {
            height: 277px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height:auto; width:auto; background-color:white;">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmarketDBConnectionString %>" SelectCommand="SELECT [id],[ad], [resim], [birim_fiyat] FROM [urun] where [kategori_id]='1'"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" OnItemCommand="ListView1_ItemCommand" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            
            <EditItemTemplate>
                <td runat="server" style="">ad:
                    <asp:TextBox ID="adTextBox" runat="server" Text='<%# Bind("ad") %>' />
                    <br />resim:
                    <asp:TextBox ID="resimTextBox" runat="server" Text='<%# Bind("resim") %>' />
                    <br />birim_fiyat:
                    <asp:TextBox ID="birim_fiyatTextBox" runat="server" Text='<%# Bind("birim_fiyat") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">ad:
                    <asp:TextBox ID="adTextBox" runat="server" Text='<%# Bind("ad") %>' />
                    <br />resim:
                    <asp:TextBox ID="resimTextBox" runat="server" Text='<%# Bind("resim") %>' />
                    <br />birim_fiyat:
                    <asp:TextBox ID="birim_fiyatTextBox" runat="server" Text='<%# Bind("birim_fiyat") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="text-align:center; font-size: 9px;" class="auto-style2">
                   <a href="yeni3.aspx?id=<%# Eval("id") %>"> <asp:Image ID="Image1" runat="server" Height="213px" ImageUrl='<%# Eval("resim") %>' Width="270px" /></a>
                    <br />
                    <asp:Label ID="adLabel" runat="server" Text='<%# Eval("ad") %>' Font-Size="11pt" ForeColor="#6699FF" />
                    <br />
                    <asp:Label ID="birim_fiyatLabel" runat="server" Text='<%# Eval("birim_fiyat") %>' Font-Size="9pt" ForeColor="#6699FF" />
                    &nbsp;TL<br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="10pt" Text="Adet:"></asp:Label>
                    <asp:TextBox ID="txt_adet" runat="server" BorderColor="#999999" BorderWidth="1px" Height="15px" OnDataBinding="Page_Load" OnTextChanged="txt_adet_TextChanged" Width="30px"></asp:TextBox>
                    <br />
                    
                    
                    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" CommandArgument='<%# Eval("id") %>' Text="Button" />
                    
                    
                    
                    <br />
                     
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server" class="auto-style1">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" class="auto-style1"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">ad:
                    <asp:Label ID="adLabel" runat="server" Text='<%# Eval("ad") %>' />
                    <br />resim:
                    <asp:Label ID="resimLabel" runat="server" Text='<%# Eval("resim") %>' />
                    <br />birim_fiyat:
                    <asp:Label ID="birim_fiyatLabel" runat="server" Text='<%# Eval("birim_fiyat") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>

        </div>
        </form>
    </body>
    </html>

         