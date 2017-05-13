<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpanel.Master" AutoEventWireup="true" CodeBehind="urungunleme.aspx.cs" Inherits="Emarket.admin.urungunleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 576px;
        }
        .auto-style3 {
            width: 153px;
        }
        .auto-style4 {
            width: 24px;
            height: 24px;
        }
        .auto-style5 {
            width: 32px;
            height: 32px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:30px; background-color:#385be2; color:white; font-weight:bolder; border-radius:5px;">&nbsp;&nbsp;&nbsp; Ürün Günleme Paneli<br />
        <br />
        <br />
    </div>
    <asp:Panel ID="Panel1" runat="server" Width="925px">
        <br />
        <asp:DataList ID="dl_urungunleme" runat="server" OnSelectedIndexChanged="dl_urungunleme_SelectedIndexChanged" Width="925px">
            <HeaderTemplate>
                <table class="auto-style1" style="border:solid 1px #6bb6db; border-radius:5px;">
                    <tr style="border:solid 1px #6bb6db; border-radius:5px;">
                        <td class="auto-style2" >Ürün Adı</td>
                        <td class="auto-style3" >Düzenle</td>
                        <td>&nbsp;Sil</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style1" style="border:solid 1px #6bb6db; border-radius:5px;">
                    <tr style="border:solid 1px #6bb6db; border-radius:5px;">
                        <td class="auto-style2">
                            <asp:Literal ID="lt_urunad" runat="server" Text='<%# Eval("ad") %>'></asp:Literal>
                        </td>
                        <td class="auto-style3">
                            <a href="urunduzenle.aspx?urunID=<%#Eval ("id") %>&islem=duzenle"><img alt="" class="auto-style5" src="img/update.png" /></a>
                        </td>
                        <td>
                            <a href="urungunleme.aspx?urunID=<%#Eval ("id") %>&islem=sil"><img alt="" class="auto-style4" src="img/delete.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
