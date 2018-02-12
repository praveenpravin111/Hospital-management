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
using System.IO;
using System.Text;
public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    string p;
    protected void Page_Load(object sender, EventArgs e)
    {
       string s= Session["user"].ToString ();
       
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from docreg where did='" + s + "'", con);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        da.Fill(dt);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            p = Convert.ToString(dr[1].ToString());




        }
    
        SqlDataAdapter da1 = new SqlDataAdapter("select * from appointment where docname='" + p + "' ", con);
        DataSet ds1 = new DataSet();
        DataTable dt1 = new DataTable();
        da1.Fill(ds1);
        da1.Fill(dt1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();
        con.Close();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
