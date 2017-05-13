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
    
    public partial class yeni : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void DataPager1_PreRender(object sender, EventArgs e)
        {

           

        }
        //protected void Button1_Click(object sender, EventArgs e)
        ////{
        ////    sqlbaglantisi baglan = new sqlbaglantisi();
        ////    baglan.baglan.Open();
        ////    SqlCommand cmd = new SqlCommand("insert into ilce (ad) Values('" + txt_iladi.Text + "')", baglan.baglan);
        ////    cmd.ExecuteNonQuery();

        ////    Response.Redirect("adminpanel.aspx");

        ////    baglan.baglan.Close();


        //}
    }
}