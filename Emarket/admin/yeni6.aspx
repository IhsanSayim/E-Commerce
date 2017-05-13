<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yeni6.aspx.cs" Inherits="Emarket.admin.yeni6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:DataList ID="d1" runat="server" Width="100%">
            <HeaderTemplate>
                <table style="background-color:silver; color:white;font-weight:bold">
                    <tr>
                        <td>Ürün resmi</td>
                        <td>Ürün adı</td>
                        <td>Ürün fiyatı</td>
                        <td>Ürün miktarı</td>
                        <td>delete</td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><img src="<%#Eval("resim") %>" height="100" width="100" /></td>
                    <td><%#Eval("ad") %></td>
                    <td><%#Eval("birim_fiyat") %></td>
                    <td><%#Eval("miktar") %></td>
                    <td><a href="delete_cart.aspx?id=<%#Eval("id") %>">delete</a></td>
                    
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>

        </asp:DataList>
        <br />
        <p style="text-align:center;">
            <asp:Label ID="l1" runat="server"></asp:Label>
            <asp:Button ID="b1" runat="server" Text="checkout" OnClick="b1_Click" />
        </p>
    </div>
    </form>
</body>
</html>
