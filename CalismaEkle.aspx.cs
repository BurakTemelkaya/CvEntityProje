using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityProje
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCalismaEkle_Click(object sender, EventArgs e)
        {
            using (DBCVENTITYEntities db = new DBCVENTITYEntities())
            {
                TBLCALISMALARIM t = new TBLCALISMALARIM();
                t.CALISMA_ADİ = txtCalismaAdi.Text;
                t.ADRES = txtAdres.Text;
                db.TBLCALISMALARIM.Add(t);
                db.SaveChanges();
                Response.Redirect("Calismalarim.aspx");
            }
        }
    }
}