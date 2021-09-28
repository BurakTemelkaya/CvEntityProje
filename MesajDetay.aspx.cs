using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityProje
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (DBCVENTITYEntities db = new DBCVENTITYEntities())
            {
                int ID = Convert.ToInt32(Request.QueryString["ID"]);
                var Mesaj = db.TBLILETISIM.Find(ID);
                txtGonderen.Text = Mesaj.ADSOYAD;
                txtKonu.Text = Mesaj.KONU;
                txtMail.Text = Mesaj.MAIL;
                txtMesaj.Text = Mesaj.MESAJ;
            }
        }
    }
}