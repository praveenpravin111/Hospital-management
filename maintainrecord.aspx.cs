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
public partial class Default3 : System.Web.UI.Page
{
    string s;
    string c;
    string a;
    string b;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string s = Session["User"].ToString();
        //con.Open();
        //SqlDataAdapter da = new SqlDataAdapter("select * from register where username='" + s + "'", con);
        //DataSet ds = new DataSet();
        //DataTable dt = new DataTable();
        //da.Fill(ds);
        //da.Fill(dt);
        //foreach (DataRow dr in ds.Tables[0].Rows)
        //{
        //    Label2.Text = Convert.ToString(dr[1].ToString());
        //    Label4.Text = Convert.ToString(dr[3].ToString());
        //    //r1.SelectedItem.Text = Convert.ToString(dr[4].ToString());
        //    //r2.Text = Convert.ToString(dr[5].ToString());
        //    //r3.Text = Convert.ToString(dr[6].ToString());
        //}
        //con.Close();
        //if (!IsPostBack)
        //{
        //    BindencryptedData();
        //    BindDecryptedData();
        //}
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from patientreg where paid='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        da.Fill(dt);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
           s= Convert.ToString(dr[7].ToString());
         c = Convert.ToString(dr[8].ToString());




        }
    

        string strmsg = string.Empty;
        string strmsg1 = string.Empty;
        byte[] encode = new byte[s.Length];
        byte[] encode1 = new byte[c.Length];
        encode = Encoding.UTF8.GetBytes(s);
        encode1 = Encoding.UTF8.GetBytes(c);
        strmsg = Convert.ToBase64String(encode);
        strmsg1 = Convert.ToBase64String(encode1);
       
     

       

        //cmd = new SqlCommand("insert into enpatreg values('" + DropDownList1.SelectedItem.Text + "','" + strmsg + "','" + strmsg1 +"')", con);
        cmd = new SqlCommand("update  patientreg  set disease='" + strmsg + "',patienthistory='" + strmsg1 + "'", con);

        cmd.ExecuteNonQuery();

        SqlDataAdapter da1 = new SqlDataAdapter("select paid,disease,patienthistory from patientreg where paid='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds1 = new DataSet();
        DataTable dt1 = new DataTable();
        da1.Fill(ds1);
        da1.Fill(dt1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();
       
        con.Close();
      

        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from patientreg where paid='" + DropDownList1 .SelectedItem .Text  + "' and patkey='" + TextBox1.Text + "'", con);
        SqlDataReader dr2 = cmd.ExecuteReader();
        if (dr2.Read())
        {
            dr2.Close();


            SqlDataAdapter da = new SqlDataAdapter("select * from patientreg where paid='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.Fill(ds);
            da.Fill(dt);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                a = Convert.ToString(dr[7].ToString());
                b = Convert.ToString(dr[8].ToString());




            }
            string decryptpwd = string.Empty;
            string decryptpwd1 = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(a);
            byte[] todecode_byte1 = Convert.FromBase64String(b);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            int charCount1 = Decode.GetCharCount(todecode_byte1, 0, todecode_byte1.Length);
            char[] decoded_char = new char[charCount];
            char[] decoded_char1 = new char[charCount1];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            Decode.GetChars(todecode_byte1, 0, todecode_byte1.Length, decoded_char1, 0);
            decryptpwd = new String(decoded_char);
            decryptpwd1 = new String(decoded_char1);
            //cmd = new SqlCommand("insert into depatreg values('" + DropDownList1.SelectedItem.Text + "','" + decryptpwd + "','" + decryptpwd1 + "')", con);
            cmd = new SqlCommand("update  patientreg  set disease='" + decryptpwd + "',patienthistory='" + decryptpwd1 + "'", con);
            cmd.ExecuteNonQuery();
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
    protected void Button2_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from docsurgery where paid='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        da.Fill(dt);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            s = Convert.ToString(dr[2].ToString());
            c = Convert.ToString(dr[3].ToString());




        }


        string strmsg = string.Empty;
        string strmsg1 = string.Empty;
        byte[] encode = new byte[s.Length];
        byte[] encode1 = new byte[c.Length];
        encode = Encoding.UTF8.GetBytes(s);
        encode1 = Encoding.UTF8.GetBytes(c);
        strmsg = Convert.ToBase64String(encode);
        strmsg1 = Convert.ToBase64String(encode1);





       // cmd = new SqlCommand("insert into endocsurgery values('" + DropDownList1.SelectedItem.Text + "','" + strmsg + "','" + strmsg1 + "')", con);
        cmd = new SqlCommand("update  docsurgery  set problem='" + strmsg + "',solution='" + strmsg1 + "'", con);
        cmd.ExecuteNonQuery();

        SqlDataAdapter da1 = new SqlDataAdapter("select paid,problem,solution from docsurgery  where paid='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds1 = new DataSet();
        DataTable dt1 = new DataTable();
        da1.Fill(ds1);
        da1.Fill(dt1);
        GridView2.DataSource = ds1;
        GridView2.DataBind();

        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
           con.Open();
        SqlCommand cmd = new SqlCommand("select * from patientreg where paid='" + DropDownList1 .SelectedItem .Text  + "' and patkey='" + TextBox1.Text + "'", con);
        SqlDataReader dr1 = cmd.ExecuteReader();
        if (dr1.Read())
        {
            dr1.Close();


            SqlDataAdapter da = new SqlDataAdapter("select * from docsurgery where paid='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.Fill(ds);
            da.Fill(dt);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                a = Convert.ToString(dr[2].ToString());
                b = Convert.ToString(dr[3].ToString());




            }
            string decryptpwd = string.Empty;
            string decryptpwd1 = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(a);
            byte[] todecode_byte1 = Convert.FromBase64String(b);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            int charCount1 = Decode.GetCharCount(todecode_byte1, 0, todecode_byte1.Length);
            char[] decoded_char = new char[charCount];
            char[] decoded_char1 = new char[charCount1];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            Decode.GetChars(todecode_byte1, 0, todecode_byte1.Length, decoded_char1, 0);
            decryptpwd = new String(decoded_char);
            decryptpwd1 = new String(decoded_char1);
            //cmd = new SqlCommand("insert into dedocsurgery values('" + DropDownList1.SelectedItem.Text + "','" + decryptpwd + "','" + decryptpwd1 + "')", con);
            cmd = new SqlCommand("update  docsurgery  set problem='" + decryptpwd + "',solution='" + decryptpwd1 + "'", con);
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
