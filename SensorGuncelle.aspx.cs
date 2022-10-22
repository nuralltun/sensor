using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BilimselOdev.Entity;

namespace BilimselOdev
{
    public partial class SensorGuncelle : System.Web.UI.Page
    {
        YanginProjeEntities db = new YanginProjeEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["SensorID"]);
                TxtID.Text = id.ToString();
                var srs = db.sensorler.Find(id);
                TxtAd.Text = srs.SensorAdi;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["SensorID"]);
            var srs = db.sensorler.Find(id);
            srs.SensorAdi = TxtAd.Text;
            db.SaveChanges();
            Response.Redirect("Sensorler.aspx");
        }
    }
}