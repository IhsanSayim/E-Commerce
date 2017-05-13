<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="Emarket.sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:#385be2; border-radius:5px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Sepetinizdeki Ürünler" ForeColor="White" Font-Bold="True" Font-Size="15pt"></asp:Label></div>

     <asp:DataList ID="d1" runat="server" Width="925px">
            <HeaderTemplate>
                <br />
                <table style=" color:#373737; width:925px; border-color:#373737; border-width:1px;" border="1">
                    <tr style="font-weight:bold;">
                        <td>Ürün Resmi</td>
                        <td>Ürün Adı</td>
                        <td>Ürün Fiyatı</td>
                        <td>Ürün Miktarı</td>
                        
                    </tr>
                    <tr>
                        <td>&nbsp</td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr style="width:925px; height:auto; color:#373737; border:1px solid #808080;" runat="server">
                    <td ><img src="<%#Eval("resim") %>" height="100" width="100" /></td>
                    <td><%#Eval("ad") %></td>
                    <td><%#Eval("birim_fiyat") %> ₺</td>
                    <td><%#Eval("miktar") %></td>
                    <td><a href="admin/delete_cart.aspx?id=<%#Eval("id") %>">
                        <asp:Label ID="Label2" runat="server" Text="Sil" Font-Bold="True" Font-Size="13pt"></asp:Label></a></td>
                    
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>

        </asp:DataList>
        <br />
        <p style="text-align:right;">
            <asp:Label ID="l1" runat="server"></asp:Label> ₺
            
        </p>
</asp:Content>
