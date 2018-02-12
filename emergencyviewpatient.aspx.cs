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
using System.Text;
public partial class Default2 : System.Web.UI.Page
{
    string s;
    string c;
    string a;
    string b;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from patientreg where paid='" + DropDownList1.SelectedItem.Text + "' and patkey='" + TextBox1.Text + "'", con);
        SqlDataReader dr2 = cmd.ExecuteReader();
        if (dr2.Read())
        {
            dr2.Close();


            //SqlDataAdapter da = new SqlDataAdapter("select * from enpatreg where paid='" + DropDownList1.SelectedItem.Text + "'", con);
            //DataSet ds = new DataSet();
            //DataTable dt = new DataTable();
            //da.Fill(ds);
            //da.Fill(dt);
            //foreach (DataRow dr in ds.Tables[0].Rows)
            //{
            //    a = Convert.ToString(dr[1].ToString());
            //    b = Convert.ToString(dr[2].ToString());




            //}
            //string decryptpwd = string.Empty;
            //string decryptpwd1 = string.Empty;
            //UTF8Encoding encodepwd = new UTF8Encoding();
            //Decoder Decode = encodepwd.GetDecoder();
            //byte[] todecode_byte = Convert.FromBase64String(a);
            //byte[] todecode_byte1 = Convert.FromBase64String(b);
            //int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            //int charCount1 = Decode.GetCharCount(todecode_byte1, 0, todecode_byte1.Length);
            //char[] decoded_char = new char[charCount];
            //char[] decoded_char1 = new char[charCount1];
            //Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            //Decode.GetChars(todecode_byte1, 0, todecode_byte1.Length, decoded_char1, 0);
            //decryptpwd = new String(decoded_char);
            //decryptpwd1 = new String(decoded_char1);
            //cmd = new SqlCommand("insert into depatreg values('" + DropDownList1.SelectedItem.Text + "','" + decryptpwd + "','" + decryptpwd1 + "')", con);

            //cmd.ExecuteNonQuery();
            SqlDataAdapter da1 = new SqlDataAdapter("select paid,disease,patienthistory from patientreg where paid='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds1 = new DataSet();
            DataTable dt1 = new DataTable();
            da1.Fill(ds1);
            da1.Fill(dt1);
            GridView3.DataSource = ds1;
            GridView3.DataBind();
            con.Close();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from patientreg where paid='" + DropDownList1.SelectedItem.Text + "' and patkey='" + TextBox1.Text + "'", con);
        SqlDataReader dr1 = cmd.ExecuteReader();
        if (dr1.Read())
        {
            dr1.Close();


            //SqlDataAdapter da = new SqlDataAdapter("select * from endocsurgery where paid='" + DropDownList1.SelectedItem.Text + "'", con);
            //DataSet ds = new DataSet();
            //DataTable dt = new DataTable();
            //da.Fill(ds);
            //da.Fill(dt);
            //foreach (DataRow dr in ds.Tables[0].Rows)
            //{
            //    a = Convert.ToString(dr[1].ToString());
            //    b = Convert.ToString(dr[2].ToString());




            //}
            //string decryptpwd = string.Empty;
            //string decryptpwd1 = string.Empty;
            //UTF8Encoding encodepwd = new UTF8Encoding();
            //Decoder Decode = encodepwd.GetDecoder();
            //byte[] todecode_byte = Convert.FromBase64String(a);
            //byte[] todecode_byte1 = Convert.FromBase64String(b);
            //int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            //int charCount1 = Decode.GetCharCount(todecode_byte1, 0, todecode_byte1.Length);
            //char[] decoded_char = new char[charCount];
            //char[] decoded_char1 = new char[charCount1];
            //Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            //Decode.GetChars(todecode_byte1, 0, todecode_byte1.Length, decoded_char1, 0);
            //decryptpwd = new String(decoded_char);
            //decryptpwd1 = new String(decoded_char1);
            //cmd = new SqlCommand("insert into dedocsurgery values('" + DropDownList1.SelectedItem.Text + "','" + decryptpwd + "','" + decryptpwd1 + "')", con);

            cmd.ExecuteNonQuery();
            SqlDataAdapter da1 = new SqlDataAdapter("select paid,problem,solution from docsurgery where paid='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds1 = new DataSet();
            DataTable dt1 = new DataTable();
            da1.Fill(ds1);
            da1.Fill(dt1);
            GridView4.DataSource = ds1;
            GridView4.DataBind();
            con.Close();
        }
    }
}
