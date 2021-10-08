<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CvEntityProje.Default" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Burak Temelkaya'nın CV Sitesi</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Conjoint Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <link href="web/css/fontawesome-all.min.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
</head>
<body>
    <div class="sidenav text-center">
        <div class="side_top">
            <img src="web/images/about.jpg" alt="news image" class="img-fluid navimg">
            <h1 class="top_hd mt-2"><a href="index.html">Burak Temelkaya</a></h1>
            <p class="top_hdp mt-2">Yazılım Mühendisi</p>
        </div>
        <!-- Başlık -->
        <header>
            <div class="nav-top">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="active"><a href="#home" class="scroll">Ana Sayfa</a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">Eğitim Hayatım</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Yeteneklerim</a></li>
                        <li class="mt-sm-3"><a href="#news" class="scroll">Deneyimlerim</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">İletişim</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //Başlık -->
    </div>
    <div class="main">
        <div class="banner-text-w3ls" id="home">
            <div class="container">
                <div class="mx-auto text-center">
                    <h3>Yazılım CV Yetenek Sitesi
                    </h3>
                    <asp:Repeater ID="RepeaterAd" runat="server">
                        <ItemTemplate>
                            <p class="banp mx-auto mt-3"><%#Eval("BILGILER") %>  </p>
                        </ItemTemplate>
                    </asp:Repeater>

                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">Hakkımda</a>
                </div>
            </div>
        </div>
        <!-- Eğitim -->
        <section class="slide-wrapper" id="about">
            <h2 class="w3_head mb-4">Eğitim Hayatım</h2>
            <br>
            <asp:Repeater ID="RepeaterEgitim" runat="server">
                <ItemTemplate>
                    <p class="iner mt-md-5"><%#Eval("EGITIM") %></p>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <!-- //Eğitim -->
        <!-- Yetenekler -->
        <section class="services" id="services">
            <div class="container">
                <h3 class="w3_head mb-4 text-left">Yetenekler</h3>
                <ul class="list-unstyled mt-5">
                    <asp:Repeater ID="RepeaterYetenekler" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="row">
                                    <div class="col-2 ic-lft">
                                        <span class="fa fa-code"></span>
                                    </div>
                                    <div class="col-10">
                                        <h6><%#Eval("YETENEK") %> </h6>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
        <div class="news" id="news">
            <h3 class="w3_head mb-4 text-left">Deneyimlerim</h3>
            <asp:Repeater ID="RepeaterIsDeneyimleri" runat="server">
                <ItemTemplate>
                    <p class="iner mt-md-5 text-left"><%#Eval("ISDENEYIMLERI") %></p>
                </ItemTemplate>
            </asp:Repeater>


        </div>
        <!-- //Yetenekler -->
        <!-- İlerişim -->
        <section class="wedo" id="contact">
            <h3 class="w3_head mb-4 text-left">İletişim</h3>
            <div class="contact_grid_right mt-5 mx-auto text-left">
                <form action="#" method="post" runat="server">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtAd" runat="server" placeholder="İsminiz" required=""></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtMail" runat="server" placeholder="Mailiniz" required="" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                    <asp:TextBox ID="txtKonu" runat="server" placeholder="Konu"></asp:TextBox>
                    <asp:TextBox ID="txtMesaj" runat="server" placeholder="Mesajınız" TextMode="MultiLine"></asp:TextBox>
                    <button type="submit" runat="server" ID="btnMesajGonder" class="btn" onserverClick="btnMesajGonder_Click">Gönder</button>
                    <button type="reset" class="btn">Sıfırla</button>
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="cpy-right text-center">
                <p>
                    © 2021 Burak Temelkaya. Tüm Hakları Saklıdır
                </p>
            </div>
        </section>
    </div>

</body>
</html>

