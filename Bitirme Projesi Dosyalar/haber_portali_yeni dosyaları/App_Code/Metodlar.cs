using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

public class Metodlar
{
    public SqlConnection baglan()
    {
        SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["veritabanı"].ConnectionString);
        baglanti.Open();
        return (baglanti);
    }

    public int cmd(string sqlcumle)
    {
        SqlConnection baglanti = this.baglan();
        SqlCommand cmd = new SqlCommand(sqlcumle,baglanti);
        int sonuc = 0;
        try
        {
            sonuc = cmd.ExecuteNonQuery();
        }
        catch (SqlException ex)
        {

            throw new Exception(ex.Message + "(" + sqlcumle + ")");
        }

        cmd.Dispose();
        baglanti.Close();
        baglanti.Dispose();
        return (sonuc);        
    }

    public DataTable GetDataTable(string sqlcumle)
    {
        SqlConnection baglanti = this.baglan();
        SqlDataAdapter dap = new SqlDataAdapter(sqlcumle, baglanti);
        DataTable dt = new DataTable();
        try
        {
            dap.Fill(dt);
        }
        catch (SqlException ex)
        {

            throw new Exception(ex.Message + "(" + sqlcumle + ")");
        }
        dap.Dispose();
        baglanti.Close();
        baglanti.Dispose();
        return dt;        
    }

    public DataRow GetDataRow(string sqlcumle)
    {
        DataTable dt = GetDataTable(sqlcumle);
        if (dt.Rows.Count==0)
        {
            return null;
        }
        else
        {
            return dt.Rows[0];
        }
    }

    public string GetDataCell(string sqlcumle)
    {
        DataTable dt = GetDataTable(sqlcumle);
        if (dt.Rows.Count == 0)
        {
            return null;
        }
        else
            return dt.Rows[0][0].ToString();        
    }
}