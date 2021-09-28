using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityProje
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblToplamYetenek.Text = db.TBLYETENEKLER.Count().ToString();
            lblGelenMesajSayisi.Text = db.TBLILETISIM.Count().ToString();
            lblOrtalamaDerecePuani.Text = db.TBLYETENEKLER.Average(x => x.DERECE).ToString();
            lblEnYuksekDerece.Text = db.TBLYETENEKLER.Max(x => x.DERECE).ToString();
        }
    }
}