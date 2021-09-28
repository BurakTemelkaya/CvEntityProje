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

        }

        protected void btnGirisYap_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBLADMIN
                        where x.KULLANICIADI == txtKullaniciAdi.Text &&
                        x.SIFRE == txtSifre.Text
                        select x;
            if (sorgu.Any())
            {
                Response.Redirect("Iletisim.aspx");
            }
            else
            {
                Response.Write("Hatalı Kullanıcı adı yada şifre");
            }
        }
    }
}