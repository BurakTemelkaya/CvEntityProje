<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YetenekGuncelle.aspx.cs" Inherits="CvEntityProje.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Yetenek Güncelleme Sayfası</h2>
    <asp:Label ID="lblYetenekAdi" runat="server" Text="Yetenek Adı"></asp:Label>
    <asp:TextBox ID="txtYetenekAdi" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Label ID="lblYetenekDegeri" runat="server" Text="Yetenek Değeri"></asp:Label>
    <asp:TextBox ID="txtYetenekDegeri" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Button ID="btnGuncelle" runat="server" CssClass="btn btn-group" Text="Güncelle" OnClick="btnGuncelle_Click" />
</asp:Content>
