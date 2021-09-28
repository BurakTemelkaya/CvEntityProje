using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityProje
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void btnYetenekEkle_Click(object sender, EventArgs e)
        {
            TBLYETENEKLER t = new TBLYETENEKLER();
            t.YETENEK = txtYetenekAdi.Text;
            t.DERECE = Convert.ToByte(txtYetenekDegeri.Text);
            db.TBLYETENEKLER.Add(t);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}