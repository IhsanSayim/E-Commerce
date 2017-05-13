using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emarket.admin
{
    public partial class adminpanel1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciadii"] == null)
            {
                Response.Redirect("admingiris.aspx");
            }
        }
    }
}