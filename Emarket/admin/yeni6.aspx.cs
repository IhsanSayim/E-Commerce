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
    public partial class yeni6 : System.Web.UI.Page
    {
        String s, t;
        string[] a = new string[6];
        int tot=0;

        protected void b1_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkout.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[5] { new DataColumn("ad"), new DataColumn("birim_fiyat"), new DataColumn("resim"), new DataColumn("miktar"),new DataColumn("id") });
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
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(),i.ToString());
                    tot = tot + (Convert.ToInt32(a[1].ToString()) * Convert.ToInt32(a[3].ToString()));
                }

            }
            d1.DataSource = dt;
            d1.DataBind();
            l1.Text = "you have to pay"+tot.ToString();
        }

        
    }
}