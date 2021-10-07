using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityProje
{
    public partial class Login : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"]!=null)
            {
                Response.Redirect("Iletisim.aspx");
            }
        }

        protected void btnGirisYap_Click(object sender, EventArgs e)
        {
            var kullaniciAdisorgu = from x in db.TBLADMIN
                                    where x.KULLANICIADI == txtKullaniciAdi.Text
                                    select x;
            if (kullaniciAdisorgu.Any())
            {
                var sifreSorgu = from x in db.TBLADMIN
                                 where x.KULLANICIADI == txtKullaniciAdi.Text &&
                                 x.SIFRE == txtSifre.Text
                                 select x;
                if (sifreSorgu.Any())
                {
                    Session.Add("Kullanici", txtKullaniciAdi.Text);
                    Response.Redirect("Iletisim.aspx");
                }
                else
                {
                    lblHataMesaji.Text = "Şifrenizi Hatalı Girdiniz.";
                }
            }
            else
            {
                lblHataMesaji.Text = "Kullanıcı Adınız Hatalı Girdiniz.";
            }
        }
    }
}