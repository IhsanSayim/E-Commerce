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
    public partial class yeni4 : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        String id = "";
        String ad, birim_fiyat, resim;

       

        protected void D1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("yeni3.aspx");
            }
            else
            {

                id = Request.QueryString["id"].ToString();
                baglan.baglan.Open();
                SqlCommand cmd = new SqlCommand("Select * from urun where id='"+id+"'", baglan.baglan);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                D1.DataSource = dt;
                D1.DataBind();
                baglan.baglan.Close();
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            baglan.baglan.Open();
            SqlCommand cmd = new SqlCommand("Select * from urun where id='" + id + "'", baglan.baglan);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
           
            foreach (DataRow dr in dt.Rows)
            {
                ad = dr["ad"].ToString();
                birim_fiyat = dr["birim_fiyat"].ToString();
                resim = dr["resim"].ToString();
            }


          
            if (Request.Cookies["aa"] == null)
            {
                Response.Cookies["aa"].Value = ad.ToString() + "," + birim_fiyat.ToString() + "," + resim.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

            }
            else
            {
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + ad.ToString() + "," + birim_fiyat.ToString() + "," + resim.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }

        }
    }
}