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
    public partial class delete_cart : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();

        String s, t;
        string[] a = new string[5];
        int id;
        String ad, birim_fiyat, resim, miktar;
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglan.baglan.Open();
            id = Convert.ToInt32(Request.QueryString["id"]);



            DataTable dt = new DataTable();
            dt.Rows.Clear();
            dt.Columns.AddRange(new DataColumn[5] { new DataColumn("ad"), new DataColumn("birim_fiyat"), new DataColumn("resim"), new DataColumn("miktar"), new DataColumn("id") });
            if (Request.Cookies["aa"] != null)
            {
                s = Convert.ToString(Request.Cookies["aa"].Value);
                string[] strArr = s.Split('|');

                for (int i = 0; i < strArr.Length; i++)
                {
                    t = Convert.ToString(strArr[i].ToString());
                    string[] strArr1 = t.Split(',');
                    for (int j = 0; j < strArr1.Length; j++)
                    {
                        a[j] = strArr1[j].ToString();

                    }
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), i.ToString());
                }

            }
            dt.Rows.RemoveAt(id);

            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1d);


            //Response.Cookies.Add(Response.Cookies["aa"]);




            foreach (DataRow dr in dt.Rows)
            {
                ad = dr["ad"].ToString();
                birim_fiyat = dr["birim_fiyat"].ToString();
                resim = dr["resim"].ToString();
                miktar = dr["miktar"].ToString();
                String b = Convert.ToString(id);
                b = dr["id"].ToString();


                count = count + 1;
                if (count == 1)
                {
                    Response.Cookies["aa"].Value = ad.ToString() + "," + birim_fiyat.ToString() + "," + resim.ToString() + "," + miktar.ToString() + "," + b.ToString();
                    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + ad.ToString() + "," + birim_fiyat.ToString() + "," + resim.ToString() + "," + miktar.ToString() + "," + b.ToString();
                    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                }
            }
            Response.Redirect("/sepet.aspx");

        }
    }
}