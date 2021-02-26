using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetim_Profil : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["YöneticiId"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (Page.IsPostBack == false)
        {
            DataRow drYonetici = klas.GetDataRow("Select * from Yoneticiler where YöneticiId=" + Session["YöneticiId"].ToString());
            txtAd.Text = drYonetici["YöneticiAdi"].ToString();
            txtSoyad.Text = drYonetici["YöneticiSoyadi"].ToString();
            txtKullanıcıAdı.Text = drYonetici["KullaniciAdi"].ToString();
            txtSifre.Text = drYonetici["Sifre"].ToString();
            txtEmail.Text = drYonetici["Email"].ToString();
            txtTelefon.Text = drYonetici["Telefon"].ToString();
        }
       
    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("Update Yoneticiler set YöneticiAdi=@YöneticiAdi,YöneticiSoyadi=@YöneticiSoyadi,KullaniciAdi=@KullaniciAdi,Sifre=@Sifre,Email=@Email,Telefon=@Telefon where YöneticiId=" + Session["YöneticiId"], baglanti);
        cmd.Parameters.Add("YöneticiAdi", txtAd.Text);
        cmd.Parameters.Add("YöneticiSoyadi", txtSoyad.Text);
        //cmd.Parameters.Add("Görevi", ddlGorevi.SelectedItem.Text);
        //cmd.Parameters.Add("GrupId", ddlGorevi.SelectedItem.Value);
        cmd.Parameters.Add("KullaniciAdi", txtKullanıcıAdı.Text);
        cmd.Parameters.Add("Sifre", txtSifre.Text);
        cmd.Parameters.Add("Email", txtEmail.Text);
        cmd.Parameters.Add("Telefon", txtTelefon.Text);

        cmd.ExecuteNonQuery();
        Response.Redirect("Default.aspx");

    }
    protected void btnİptal_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtAd.Enabled = true;
        btnİptal.Visible = true;
        btnKaydet.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtSoyad.Enabled = true;
        btnİptal.Visible = true;
        btnKaydet.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        txtKullanıcıAdı.Enabled = true;
        btnİptal.Visible = true;
        btnKaydet.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        txtSifre.Enabled = true;
        btnİptal.Visible = true;
        btnKaydet.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        txtEmail.Enabled = true;
        btnİptal.Visible = true;
        btnKaydet.Visible = true;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        txtTelefon.Enabled = true;
        btnİptal.Visible = true;
        btnKaydet.Visible = true;
    }
}