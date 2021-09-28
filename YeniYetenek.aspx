<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="CvEntityProje.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Yeni Yetenek Ekleme Sayfası</h4>
    <br />
    <asp:Label runat="server" Text="Yetenek Açıklama"></asp:Label>
    <asp:TextBox runat="server" CssClass="form-control" placeholder="Yeteneği Yazınız" ID="txtYetenekAdi"></asp:TextBox>
    <br />
    <asp:TextBox runat="server" CssClass="form-control" placeholder="Yeteneğin Değerini Yazınız" ID="txtYetenekDegeri"></asp:TextBox>
    <br />
    <asp:Button ID="btnYetenekEkle" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="btnYetenekEkle_Click" />
</asp:Content>
