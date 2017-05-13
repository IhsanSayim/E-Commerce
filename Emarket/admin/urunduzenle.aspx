<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpanel.Master" AutoEventWireup="true" CodeBehind="urunduzenle.aspx.cs" Inherits="Emarket.admin.urunduzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 48px;
        }
        .auto-style2 {
            height: 49px;
        }
        .auto-style4 {
            height: 51px;
        }
        .auto-style7 {
            height: 57px;
        }
        .auto-style8 {
            height: 56px;
        }
        .auto-style9 {
            height: 55px;
        }
        .auto-style10 {
            height: 54px;
        }
        .auto-style11 {
            height: 51px;
            width: 779px;
        }
        .auto-style12 {
            height: 57px;
            width: 779px;
        }
        .auto-style13 {
            height: 56px;
            width: 779px;
        }
        .auto-style14 {
            height: 55px;
            width: 779px;
        }
        .auto-style15 {
            height: 54px;
            width: 779px;
        }
        .auto-style16 {
            width: 779px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:30px; background-color:#385be2; color:white; font-weight:bolder; border-radius:5px;">&nbsp;&nbsp;&nbsp; Ürün Düzeltme Paneli</div>
    <asp:Panel ID="pnl_urunEkle" runat="server">
        &nbsp;<table class="auto-style1" style="text-align: right; color: #FFFFFF; border:solid 1px #6bb6db; border-radius:5px;">
            <tr>
                <td class="auto-style4" style="color: #000000">Kategori Adı:</td>
                <td class="auto-style11" style="text-align: left">
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="ddl_kategoriadi" runat="server" DataSourceID="SqlDSkategori" DataTextField="ad" DataValueField="ad" CssClass="xxxx">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSkategori" runat="server" ConnectionString="<%$ ConnectionStrings:EmarketDBConnectionString %>" SelectCommand="SELECT [ad] FROM [kategori]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="color: #000000">Marka Adı:</td>
                <td class="auto-style12" style="text-align: left">
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="ddl_markaadi" runat="server" DataSourceID="SqlDSmarka" DataTextField="ad" DataValueField="ad" CssClass="xxxx">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSmarka" runat="server" ConnectionString="<%$ ConnectionStrings:EmarketDBConnectionString %>" SelectCommand="SELECT [ad] FROM [marka]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="color: #000000">Ürün Adı:</td>
                <td style="text-align: left" class="auto-style13">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txt_urunadi" runat="server" CssClass="textboxGorsel" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="color: #000000">Birim Fiyat:</td>
                <td style="text-align: left" class="auto-style14">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txt_birimfiyat" runat="server" CssClass="textboxGorsel" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="color: #000000">Ürün Kodu:</td>
                <td style="text-align: left" class="auto-style15">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txt_urunkodu" runat="server" CssClass="textboxGorsel" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #000000">Ürün Açıklaması:</td>
                <td style="text-align: left" class="auto-style16">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txt_urunaciklama" runat="server" Height="98px" Width="297px" CssClass="xxxx"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td style="text-align: left" class="auto-style16">
                 
                    <asp:Button ID="btn_kaydet" runat="server" Text="Kaydet" CssClass="buttonGorsel" BackColor="#999999" style="border-radius:5px; font-size:15px; height:34px; width:60px;" OnClick="btn_kaydet_Click"/>
                 
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
