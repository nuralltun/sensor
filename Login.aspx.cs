using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BilimselOdev.Entity;


namespace BilimselOdev
{
    public partial class Login : System.Web.UI.Page
    {
        YanginProjeEntities db = new YanginProjeEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBLADMIN where x.KULLANICI == TxtKullaniciAdi.Text && x.SIFRE == TxtSifre.Text select x;
            if (sorgu.Any())
            {
                Response.Redirect("Sensorler.aspx");
            }
            else
            {
                Response.Write("Hatalı Bilgi Girişi");
            }
        }
    }
}