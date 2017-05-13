<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="Emarket.admin.admingiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admib giriş paneli</title>
    <link href="admingiris.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="kutu">
        <div>
            <asp:TextBox ID="txt_kullaniciadi" runat="server" placeholder=" Kullanıcı Adı"></asp:TextBox></div>
        <div>
            <asp:TextBox ID="txt_sifre" runat="server" TextMode="Password" placeholder=" Şifre" ></asp:TextBox></div>
      <div>
          <asp:Button ID="btn_giris" runat="server" Text="GİRİŞ" OnClick="btn_giris_Click" /></div>
       <div class="hata">
           <asp:Label ID="lbl_hata" runat="server" Text="*Hatalı Giriş" Visible="False"></asp:Label></div>
    </div>
    </form>
</body>
</html>
