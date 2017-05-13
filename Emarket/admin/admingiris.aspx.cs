using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Emarket.admin
{
    public partial class admingiris : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {

            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            SqlCommand cmd = new SqlCommand("Select * from admin where kullanici_adi='" + txt_kullaniciadi.Text + "' and sifre='" + txt_sifre.Text + "'", baglan.baglan);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["kullaniciadii"] = dr["kullanici_adi"];
                Response.Redirect("urunekle.aspx");
            }
            else
            {
                lbl_hata.Visible = true;
                lbl_hata.Text = "Hatalı giriş Yaptınız!";

            }

            baglan.baglan.Close();
        }
    }
}