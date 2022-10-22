using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BilimselOdev.Entity;

namespace BilimselOdev
{
    public partial class Sensorler : System.Web.UI.Page
    {
        YanginProjeEntities db = new YanginProjeEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = db.sensorler.ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
        }
    }
}