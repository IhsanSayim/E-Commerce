<%@ Page Title="" Language="C#" MasterPageFile="~/kullanicipanel/uyepaneli.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="Emarket.kullanicipanel.profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 180px;
        }
        .auto-style10 {
            height: 50px;
        }

        .auto-style11 {
            height: 70px;
            width: 300px;
        }

        </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Profil Düzenle" ForeColor="#385BE2" Font-Size="19pt"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <table class="auto-style2">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="Kullanıcı Adı" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txt_kullaniciadi" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="Şifre" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_sifre" runat="server" CssClass="textbox" TextMode="Password" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label4" runat="server" Text="E-mail" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_email" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Text="Ad" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_ad" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label7" runat="server" Text="Soyad" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_soyad" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label6" runat="server" Text="Cinsiyet" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="rbtn_erkek" runat="server" Text="Erkek" GroupName="cinsiyet"/>
                <asp:RadioButton ID="rbtn_kadın" runat="server" Text="Kadın" GroupName="cinsiyet" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label8" runat="server" Text="Telefon Numarası" Font-Bold="True" Font-Size="13pt"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="txt_telefon" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_telefon" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="0\([0-9]{3}\)-[0-9]{3}-[0-9]{2}-[0-9]{2}"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label9" runat="server" Text="Açıklama" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td style="border-radius:5px;">
                <textarea id="txta_aciklama" name="S2" class="auto-style11" style="border: 1px solid #999999; border-radius: 5px;" ></textarea></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label10" runat="server" Text="İl" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="ddl_il" runat="server" Height="24px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="120px" DataTextField="ad" DataValueField="ad" DataSourceID="SqlDSil" CssClass="xxxx">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDSil" runat="server" ConnectionString="<%$ ConnectionStrings:EmarketDBConnectionString %>" SelectCommand="SELECT [ad] FROM [il]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label11" runat="server" Text="İlçe" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddl_ilce" runat="server" Height="24px" Width="120px" DataTextField="ad" DataValueField="ad" OnSelectedIndexChanged="ddl_ilce_SelectedIndexChanged" DataSourceID="SqlDSilcee" AutoPostBack="True" CssClass="xxxx">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDSilcee" runat="server" ConnectionString="<%$ ConnectionStrings:EmarketDBConnectionString %>" SelectCommand="SELECT [ad] FROM [ilce]"></asp:SqlDataSource>
            </td>
        </tr>
    
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label14" runat="server" Text="Açık Adres" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td style="border-radius:5px;">
                <textarea id="txta_acikadres" name="S1" class="auto-style11" style="border: 1px solid #999999; border-radius: 5px;"></textarea></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <asp:Button ID="btn_kaydet" runat="server" Text="Kaydet"  style="border-radius:5px;" BackColor="#999999" Height="34px" Width="75px" OnClick="btn_kaydet_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
