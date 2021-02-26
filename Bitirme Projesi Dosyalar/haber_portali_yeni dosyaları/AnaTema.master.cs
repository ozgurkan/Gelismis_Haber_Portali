using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AnaTema : System.Web.UI.MasterPage
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        Manset_Disi_Haberler();
        Sosyal_Medya();
        Ozetler();
        Kategoriler();
        haberler();
        alt_haberler();
        populer_haberler();
        en_alt_haberler();
        footer_kategori();
        Yorumlar();
        Kose_Yazıları();
        
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

    void haberler()
    {
        DataTable dthaberler = klas.GetDataTable("Select Top 10 * from Haber where haber_durumu=1 and manset_durumu=1 order by haber_id desc ");
        rphaber.DataSource = dthaberler;
        rphaber.DataBind();
    }

    void populer_haberler()
    {
        DataTable dtpopuler_haberler = klas.GetDataTable("Select Top 6 * from Haber,Kategori where Haber.tür_id=Kategori.tür_id order by Haber_Okunma desc");
        Rppopuler.DataSource = dtpopuler_haberler;
        Rppopuler.DataBind();
    }



    protected void Rp_Kategori_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
//Repeater rp = (Repeater)e.Item.FindControl("Rp_AltKategori");  //İç tarafdaki rpAltKategori kontrolüne erişiyoruz ve rp değişkenine atıyoruz
//        //Ana Kategoriye bağlı alt kategorileri seçiyoruz
//        DataTable dt_altkategori = klas.GetDataTable("Select * from Alt_Kategori where tür_id=" + Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "tür_id").ToString()));


//        rp.DataSource = dt_altkategori;
//        rp.DataBind();
    }

    void alt_haberler (){
        DataTable dt_alt_haberler = klas.GetDataTable("SELECT TOP 12 * FROM Haber WHERE manset_durumu=1 and (haber_id NOT IN (SELECT TOP 11 haber_id FROM Haber where manset_durumu=1 order by haber_id desc))order by haber_id desc");
        Rpt_alt_haber.DataSource = dt_alt_haberler;
        Rpt_alt_haber.DataBind();

    }

    void en_alt_haberler()
    {
        DataTable dt_alt_sol_haberler = klas.GetDataTable("SELECT TOP 5 * FROM Haber WHERE manset_durumu=1 and (haber_id NOT IN (SELECT TOP 23 haber_id FROM Haber where manset_durumu=1 order by haber_id desc))order by haber_id desc ");
        Rpt_alt_sol.DataSource = dt_alt_sol_haberler;
        Rpt_alt_sol.DataBind();

        DataTable dt_alt_sag_haberler = klas.GetDataTable("SELECT TOP 5 * FROM Haber WHERE manset_durumu=1 and (haber_id NOT IN (SELECT TOP 28 haber_id FROM Haber where manset_durumu=1 order by haber_id desc))order by haber_id desc ");
        Rpt_alt_sag.DataSource = dt_alt_sag_haberler;
        Rpt_alt_sag.DataBind();

    }
    void footer_kategori()
    {
        DataTable footer_kategori = klas.GetDataTable("SELECT * from kategori ");
        Rp_Footer_Kategori.DataSource = footer_kategori;
        Rp_Footer_Kategori.DataBind();

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

    void Manset_Disi_Haberler()
    {
        DataTable Manset_Disi_Haberler = klas.GetDataTable("Select top 4 * from Haber where manset_durumu=0 order by haber_id desc ");
        Rp_Manset_Disi_Haberler.DataSource = Manset_Disi_Haberler;
        Rp_Manset_Disi_Haberler.DataBind();
    }
}
