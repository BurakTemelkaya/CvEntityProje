using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityProje
{
    public partial class Default : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var HakkimdaValues = db.TBLHAKKIMDA.ToList();
            var YeteneklerValues = db.TBLYETENEKLER.ToList();
            RepeaterAd.DataSource = HakkimdaValues;
            RepeaterAd.DataBind();
            RepeaterEgitim.DataSource = HakkimdaValues;
            RepeaterEgitim.DataBind();
            RepeaterIsDeneyimleri.DataSource = HakkimdaValues;
            RepeaterIsDeneyimleri.DataBind();
            RepeaterYetenekler.DataSource = YeteneklerValues;
            RepeaterYetenekler.DataBind();
        }
    }
}