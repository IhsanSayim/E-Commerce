using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Emarket.kullanicipanel
{
    public partial class uyeol2 : System.Web.UI.Page
    {
        
        String cinsiyet = "";
        protected void Page_Load(object sender, EventArgs e)
        {

          
          
               


            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            if (!IsPostBack)
            {

                SqlCommand com = new SqlCommand("Select id, ad from il", baglan.baglan);
               
                try
                {


                    SqlDataReader reader = com.ExecuteReader();

                    ddl_il.DataSource = reader;
                    ddl_il.DataValueField = "id";
                    ddl_il.DataTextField = "ad";
                    ddl_il.DataBind();
                    reader.Close();
                    baglan.baglan.Close();


                }

                catch
                {
                    Response.Write("Bir hata oluştu");
                }
            }


        

        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            SqlCommand cmdekle = new SqlCommand("insert into musteri_hesap (kullanici_adi,sifre,email) Values('" + txt_kkullaniciadi.Text + "','" + txt_ksifre.Text + "','" + txt_email.Text + "')", baglan.baglan);
            cmdekle.ExecuteNonQuery();

            Response.Redirect("/default.aspx");

            baglan.baglan.Close();
        }

        protected void ddl_il_SelectedIndexChanged(object sender, EventArgs e)
        {
            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            SqlCommand comm = new SqlCommand("Select id,ad from ilce where il_id=" + ddl_il.SelectedItem.Value, baglan.baglan);

            try
            {
               

                SqlDataReader reader = comm.ExecuteReader();

                ddl_ilce.DataSource = reader;
                ddl_ilce.DataValueField = "id";
                ddl_ilce.DataTextField = "ad";
                ddl_ilce.DataBind();
                reader.Close();
                baglan.baglan.Close();
            }

            catch
            {
                Response.Write("Bir hata oluştu");
            }
            
        }
        protected void rbtn_erkek_CheckedChanged(object sender, EventArgs e)
        {
           

        }

        protected void rbtn_kadın_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void btn_kaydet_Click1(object sender, EventArgs e)
        {

            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            SqlCommand cmdkontrol = new SqlCommand("select kullanici_adi from musteri_hesap where kullanici_adi='"+txt_kkullaniciadi.Text+"'", baglan.baglan);
            Object kontrol=cmdkontrol.ExecuteScalar();
            if (kontrol==null)
            {
                SqlCommand cmdekle = new SqlCommand("insert into musteri_hesap (kullanici_adi,sifre,email) Values('" + txt_kkullaniciadi.Text + "','" + txt_ksifre.Text + "','" + txt_email.Text + "')", baglan.baglan);
                cmdekle.ExecuteNonQuery();

                SqlCommand cmdmhid = new SqlCommand("select id from musteri_hesap where kullanici_adi='" + txt_kkullaniciadi.Text + "'", baglan.baglan);
                Object b = cmdmhid.ExecuteScalar();
                SqlCommand cmdiid = new SqlCommand("select id from il where ad='" + ddl_il.SelectedItem + "'", baglan.baglan);
                Object c = cmdiid.ExecuteScalar();
                SqlCommand cmdilceid = new SqlCommand("select id from ilce where ad='" + ddl_ilce.SelectedItem + "'", baglan.baglan);
                Object d = cmdilceid.ExecuteScalar();

                if (rbtn_erkek.Checked)
                {
                    cinsiyet = "E";
                }
                else
                {
                    cinsiyet = "K";
                }

                SqlCommand cmdekle1 = new SqlCommand("insert into musteri (ad,soyad,telefon,cinsiyet,il_id,ilce_id,musteri_hesap_id) Values('" + txt_ad.Text + "','" + txt_soyad.Text + "','" + txt_telefon.Text + "','" + cinsiyet + "','" + c + "','" + d + "','" + b + "')", baglan.baglan);
                cmdekle1.ExecuteNonQuery();
                Response.Redirect("/default.aspx");
            }
            else
            {

                Response.Write("<script>alert('Kullanıcı adınız önceden kullanılmıştır!')</script>");
            }



            baglan.baglan.Close();
            

            
        }

      
    }
}