using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetim_YonetimTema : System.Web.UI.MasterPage
{
    Metodlar klas = new Metodlar();
    public string YoneticiAdı;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["YöneticiId"] == null)
            {
                Response.Redirect("login.aspx");
            }
             DataRow drYonetici = klas.GetDataRow("Select * from Yoneticiler where YöneticiId=" + Session["YöneticiId"].ToString());
            YoneticiAdı=drYonetici["YöneticiAdi"].ToString();
           // Label1.Text = "Hoşgeldin:" + drYonetici["YöneticiAdi"].ToString();
            //Label2.Text = "Göreviniz:" + drYonetici["Görevi"].ToString();
        }
    }
    protected void BtnProfilim_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profil.aspx");
    }
    protected void BtnCıkıs_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
        //Response.Write("<meta http-equiv=refresh content=2;url=login.aspx>");
    }



}
