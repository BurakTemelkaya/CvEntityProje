<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="CvEntityProje.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered table-responsive">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th>Ad Soyad</th>
                <th>Mail</th>
                <th>Konu</th>
                <th>Mesajı Gör</th>
                <th>Okundu MU ?</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="RepeaterMesajlar" runat="server">
                <ItemTemplate>
                    <tr>
                        <th scope="row"><%#Eval("ID")%></th>
                        <td><%#Eval("ADSOYAD")%></td>
                        <td><%#Eval("MAIL")%></td>
                        <td><%#Eval("KONU")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLinkGuncelle" runat="server"
                                NavigateUrl='<%#("MesajDetay.aspx?ID="+Eval("ID")) %>'
                                CssClass="btn btn-warning" BackColor="#CC6699">Mesajı Görüntüle</asp:HyperLink>
                        </td>
                        <td><%#(bool)Eval("OKUNDU_MU") == false ? "Okunmadı" : "Okundu" %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
