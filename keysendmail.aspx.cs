using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=.\\sqlexpress;database=health;integrated security=true");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //con.Open();
        //SqlCommand cmd = new SqlCommand();
        //cmd.ExecuteNonQuery();
        //con.Close();
        //DataSet ds = new DataSet();
        //DataSet.fill(ds );
    }
}
