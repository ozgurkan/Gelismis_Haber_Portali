using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;

public partial class yonetim_Profil : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    public string Sm_Adi;
    public string Sm_Linki;
    public string Sm_Durum;
    public string Sm_İd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["YöneticiId"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (Page.IsPostBack == false)
        {
            if (Request.QueryString["olay"] == "ac")
            {
                Sm_İd = Request.QueryString["Sm_İd"];
                SqlConnection baglanti = klas.baglan();
                SqlCommand cmd = new SqlCommand("Update Sosyal_Medya set Sm_Durum=1 where  Sm_İd=" + Sm_İd, baglanti);
                cmd.ExecuteNonQuery();
                Response.Redirect("SosyalMedya.aspx");
            
            }
            else if (Request.QueryString["olay"]=="kapat")
            {
            Sm_İd = Request.QueryString["Sm_İd"];
            SqlConnection baglanti = klas.baglan();
            SqlCommand cmd = new SqlCommand("Update Sosyal_Medya set Sm_Durum=0 where  Sm_İd=" + Sm_İd, baglanti);
            cmd.ExecuteNonQuery();
            Response.Redirect("SosyalMedya.aspx");
            }
        }
        Sosyal_Medya();
       
    }
    void Sosyal_Medya()
    {
        DataTable dtSm = klas.GetDataTable("Select * from Sosyal_Medya");
        RpSm.DataSource = dtSm;
        RpSm.DataBind();       
    }

    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        //SqlConnection baglanti = klas.baglan();
        //SqlCommand cmd = new SqlCommand("Update Yoneticiler set YöneticiAdi=@YöneticiAdi,YöneticiSoyadi=@YöneticiSoyadi,KullaniciAdi=@KullaniciAdi,Sifre=@Sifre,Email=@Email,Telefon=@Telefon where YöneticiId=" + Session["YöneticiId"], baglanti);
        //cmd.Parameters.Add("YöneticiAdi", txtAd.Text);
        //cmd.Parameters.Add("YöneticiSoyadi", txtSoyad.Text);
        ////cmd.Parameters.Add("Görevi", ddlGorevi.SelectedItem.Text);
        ////cmd.Parameters.Add("GrupId", ddlGorevi.SelectedItem.Value);
        //cmd.Parameters.Add("KullaniciAdi", txtKullanıcıAdı.Text);
        //cmd.Parameters.Add("Sifre", txtSifre.Text);
        //cmd.Parameters.Add("Email", txtEmail.Text);
        //cmd.Parameters.Add("Telefon", txtTelefon.Text);

        //cmd.ExecuteNonQuery();
        //Response.Redirect("Default.aspx");

    }
    protected void RpSm_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
     Label lblOankiDurum=e.Item.FindControl("lblDurum") as Label;
     if (lblOankiDurum.Text == "1")
     {
         lblOankiDurum.Text = "Açık";
         lblOankiDurum.CssClass = "label label-success";
        
     }
     else {
         lblOankiDurum.Text = "Kapalı";
         lblOankiDurum.CssClass = "label label-error";
     }
    
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("insert into Sosyal_Medya (Sm_Adi,Sm_Linki)    values   (@Sm_Adi,@Sm_Linki)", baglanti);
        cmd.Parameters.Add("Sm_Adi", TextBox1.Text);
        cmd.Parameters.Add("Sm_Linki", TextBox2.Text);        
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        Response.Redirect("SosyalMedya.aspx");
    }
}