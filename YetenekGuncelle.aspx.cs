using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityProje
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(Request.QueryString["ID"]);
            if (!Page.IsPostBack)
            {
                var Deger = db.TBLYETENEKLER.Find(ID);
                txtYetenekAdi.Text = Deger.YETENEK;
                txtYetenekDegeri.Text = Deger.DERECE.ToString();
            }           
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(Request.QueryString["ID"]);
            var Deger = db.TBLYETENEKLER.Find(ID);
            Deger.YETENEK = txtYetenekAdi.Text;
            Deger.DERECE = Convert.ToByte(txtYetenekDegeri.Text);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");           
        }
    }
}