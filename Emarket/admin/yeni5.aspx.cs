using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emarket.admin
{
    public partial class yeni5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String s = Request.Cookies["aa"].Value;
            String[] strArr = s.Split('.');
            for(int i=0; i<strArr.Length; i++)
            {
                Response.Write(strArr[i].ToString());
                Response.Write("<br>");
            }
        }
    }
}