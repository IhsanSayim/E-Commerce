<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="icecekler.aspx.cs" Inherits="Emarket.icecekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:DataList ID="dl_icecekler" runat="server" OnSelectedIndexChanged="dl_icecekler_SelectedIndexChanged" Width="100%">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6">
                        &nbsp;<asp:Image ID="img_icecekler" runat="server" Height="130px" ImageAlign="Middle" ImageUrl='<%# Eval("resim") %>' Width="130px" />
                        <asp:Literal ID="lt_urunadi" runat="server" Text='<%# Eval("ad") %>'></asp:Literal>
                        <asp:Literal ID="lt_birimfiyat" runat="server" Text='<%# Eval("birim_fiyat") %>'></asp:Literal>
                    </td>
                    <td>
                        <asp:ImageButton ID="ibtn_sepeteekle" runat="server" Height="61px" ImageUrl="~/admin/img/sepeteekle.bmp" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>--%>
    <div style="background-color:#385be2; border-radius:5px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="İçecek Ürünleri" ForeColor="White" Font-Bold="True" Font-Size="15pt"></asp:Label></div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmarketDBConnectionString %>" SelectCommand="SELECT [id], [ad], [resim], [birim_fiyat] FROM [urun] where [kategori_id]='2'"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="4">
            
            <EditItemTemplate>
                <td runat="server" style="">ad:
                    <asp:TextBox ID="adTextBox" runat="server" Text='<%# Bind("ad") %>' />
                    <br />resim:
                    <asp:TextBox ID="resimTextBox" runat="server" Text='<%# Bind("resim") %>' />
                    <br />birim_fiyat:
                    <asp:TextBox ID="birim_fiyatTextBox" runat="server" Text='<%# Bind("birim_fiyat") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
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
                    <br />resim:
                    <asp:TextBox ID="resimTextBox" runat="server" Text='<%# Bind("resim") %>' />
                    <br />birim_fiyat:
                    <asp:TextBox ID="birim_fiyatTextBox" runat="server" Text='<%# Bind("birim_fiyat") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="text-align:center; font-size: 9px; border:solid 2px #efeded;">
                    <asp:Image ID="Image1" runat="server" Height="205px" ImageUrl='<%# Eval("resim") %>' Width="220px" />
                    <br />
                    <asp:Label ID="adLabel" runat="server" Text='<%# Eval("ad") %>' Font-Size="13pt" ForeColor="Black" />
                    <br />
                    <asp:Label ID="birim_fiyatLabel" runat="server" Text='<%# Eval("birim_fiyat") %>' Font-Size="11pt" ForeColor="Black" />
                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="11pt" Text="₺"></asp:Label>
                    <br />
                    <asp:Label ID="lbl_adet" runat="server" Font-Bold="True" Font-Size="11pt" Text="Adet:"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txt_adet" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="15px" Width="30px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server"   BackColor="Blue" Font-Bold="True" ForeColor="White" Height="34px" Text="Sepete Ekle" CommandArgument='<%# Eval("id") %>' Width="100px" OnClick="Button1_Click" />
                    <br />
                   
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server" class="auto-style1">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" class="auto-style1"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">ad:
                    <asp:Label ID="adLabel" runat="server" Text='<%# Eval("ad") %>' />
                    <br />resim:
                    <asp:Label ID="resimLabel" runat="server" Text='<%# Eval("resim") %>' />
                    <br />birim_fiyat:
                    <asp:Label ID="birim_fiyatLabel" runat="server" Text='<%# Eval("birim_fiyat") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
    
    
</asp:Content>
