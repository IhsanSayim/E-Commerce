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
    public partial class profil : System.Web.UI.Page
    {
        
        String cinsiyet = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {



         

            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            //if (!IsPostBack)
            //{

            //    SqlCommand com = new SqlCommand("Select id, ad from il", baglan.baglan);

            //    try
            //    {


            //        SqlDataReader reader = com.ExecuteReader();

            //        ddl_il.DataSource = reader;
            //        ddl_il.DataValueField = "id";
            //        ddl_il.DataTextField = "ad";
            //        ddl_il.DataBind();


            //        //ddl_il.Items.Insert(0, new ListItem(iladi.ToString(), b.ToString()));
            //        reader.Close();



            //    }

            //    catch
            //    {
            //        Response.Write("Bir hata oluştu");
            //    }
            //}

            //SqlCommand comm = new SqlCommand("Select id,ad from ilce", baglan.baglan);

            //try
            //{


            //    SqlDataReader reader = comm.ExecuteReader();

            //    ddl_ilce.DataSource = reader;
            //    ddl_ilce.DataValueField = "id";
            //    ddl_ilce.DataTextField = "ad";
            //    ddl_ilce.DataBind();
            //    //ddl_ilce.Items.Insert(0, new ListItem(ilceadi.ToString(), c.ToString()));
            //    reader.Close();

            //}

            //catch
            //{
            //    Response.Write("Bir hata oluştu");
            //}


            SqlCommand cmdmhi = new SqlCommand("select id from musteri_hesap where kullanici_adi='" + Session["kullaniciadi"] + "'", baglan.baglan);
            Object mhid = cmdmhi.ExecuteScalar();
            

            if (Page.IsPostBack == false)
            {
                SqlCommand cmduduzenle = new SqlCommand("select * from musteri where musteri_hesap_id='" + mhid + "'", baglan.baglan);
                SqlDataReader druduzenle = cmduduzenle.ExecuteReader();

                SqlCommand cmdilid = new SqlCommand("select il_id from musteri where musteri_hesap_id='" + mhid + "'", baglan.baglan);
                Object b = cmdilid.ExecuteScalar();

                SqlCommand cmdilceid = new SqlCommand("select ilce_id from musteri where musteri_hesap_id='" + mhid + "'", baglan.baglan);
                Object c = cmdilceid.ExecuteScalar();
                

                SqlCommand cmdgetiril = new SqlCommand("select i.ad from il i,musteri m where m.musteri_hesap_id='" + mhid + "' and i.id='" + b + "'", baglan.baglan);
                Object iladi = cmdgetiril.ExecuteScalar();
                ddl_il.Text = iladi.ToString();
                


                SqlCommand cmdgetirilce = new SqlCommand("select i.ad from ilce i,musteri m where m.musteri_hesap_id='" + mhid + "' and i.id='" + c + "'", baglan.baglan);
                Object ilceadi = cmdgetirilce.ExecuteScalar();
                ddl_ilce.Text = ilceadi.ToString();
               



                SqlCommand cmdgetirka = new SqlCommand("select kullanici_adi from musteri_hesap where id='"+ mhid+"'", baglan.baglan);
                Object ka = cmdgetirka.ExecuteScalar();
                txt_kullaniciadi.Text = ka.ToString();

                SqlCommand cmdgetirsifre = new SqlCommand("select sifre from musteri_hesap where id='" + mhid + "'", baglan.baglan);
                Object sifre = cmdgetirsifre.ExecuteScalar();
                txt_sifre.Text = sifre.ToString();

                SqlCommand cmdgetiremail = new SqlCommand("select email from musteri_hesap where id='" + mhid + "'", baglan.baglan);
                Object email = cmdgetiremail.ExecuteScalar();
                txt_email.Text = email.ToString();

                DataTable dtuduzenle1 = new DataTable("tablo");
                dtuduzenle1.Load(druduzenle);

                foreach (DataRow item in dtuduzenle1.Rows)
                {


                    txt_ad.Text = item["ad"].ToString();
                    txt_soyad.Text = item["soyad"].ToString();
                    txt_telefon.Text = item["telefon"].ToString();
                    if (item["cinsiyet"].ToString() == "E")
                    {
                        rbtn_erkek.Checked = true;

                    }
                    else
                    {
                        rbtn_kadın.Checked = true;
                    }





                }
               



            }

            baglan.baglan.Close();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //sqlbaglantisi baglan = new sqlbaglantisi();
            //baglan.baglan.Open();
            //String a = ddl_il.SelectedItem.Value;

            




        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            SqlCommand cmdilid = new SqlCommand("select id from il where ad='" + ddl_il.Text + "'", baglan.baglan);
            Object a = cmdilid.ExecuteScalar();

            SqlCommand cmdilceid = new SqlCommand("select id from ilce where ad='" + ddl_ilce.Text + "'", baglan.baglan);
            Object b = cmdilceid.ExecuteScalar();

            SqlCommand cmdmhi = new SqlCommand("select id from musteri_hesap where kullanici_adi='" + Session["kullaniciadi"] + "'", baglan.baglan);
            Object mhid = cmdmhi.ExecuteScalar();




            SqlCommand cmd = new SqlCommand("update musteri_hesap set kullanici_adi='" + txt_kullaniciadi.Text + "',sifre='" + txt_sifre.Text + "',email='" + txt_email.Text + "' where id='"+mhid+"'", baglan.baglan);
            cmd.ExecuteNonQuery();

            if (rbtn_erkek.Checked)
            {
                cinsiyet = "E";
            }
            else
            {
                cinsiyet = "K";
            }

            SqlCommand cmd1 = new SqlCommand("update musteri set ad='" + txt_ad.Text + "',soyad='" + txt_soyad.Text + "',telefon='" + txt_telefon.Text + "',cinsiyet='"+cinsiyet+"',il_id='"+a+"',ilce_id='"+b+"' where musteri_hesap_id='"+mhid+"'", baglan.baglan);
            cmd1.ExecuteNonQuery();

            Session["kullaniciadi"] = txt_kullaniciadi.Text;

            Response.Redirect("profil.aspx");

          
            
            baglan.baglan.Close();

        }

        protected void SqlDSil_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ddl_ilce_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}