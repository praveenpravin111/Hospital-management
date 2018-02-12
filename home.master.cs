using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class home : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlCommand cmd = new SqlCommand("select * from register where username='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'", con);

        //if (con.State == ConnectionState.Closed)
        //    con.Open();
        //SqlDataReader dr = cmd.ExecuteReader();
        //if (dr.Read())
        //{

        //    Session["User"] = TextBox1 .Text ;
        //    Response.Redirect("phr.aspx");


        //}

        //dr.Close();

        //con.Close();
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}
