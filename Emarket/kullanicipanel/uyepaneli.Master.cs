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
    public partial class uyepaneli : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click1(object sender, EventArgs e)
        {
            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            SqlCommand cmd = new SqlCommand("Select * from musteri_hesap where kullanici_adi='" + txt_kullaniciadi.Text + "' and sifre='" + txt_sifre.Text + "'", baglan.baglan);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["kullaniciadi"] = dr["kullanici_adi"];
                Response.Redirect("/default.aspx");
                
            }
            else
            {
                Response.Write("<script>alert('Kullanıcı adı veya şifre hatalı!')</script>");

            }
            baglan.baglan.Close();
        }
    }
}