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
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter();
        dt.Rows.Clear();
        dt.Columns.Clear();
        dt1.Rows.Clear();
        dt1.Columns.Clear();
        da = new SqlDataAdapter("select * from patientreg", con);
        da.Fill(dt);
        da = new SqlDataAdapter("select ident_current('patientreg')", con);
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
        TextBox1.Text = "pat" + id.ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        refresh();
    }
    private void refresh()
    {
        TextBox2.Text = "";

        TextBox3.Text = "";

        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Random r = new Random();
        int rnd = r.Next(1000000, 9999999);
        string s = rnd.ToString();
        StringBuilder builder = new StringBuilder();
        Random random = new Random();
        char ch;
        string f = builder.ToString().ToUpper(); ;
        string d = f + s;
        //Label10.Text = d.ToString();
        Random r1 = new Random();
        int rnd1 = r.Next(1000000, 9999999);
        string s1 = rnd.ToString();
        StringBuilder builder1 = new StringBuilder();
        Random random1 = new Random();
        char ch1;
        for (int i = 0; i < 3; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);
        }


        string f1 = builder.ToString().ToUpper(); ;
        string d1 = f1 + s1;
        TextBox8.Text = d1.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox8.Text != "")
        {
            con.Open();

            cmd = new SqlCommand("insert into patientreg values('" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox1 .Text + "','" + Session["ImagePath"].ToString () + "')", con);

            cmd.ExecuteNonQuery();
            cmd.Dispose();

            con.Close();

            Response.Write("<script>alert('registered suceessfully')</script>");

            cmd.Dispose();

        }
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        Session["Path"] = Server.MapPath("Images/") + FileUpload1.FileName;
        Session["ImagePath"] = "Images/" + FileUpload1.FileName;
        Session["ImageName"] = FileUpload1.FileName;

        FileUpload1.SaveAs(Session["Path"].ToString());

        img.Src = Session["ImagePath"].ToString();

    }
}
