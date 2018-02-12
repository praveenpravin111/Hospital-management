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
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
using System.Text;
public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter();
        dt.Rows.Clear();
        dt.Columns.Clear();
        dt1.Rows.Clear();
        dt1.Columns.Clear();
        da = new SqlDataAdapter("select * from appointment", con);
        da.Fill(dt);
        da = new SqlDataAdapter("select ident_current('appointment')", con);
        da.Fill(dt1);
        int id;
        if (dt.Rows.Count == 0)
        {
            id = 1;
        }
        else
        {
            id = int.Parse(dt1.Rows[0][0].ToString()) + 1;

        }
        //id = id + 10;
        TextBox1.Text = "App" + id.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            con.Open();

            cmd = new SqlCommand("insert into appointment values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);

            cmd.ExecuteNonQuery();
            cmd.Dispose();

            con.Close();

            Response.Write("<script>alert('registered suceessfully')</script>");

            cmd.Dispose();
          
        }
    }
    private void refresh()
    {
       
        TextBox2.Text = "";

        TextBox3.Text = "";

        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        refresh();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox5.Text = Calendar1.SelectedDate.ToString();
        Calendar1.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from patientreg where paid='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        da.Fill(dt);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            TextBox2.Text = Convert.ToString(dr[1].ToString());




        }
        con.Close();
    }
}
