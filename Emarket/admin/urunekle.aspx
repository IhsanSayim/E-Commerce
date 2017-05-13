<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpanel.Master" AutoEventWireup="true" CodeBehind="urunekle.aspx.cs" Inherits="Emarket.admin.urunekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 231px;
        }
        .auto-style3 {
            width: 231px;
            height: 51px;
        }
        .auto-style4 {
            height: 51px;
        }
        .auto-style5 {
            width: 231px;
            height: 50px;
        }
        .auto-style6 {
            height: 50px;
        }
    .auto-style7 {
        width: 231px;
        height: 70px;
    }
    .auto-style8 {
        height: 70px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:30px; background-color:#4d7ee5; color:white; font-weight:bolder; border-radius:5px;">&nbsp;&nbsp;&nbsp; Ürün Ekleme Paneli</div>
    <asp:Panel ID="pnl_urunEkle" runat="server">
        &nbsp;<table class="auto-style1" style="text-align: right; color: #FFFFFF; border:solid 1px #6bb6db; border-radius:5px;">
            <tr>
                <td class="auto-style3" style="color: #000000">Kategori Adı:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:DropDownList ID="ddl_kategoriadi" runat="server" DataSourceID="SqlDSkategori" DataTextField="ad" DataValueField="ad" CssClass="xxxx">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSkategori" runat="server" ConnectionString="<%$ ConnectionStrings:EmarketDBConnectionString %>" SelectCommand="SELECT [ad] FROM [kategori]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="color: #000000">Marka Adı:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:DropDownList ID="ddl_markaadi" runat="server" DataSourceID="SqlDSmarka" DataTextField="ad" DataValueField="ad" CssClass="xxxx">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSmarka" runat="server" ConnectionString="<%$ ConnectionStrings:EmarketDBConnectionString %>" SelectCommand="SELECT [ad] FROM [marka]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="color: #000000">Ürün Adı:</td>
                <td style="text-align: left" class="auto-style6">
                    <asp:TextBox ID="txt_urunadi" runat="server"  CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="color: #000000">Birim Fiyat:</td>
                <td style="text-align: left" class="auto-style6">
                    <asp:TextBox ID="txt_birimfiyat" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="color: #000000">Ürün Kodu:</td>
                <td style="text-align: left" class="auto-style6">
                    <asp:TextBox ID="txt_urunkodu" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #000000">Ürün Açıklaması:</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txt_urunaciklama" runat="server" Height="98px" Width="297px" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style5" style="color: #000000">Ürün Resmi:</td>
                <td style="text-align: left" class="auto-style6">
                   
                    <asp:FileUpload ID="fu_urunresim" runat="server" Height="25px" Width="298px" BorderColor="#999999" BorderWidth="1px" CssClass="xxxx" />
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td style="text-align: left" class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="buttonGorsel" Height="46px" OnClick="Button1_Click" Text="Ürün Ekle" Width="101px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
