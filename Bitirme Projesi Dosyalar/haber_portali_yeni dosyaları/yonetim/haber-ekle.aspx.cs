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


public partial class yonetim_haber_ekle : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    int sayi;
    protected void Page_Load(object sender, EventArgs e)
    {
        Random sayi = new Random();
        sayi.Next();
        if (Session["YöneticiId"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (Page.IsPostBack == false)
        {
            DataTable dtkategori = klas.GetDataTable("Select * from Kategori order by [tür_adi]");
            DropDownList1.DataTextField = "tür_adi";
            DropDownList1.DataValueField = "tür_id";
            DropDownList1.DataSource = dtkategori;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Lütfen bir tür seçiniz.", "0"));
            
            DropDownList2.Items.Insert(0, new ListItem("Hayır", "0"));
            DropDownList2.Items.Insert(1, new ListItem("Evet", "1"));
            
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //kontrol();

        string resimadi = ""; string uzanti = "";
        string ikonadi = ""; string ikonuzanti = "";
        //resim yükleme işlemleri yapılıyor.
        if (fuResim.HasFile)
        {
            uzanti = Path.GetExtension(fuResim.PostedFile.FileName);
            resimadi = fuResim.FileName;
            fuResim.SaveAs(Server.MapPath("../images/slider/silinecek" + uzanti));

            int deger = 400;//resmin ufaltılacagı boyut
            Bitmap resim = new Bitmap(Server.MapPath("../images/slider/silinecek" + uzanti));//silinecek resmimizi bitmap nesnesi yapıyoruz.
            using (Bitmap yeniresim = resim)
            {
                double Yukseklik = yeniresim.Height;
                double Genislik = yeniresim.Width;
                double Oran = 0;
                if (Genislik > deger)//boyutlandırma burada yapılıyor.
                {
                    Oran = Genislik / Yukseklik;//yeni oran belirlendi
                    Genislik = deger;//genislik belirlediğimiz degere ayarlanıyor.
                    Yukseklik = deger / Oran;//yeni yükseklik degeri ayarlanıyor.

                    Size yenidegerler = new Size(Convert.ToInt32(Genislik), Convert.ToInt32(Yukseklik));//yeni boyutlandırma yapıldı.
                    Bitmap sonresim = new Bitmap(yeniresim, yenidegerler);//bitmap yeni değerlerle boyutlandırıldı.
                    sonresim.Save(Server.MapPath("../images/slider/" + resimadi));//yeni değerlere sahip resim kaydediliyor.

                    sonresim.Dispose();//bitmapler kapatılıyor.
                    yeniresim.Dispose();//bitmapler kapatılıyor.
                    resim.Dispose();//bitmapler kapatılıyor.
                }
                else
                {
                    fuResim.SaveAs(Server.MapPath("../images/slider/" + resimadi));//eger yüklenecek resim deger değişkeninden ufaksa direkt yüklenecek.
                }
            }
            FileInfo fisilinecek = new FileInfo(Server.MapPath("../images/slider/silinecek" + uzanti));//ilk başta oluşturdugumuz sahte resmi siliyoruz.
            fisilinecek.Delete();
        }


        DataRow drYonetici = klas.GetDataRow("Select * from Yoneticiler where YöneticiId=" + Session["YöneticiId"].ToString());
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("insert into Haber (haber_baslik,haber_ozet,haber_detay,yazılıs_tarihi,tür_id,haber_durumu,Yönetici_Adi,Yönetici_Soyadi,Yönetici_Id,ikon_resmi,manset_resmi,manset_durumu,haber_okunma)    values   (@haber_baslik,@haber_ozet,@haber_detay,@yazılıs_tarihi,@tür_id,@haber_durumu,@Yönetici_Adi,@Yönetici_Soyadi,@Yönetici_Id,@ikon_resmi,@manset_resmi,@manset_durumu,@haber_okunma)", baglanti);
        cmd.Parameters.Add("haber_baslik", txtBaslik.Text);
        cmd.Parameters.Add("haber_ozet", TextBox1.Text);
        cmd.Parameters.Add("haber_detay", TextBox2.Text);
        cmd.Parameters.Add("yazılıs_tarihi", DateTime.Now);
        cmd.Parameters.Add("tür_id", DropDownList1.SelectedItem.Value);
       
        cmd.Parameters.Add("haber_durumu",1);       
        cmd.Parameters.Add("Yönetici_Adi", drYonetici["YöneticiAdi"]);
        cmd.Parameters.Add("Yönetici_Soyadi", drYonetici["YöneticiSoyadi"]);
        cmd.Parameters.Add("Yönetici_Id", Session["YöneticiId"].ToString());
        cmd.Parameters.Add("ikon_resmi", ikonadi);
        cmd.Parameters.Add("manset_resmi", resimadi);
        cmd.Parameters.Add("manset_durumu",DropDownList2.SelectedItem.Value);
        cmd.Parameters.Add("haber_okunma", 1);
        cmd.ExecuteNonQuery();
        Response.Redirect("haber-ekle.aspx");

       
    }

    public void kontrol() { 
    if(txtBaslik.Text==""){
        lblHata1.Text = "Lütfen ad alanını boş geçmeyiniz.";
        lblHata1.Visible = true;
    }
    }
    int silme = 0;
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {        
        
    }
}

