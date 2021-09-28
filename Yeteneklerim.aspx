<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="CvEntityProje.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered table-responsive">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th>Yetenek</th>
                <th>Derece</th>
                <th>Sİl</th>
                <th>Güncelle</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="RepeaterYetenekler" runat="server">
                <ItemTemplate>
                    <tr>
                        <th scope="row"><%#Eval("ID")%></th>
                        <td><%#Eval("YETENEK")%></td>
                        <td><%#Eval("DERECE")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLinkYetenekSil"
                                NavigateUrl='<%#("YetenekSil.aspx?ID="+Eval("ID")) %>'
                                runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                        <td>
                            <asp:HyperLink ID="HyperLinkGuncelle" runat="server"
                                NavigateUrl='<%#("YetenekGuncelle.aspx?ID="+Eval("ID")) %>'
                                CssClass="btn btn-success">Güncelle</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="YeniYetenek.aspx" class="btn btn-primary">Yetenek Ekle</a>
</asp:Content>
