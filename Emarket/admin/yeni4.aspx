<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yeni4.aspx.cs" Inherits="Emarket.admin.yeni4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Repeater ID="D1" runat="server" OnItemCommand="D1_ItemCommand">
        <HeaderTemplate>
           

            
        </HeaderTemplate>
        <ItemTemplate>
            <div style="height:300px; width:600px; border-style:solid; border-width:2px;">
            <div style="height:300px; width:200px; float:left; border-style:solid; border-width:2px;">

                 <img src="<%#Eval("resim") %>"" height "300" width="200" />
            </div>
            <div style="height:300px; width:395px; float: left; border-style:solid; border-width:2px;">

                <%#Eval("ad") %>
                <%#Eval("birim_fiyat") %>
            </div>

                </div>
           
        </ItemTemplate>
        <FooterTemplate>
            
        </FooterTemplate>
    </asp:Repeater>
        <asp:Button ID="b1" runat="server" Text="Sepete Ekle" OnClick="b1_Click" />
    </div>
    </form>
</body>
</html>
