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
public partial class Default4 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        cmd = new SqlCommand("insert into docpatinfo values('" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "')", con);

        cmd.ExecuteNonQuery();
        cmd.Dispose();

        con.Close();

        Response.Write("<script>alert('registered suceessfully')</script>");

        cmd.Dispose();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select patientname,gender,phno,email,address,disease,patienthistory from patientreg where paid='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        da.Fill(dt);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
        
    }
}
