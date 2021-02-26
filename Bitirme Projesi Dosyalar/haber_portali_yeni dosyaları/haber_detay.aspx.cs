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
    string haber_id = "";
    int Okunma_Sayısı; public string resim_yolu; string yorum_haber_baslik; string yorum_haber_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Sosyal_Medya();
        Ozetler();
        Kategoriler();
        haber_id = Request.QueryString["haber_id"];
        if (haber_id == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Haber_Yorumlari();
            Yorumlar();
            populer_haberler();
            Kose_Yazıları();
            footer_kategori();
            DataRow dricerik = klas.GetDataRow("Select * from Haber where haber_id=" + haber_id);
            yorum_haber_baslik = dricerik["haber_baslik"].ToString();
            yorum_haber_id = dricerik["haber_id"].ToString();
            Label1.Text = dricerik["haber_baslik"].ToString();
            Label2.Text = dricerik["haber_detay"].ToString();
            Okunma_Sayısı = Convert.ToInt32(dricerik["Haber_Okunma"].ToString())+1;
            resim_yolu= dricerik["manset_resmi"].ToString();
            SqlConnection baglanti = klas.baglan();
            SqlCommand cmd = new SqlCommand("Update Haber set Haber_Okunma=@Okunma_Sayısı where haber_id=" + haber_id, baglanti);
            cmd.Parameters.Add("Okunma_Sayısı", Okunma_Sayısı);
            cmd.ExecuteNonQuery();
            /*Label3.Text = dricerik["yazılıs_tarihi"].ToString() + " tarihinde yazıldı.";*/
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

    void Haber_Yorumlari()
    {
        DataTable Yorumlar = klas.GetDataTable("Select * from Yorumlar where haber_id=" + haber_id);
        Rp_Haber_Yorumlari.DataSource = Yorumlar;
        Rp_Haber_Yorumlari.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();


        SqlCommand cmd = new SqlCommand("insert into Yorumlar (haber_baslik,yorum_detay,haber_id,yazan_adi_soyadi,yazan_mail,yorum_tarihi)    values   (@haber_baslik,@yorum_detay,@haber_id,@yazan_adi_soyadi,@yazan_mail,@yorum_tarihi)", baglanti);
        cmd.Parameters.Add("haber_baslik", yorum_haber_baslik);
        cmd.Parameters.Add("yorum_detay", TextBox3.Text); 
        cmd.Parameters.Add("haber_id", Convert.ToInt32(yorum_haber_id));
        cmd.Parameters.Add("yazan_adi_soyadi", TextBox1.Text);
        cmd.Parameters.Add("yazan_mail", TextBox2.Text);        
        cmd.Parameters.Add("yorum_tarihi", DateTime.Now);
        
        cmd.ExecuteNonQuery();
        Response.Redirect("haber_detay.aspx?haber_id="+haber_id);
    }
}