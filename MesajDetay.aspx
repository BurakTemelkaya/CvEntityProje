<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="CvEntityProje.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Mesaj Detayları</h4>
    <asp:TextBox ID="txtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtKonu" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtMesaj" runat="server" CssClass="form-control h5" TextMode="MultiLine" Enabled="False"></asp:TextBox>
    <br />
    <asp:Button ID="btnOkunmadıOlarakIsaretle" CssClass="btn btn-warning" runat="server" Text="Okunmadı Olarak İşaretle" OnClick="btnOkunmadıOlarakIsaretle_Click" />
</asp:Content>
