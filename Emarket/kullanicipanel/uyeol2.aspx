<%@ Page Title="" Language="C#" MasterPageFile="~/kullanicipanel/uyepaneli.Master" AutoEventWireup="true" CodeBehind="uyeol2.aspx.cs" Inherits="Emarket.kullanicipanel.uyeol2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 70px;
            width: 250px;
        }
        .auto-style5 {
            height: 75px;
            width: 250px;
        }
        .auto-style6 {
            height: 38px;
        }
        .auto-style8 {
            height: 50px;
        }
        .auto-style9 {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="19pt" ForeColor="#385BE2" Text="Yeni Üyelik"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="11pt" Text="MOO Sanal market üyeliğiniz yoksa aşağıdaki alandan üye olabilirsiniz."></asp:Label>
    <br />
    <br />
    <br />
    <table class="auto-style2">
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Kullanıcı Adı:" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_kkullaniciadi" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Şifre:" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_ksifre" runat="server" CssClass="textbox" TextMode="Password" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="E-Posta Adresi:" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_email" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Ad:" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_ad" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Soyad:" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_soyad" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label8" runat="server" Text="Cinsiyet" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:RadioButton ID="rbtn_erkek" runat="server" Text="Erkek" GroupName="cinsiyet" OnCheckedChanged="rbtn_erkek_CheckedChanged" />
                <asp:RadioButton ID="rbtn_kadın" runat="server" Text="Kadın" GroupName="cinsiyet" OnCheckedChanged="rbtn_kadın_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label9" runat="server" Text="Telefon Numarası" Font-Bold="True" Font-Size="13pt"></asp:Label>

            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_telefon" runat="server" CssClass="textbox" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_telefon" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="0\([0-9]{3}\)-[0-9]{3}-[0-9]{2}-[0-9]{2}"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label10" runat="server" Text="Açıklama" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td style="border-radius: 5px;" class="auto-style9">
                <textarea id="txta_aciklama" name="S2" class="auto-style4" style="border: 1px solid #999999; border-radius:5px;"></textarea></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label11" runat="server" Text="İl" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddl_il" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_il_SelectedIndexChanged" CssClass="xxxx" Height="18px" Width="120px" >
                   
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label12" runat="server" Text="İlçe" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddl_ilce" runat="server" CssClass="xxxx" Height="21px" Width="120px">
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label13" runat="server" Text="Açık Adres" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </td>
            <td style="border-radius: 5px;">
                <textarea id="txta_acikadres" name="S1" class="auto-style5" style="border: 1px solid #999999;  border-radius:5px;"></textarea></td>
        </tr>
        <tr>
            <td class="auto-style8">
               
            </td>
            <td style="border-radius: 5px;" class="auto-style8">
                <asp:Button ID="btn_kaydet" runat="server" Text="Kaydet" Height="34px" Width="60px" CssClass="auto-style1" BackColor="#999999" style="border-radius:5px; font-size:15px;" OnClick="btn_kaydet_Click1" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
