using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace Emarket
{
    public class dbbaglanti
    {
        public SqlConnection con=new SqlConnection("Data Source=DESKTOP-VKJCD4C\\SQL2016TRAINING; Initial Catalog=EmarketDB; Integrated Security=true");
    }
}