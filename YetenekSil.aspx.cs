using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityProje
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            using (DBCVENTITYEntities db = new DBCVENTITYEntities())
            {
                int ID = Convert.ToInt32(Request.QueryString["ID"]);
                var Yetenek = db.TBLYETENEKLER.Find(ID);
                db.TBLYETENEKLER.Remove(Yetenek);
                db.SaveChanges();
                Response.Redirect("Yeteneklerim.aspx");
            }
        }
    }
}