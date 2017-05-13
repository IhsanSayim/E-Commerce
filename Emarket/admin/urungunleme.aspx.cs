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

    public partial class urungunleme : System.Web.UI.Page
    {
       
        String urunID = "";
        String islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlbaglantisi baglan = new sqlbaglantisi();
            baglan.baglan.Open();

            if (Session["kullaniciadii"] == null)
            {
                Response.Redirect("admingiris.aspx");
            }

            urunID = Request.QueryString["urunID"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                SqlCommand cmdsil = new SqlCommand("delete from urun where id='" + urunID + "'", baglan.baglan);
                cmdsil.ExecuteNonQuery();
            }
            SqlCommand cmdugetir = new SqlCommand("select * from urun",baglan.baglan);
            SqlDataReader drugetir = cmdugetir.ExecuteReader();
            dl_urungunleme.DataSource = drugetir;
            dl_urungunleme.DataBind();

            baglan.baglan.Close();
        }

        protected void dl_urungunleme_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}