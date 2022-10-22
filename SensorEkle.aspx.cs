using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BilimselOdev.Entity;

namespace BilimselOdev
{
    public partial class SensorEkle : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            YanginProjeEntities db = new YanginProjeEntities();
            sensorler t = new sensorler();
            t.SensorAdi = TextBox1.Text;
            t.SensorNo = TextBox2.Text;
            db.sensorler.Add(t);
            db.SaveChanges();
        }
    }
}