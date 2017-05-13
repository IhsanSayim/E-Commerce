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
    public partial class urunekle : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciadii"] == null)
            {
                Response.Redirect("admingiris.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            if (fu_urunresim.HasFile)
            {
                fu_urunresim.SaveAs(Server.MapPath("/admin/img/" + fu_urunresim.FileName));

                SqlCommand yeni = new SqlCommand("select id from kategori where ad='" + ddl_kategoriadi.Text + "'", baglan.baglan);
                SqlCommand yeni1 = new SqlCommand("select id from marka where ad='" + ddl_markaadi.Text + "'", baglan.baglan);
                Object a = yeni.ExecuteScalar();
                Object b = yeni1.ExecuteScalar();

                SqlCommand cmdekle = new SqlCommand("insert into urun (kategori_id,marka_id,ad,birim_fiyat,aciklama,kodu,resim) Values('" + a + "','" + b + "','" + txt_urunadi.Text + "','" + txt_birimfiyat.Text + "','" + txt_urunaciklama.Text + "','" + txt_urunkodu.Text + "','/admin/img/" + fu_urunresim.FileName+"')", baglan.baglan);
                cmdekle.ExecuteNonQuery();

                Response.Redirect("adminpanel.aspx");
            }
            else
            {

                Response.Write("<script>alert('Lütfen bir resim ekleyiniz!')</script>");
            }


      

            baglan.baglan.Close();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDSkategori_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDSkategori_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}