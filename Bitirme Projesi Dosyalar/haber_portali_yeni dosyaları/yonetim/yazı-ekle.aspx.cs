using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetim_yazı_ekle : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["YöneticiId"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataRow drYonetici = klas.GetDataRow("Select * from Yoneticiler where YöneticiId=" + Session["YöneticiId"].ToString());
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("insert into Köse_Yazilari (yazi_baslik,yazi_detay,yazilis_tarihi)    values   (@yazi_baslik,@yazi_detay,@yazilis_tarihi)", baglanti);
        cmd.Parameters.Add("yazi_baslik", txtBaslik.Text);
        cmd.Parameters.Add("yazi_detay", TextBox2.Text);
        cmd.Parameters.Add("yazilis_tarihi", DateTime.Now);


        cmd.ExecuteNonQuery();
        Response.Redirect("yazı-ekle.aspx");
    }
}