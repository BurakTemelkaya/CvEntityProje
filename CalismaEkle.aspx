<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CalismaEkle.aspx.cs" Inherits="CvEntityProje.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Yeni Çalışma Ekle</h4>
    <asp:Label ID="lblCalismaAdi" runat="Server" Text="Çalışma Adını Giriniz"></asp:Label>
    <asp:TextBox ID="txtCalismaAdi" CssClass="form-control" placeholder="Çalışma Adı" runat="server" required=""></asp:TextBox>
    <br />
    <asp:Label ID="lblCalismaAdresi" runat="Server" Text="Çalışma Adresi Giriniz"></asp:Label>
    <asp:TextBox ID="txtAdres" CssClass="form-control" placeholder="Çalışma Adresi" runat="server" required=""></asp:TextBox>
    <br />
    <asp:Button ID="btnCalismaEkle" CssClass="btn btn-primary" runat="server" Text="Çalışma Ekle" OnClick="btnCalismaEkle_Click" />
    <asp:Label ID="lblUyari" CssClass="text-danger" runat="Server"></asp:Label>
</asp:Content>
