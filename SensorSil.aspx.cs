using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BilimselOdev.Entity;

namespace BilimselOdev
{
    public partial class SensorSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            YanginProjeEntities db = new YanginProjeEntities();
            int x = Convert.ToInt32(Request.QueryString["SensorID"]);
            var p = db.sensorler.Find(x);
            db.sensorler.Remove(p);
            db.SaveChanges();
            Response.Redirect("Sensorler.aspx");
        }
    }
}