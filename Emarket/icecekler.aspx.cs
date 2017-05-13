using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Emarket
{
    public partial class icecekler : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        String id = "";
        String ad, birim_fiyat, resim;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void dl_icecekler_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["kullaniciadi"] != null)
            {
                baglan.baglan.Open();
                id = (sender as Button).CommandArgument;

                Button btn = sender as Button;

                ListViewDataItem item = btn.NamingContainer as ListViewDataItem;

                TextBox tbox = item.FindControl("txt_adet") as TextBox;
                String b = tbox.Text;



                SqlCommand cmd = new SqlCommand("Select * from urun where id='" + id + "'", baglan.baglan);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                dt.Columns.Add("miktar", typeof(String));

                foreach (DataRow dr in dt.Rows)
                {
                    ad = dr["ad"].ToString();
                    birim_fiyat = dr["birim_fiyat"].ToString();
                    resim = dr["resim"].ToString();

                }





                if (Request.Cookies["aa"] == null)
                {
                    Response.Cookies["aa"].Value = ad.ToString() + "," + birim_fiyat.ToString() + "," + resim.ToString() + "," + b.ToString();
                    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

                }
                else
                {
                    Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + ad.ToString() + "," + birim_fiyat.ToString() + "," + resim.ToString() + "," + b.ToString();
                    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                }
            }
            else
            {
                Response.Write("<script>alert('Lütfen giriş yapınız!')</script>");
            }
        }
    }
}