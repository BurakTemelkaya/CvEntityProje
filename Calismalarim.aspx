<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Calismalarim.aspx.cs" Inherits="CvEntityProje.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered table-responsive">
        <thead>
            <tr>
                <td>ID</td>
                <td>Adres</td>
                <td>Detay</td>
                <td>Sil</td>
            </tr>
        </thead>
        <tbody>

            <asp:Repeater ID="RepeaterCalismalar" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ID") %></td>
                        <td><%#Eval("Adres") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLinkDetay" NavigateUrl='<%#("CalismaDetay.aspx?ID="+Eval("ID")) %>' CssClass="btn btn-primary" runat="server">Detay</asp:HyperLink></td>
                        <td>
                            <asp:HyperLink ID="HyperLinkSil" NavigateUrl='<%#("CalismaSil.aspx?ID="+Eval("ID")) %>' CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
    <a href="CalismaEkle.aspx" class="btn btn-success">Çalışma Ekle</a>
</asp:Content>
