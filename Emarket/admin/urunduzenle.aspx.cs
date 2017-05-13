using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Emarket.admin
{
    public partial class urunduzenle : System.Web.UI.Page
    {
        
        String urunID = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            if (Session["kullaniciadii"] == null)
            {
                Response.Redirect("admingiris.aspx");
            }
            urunID = Request.QueryString["urunID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cmduduzenle = new SqlCommand("select * from urun where id='" + urunID + "'", baglan.baglan);
                SqlDataReader druduzenle = cmduduzenle.ExecuteReader();

                SqlCommand cmdkategoriid = new SqlCommand("select kategori_id from urun where id='" + urunID + "'", baglan.baglan);
                Object a = cmdkategoriid.ExecuteScalar();

                SqlCommand cmdmarkaid = new SqlCommand("select marka_id from urun where id='" + urunID + "'", baglan.baglan);
                Object b = cmdmarkaid.ExecuteScalar();

                SqlCommand cmdgetir = new SqlCommand("select k.ad from kategori k,urun u where u.id='" + urunID + "' and k.id='" + a + "'", baglan.baglan);
                Object kategoriadi = cmdgetir.ExecuteScalar();

                ddl_kategoriadi.Text = kategoriadi.ToString();

                SqlCommand cmdgetir1 = new SqlCommand("select m.ad from marka m,urun u where u.id='" + urunID + "' and m.id='" + b + "'", baglan.baglan);
                Object markaadi = cmdgetir1.ExecuteScalar();
                ddl_markaadi.Text = markaadi.ToString();

                DataTable dtuduzenle1 = new DataTable("tablo");
                dtuduzenle1.Load(druduzenle);

                foreach (DataRow item in dtuduzenle1.Rows)
                {


                    txt_birimfiyat.Text = item["birim_fiyat"].ToString();
                    txt_urunadi.Text = item["ad"].ToString();
                    txt_urunkodu.Text = item["kodu"].ToString();
                    txt_urunaciklama.Text = item["aciklama"].ToString();



                }



            }
            baglan.baglan.Close();

        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {

            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            SqlCommand cmdkategoriid = new SqlCommand("select id from kategori where ad='" + ddl_kategoriadi.Text + "'", baglan.baglan);
            Object a = cmdkategoriid.ExecuteScalar();

            SqlCommand cmdmarkaid = new SqlCommand("select id from marka where ad='" + ddl_markaadi.Text + "'", baglan.baglan);
            Object b = cmdmarkaid.ExecuteScalar();

            SqlCommand cmd = new SqlCommand("update urun set kategori_id='" + a + "',marka_id='" + b + "',ad='" + txt_urunadi.Text + "',birim_fiyat='" + txt_birimfiyat.Text + "',aciklama='" + txt_urunaciklama.Text + "',kodu='" + txt_urunkodu.Text + "' where id='" + urunID + "'", baglan.baglan);
            cmd.ExecuteNonQuery();

      
            Response.Redirect("urungunleme.aspx");

            baglan.baglan.Close();
        }
    }
}