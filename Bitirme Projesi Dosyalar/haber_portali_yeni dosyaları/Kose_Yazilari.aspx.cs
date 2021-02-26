using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class haber_detay : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string yazi_id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Sosyal_Medya();
        Ozetler();
        Kategoriler();
        yazi_id = Request.QueryString["yazi_id"];
        if (yazi_id == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Yorumlar();
            populer_haberler();
            Kose_Yazıları();
            footer_kategori();
            DataRow dricerik = klas.GetDataRow("Select * from Köse_Yazilari where yazi_id=" + yazi_id);
            Label1.Text = dricerik["yazi_baslik"].ToString();
            Label2.Text = dricerik["yazi_detay"].ToString();
        }

    }
    
    void Sosyal_Medya()
    {
        DataTable dtSm = klas.GetDataTable("Select * from Sosyal_Medya where Sm_Durum=1");
        Rp_Sm.DataSource = dtSm;
        Rp_Sm.DataBind();
    }

    void Ozetler()
    {
        DataTable dtOzetler = klas.GetDataTable("Select top 4 * from Haber order by haber_id desc");
        Rp_Ozetler.DataSource = dtOzetler;
        Rp_Ozetler.DataBind();
    }

    void Kategoriler()
    {
        DataTable dtKategori = klas.GetDataTable("Select * from Kategori");
        Rp_Kategori.DataSource = dtKategori;
        Rp_Kategori.DataBind();
    }

    protected void Rp_Kategori_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //Repeater rp = (Repeater)e.Item.FindControl("Rp_AltKategori");  //İç tarafdaki rpAltKategori kontrolüne erişiyoruz ve rp değişkenine atıyoruz
        ////Ana Kategoriye bağlı alt kategorileri seçiyoruz
        //DataTable dt_altkategori = klas.GetDataTable("Select * from Alt_Kategori where tür_id=" + Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "tür_id").ToString()));


        //rp.DataSource = dt_altkategori;
        //rp.DataBind();
    }

    void Yorumlar()
    {
        DataTable Yorumlar = klas.GetDataTable("Select top 10 * from Yorumlar,haber where haber.haber_id=yorumlar.haber_id order by yorum_id desc");
        Rp_Yorumlar.DataSource = Yorumlar;
        Rp_Yorumlar.DataBind();
    }

    void Kose_Yazıları()
    {
        DataTable Kose_Yazıları = klas.GetDataTable("Select top 10 * from Köse_Yazilari order by yazi_id desc");
        Rp_Kose_Yazıları.DataSource = Kose_Yazıları;
        Rp_Kose_Yazıları.DataBind();
    }
    void populer_haberler()
    {
        DataTable dtpopuler_haberler = klas.GetDataTable("Select Top 6 * from Haber,Kategori where Haber.tür_id=Kategori.tür_id order by Haber_Okunma desc");
        Rppopuler.DataSource = dtpopuler_haberler;
        Rppopuler.DataBind();
    }
    void footer_kategori()
    {
        DataTable footer_kategori = klas.GetDataTable("SELECT * from kategori ");
        Rp_Footer_Kategori.DataSource = footer_kategori;
        Rp_Footer_Kategori.DataBind();

    }



}