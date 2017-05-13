<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yeni2.aspx.cs" Inherits="Emarket.admin.yeni2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../kullanici.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="height:auto; width:auto;">
    
       
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmarketDBConnectionString %>" SelectCommand="SELECT id, ad, birim_fiyat, resim FROM urun WHERE (kategori_id = '1')"></asp:SqlDataSource>
        
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" GroupItemCount="3" OnItemCommand="ListView1_ItemCommand">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775; text-align:center;">
                    <asp:Image ID="Image1" runat="server" Height="191px" ImageUrl='<%# Eval("resim") %>' Width="307px" />
                    <br />
                    <asp:Label ID="adLabel" runat="server" Text='<%# Eval("ad") %>' CssClass="takeItcenter" />
                    <br />
                    <asp:Label ID="birim_fiyatLabel" runat="server" Text='<%# Eval("birim_fiyat") %>' CssClass="takeItcenter" />
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="Blue" CommandArgument='<%# Eval("id") %>' Font-Bold="True" ForeColor="White" Height="41px" Text="Sepete Ekle" Width="172px" CssClass="takeItcenter" />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />ad:
                    <asp:TextBox ID="adTextBox" runat="server" Text='<%# Bind("ad") %>' />
                    <br />birim_fiyat:
                    <asp:TextBox ID="birim_fiyatTextBox" runat="server" Text='<%# Bind("birim_fiyat") %>' />
                    <br />resim:
                    <asp:TextBox ID="resimTextBox" runat="server" Text='<%# Bind("resim") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
                    <br />birim_fiyat:
                    <asp:TextBox ID="birim_fiyatTextBox" runat="server" Text='<%# Bind("birim_fiyat") %>' />
                    <br />resim:
                    <asp:TextBox ID="resimTextBox" runat="server" Text='<%# Bind("resim") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
           
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF;color: #333333; text-align:center;">
                    <asp:Image ID="Image1" runat="server" Height="191px" ImageUrl='<%# Eval("resim") %>' Width="307px" />
                    <br />
                    
                    <asp:Label ID="adLabel1" runat="server" Text='<%# Eval("ad") %>' Font-Bold="True" CssClass="takeItcenter" />
                    <br />
                    <asp:Label ID="birim_fiyatLabel" runat="server" Text='<%# Eval("birim_fiyat") %>' CssClass="takeItcenter" />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="Blue" CommandArgument='<%# Eval("id") %>' Font-Bold="True" ForeColor="White" Height="41px" Text="Sepete Ekle" Width="172px" CssClass="takeItcenter" OnClick="Button1_Click" />
                    <br /></td>
            </ItemTemplate>
            
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />ad:
                    <asp:Label ID="adLabel" runat="server" Text='<%# Eval("ad") %>' />
                    <br />birim_fiyat:
                    <asp:Label ID="birim_fiyatLabel" runat="server" Text='<%# Eval("birim_fiyat") %>' />
                    <br />resim:
                    <asp:Label ID="resimLabel" runat="server" Text='<%# Eval("resim") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <asp:DataPager ID="DataPager2" runat="server" PagedControlID="ListView1" PageSize="3">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
            </Fields>
        </asp:DataPager>
    
    </div>
    </form>
</body>
</html>
