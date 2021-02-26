using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetim_login : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataRow drGiris = klas.GetDataRow("Select * from Yoneticiler Where KullaniciAdi='" + Seo.Temizle(txtKullaniciAdi.Text) + "' and Sifre='" + Seo.Temizle(txtSifre.Text)+"'");
        if (drGiris != null)
        {
            Session["YöneticiId"] = drGiris["YöneticiId"].ToString();
            Response.Redirect("Default.aspx");
        }
        else 
        {          
            Response.Redirect("login.aspx");           
        }

    }
}