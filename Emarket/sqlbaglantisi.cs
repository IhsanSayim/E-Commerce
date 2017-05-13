using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;


namespace Emarket
{
    public class sqlbaglantisi
    {

        public SqlConnection baglan= new SqlConnection("Data Source=DESKTOP-VKJCD4C\\SQL2016TRAINING; Initial Catalog=EmarketDB; Integrated Security=true; MultipleActiveResultSets=True");
         
            //SqlConnection.ClearPool();
            //SqlConnection.ClearAllPools();

            
        
    }
}