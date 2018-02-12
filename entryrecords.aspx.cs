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
using System.Text;
using System.Data.SqlClient;
using System.IO;
public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    string b;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string m;
        con.Open();
       
        
        m = FileUpload1.FileName;
        //m = Session["ImagePath"].ToString();
        //img.Src = Session["ImagePath"].ToString();
        string strmsg = string.Empty;

        byte[] encode = new byte[m.Length];

        encode = Encoding.UTF8.GetBytes(m);
      
        strmsg = Convert.ToBase64String(encode);
        Session["Path"] = Server.MapPath("document/") + m;

        Session["ImageName"] = m;

        FileUpload1.SaveAs(Session["Path"].ToString());
        Session["ImagePath"] = "document/" + m;

        cmd = new SqlCommand("insert into entryrecords values('" + DropDownList1.SelectedItem .Text  + "','" + TextBox2.Text + "','" + strmsg + "')", con);
        Response.Write("<script>alert('registered suceessfully')</script>");
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        SqlDataAdapter da1 = new SqlDataAdapter("select paid,filepath  from entryrecords where paid='" + DropDownList1.SelectedItem.Text + "' and filename='" + TextBox2 .Text + "'", con);
        DataSet ds1 = new DataSet();
        DataTable dt1 = new DataTable();
        da1.Fill(ds1);
        da1.Fill(dt1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();

        con.Close();


        cmd.Dispose();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label6.Visible = true;
        TextBox3.Visible = true;
        Button2.Visible = false;
        Button3.Visible = true;
        
        }
    protected void  Button3_Click(object sender, EventArgs e)
{
    Button2.Visible = false;
    con.Open();
    SqlCommand cmd = new SqlCommand("select * from patientreg where paid='" + DropDownList1.SelectedItem.Text + "' and patkey='" + TextBox3.Text + "'", con);
    SqlDataReader dr2 = cmd.ExecuteReader();
    if (dr2.Read())
    {
        dr2.Close();


        SqlDataAdapter da = new SqlDataAdapter("select * from entryrecords where paid='" + DropDownList1.SelectedItem.Text + "' ", con);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        da.Fill(dt);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {

            b = Convert.ToString(dr[2].ToString());

        }

        string decryptpwd1 = string.Empty;
        UTF8Encoding encodepwd = new UTF8Encoding();
        Decoder Decode = encodepwd.GetDecoder();

        byte[] todecode_byte1 = Convert.FromBase64String(b);

        int charCount1 = Decode.GetCharCount(todecode_byte1, 0, todecode_byte1.Length);

        char[] decoded_char1 = new char[charCount1];

        Decode.GetChars(todecode_byte1, 0, todecode_byte1.Length, decoded_char1, 0);

        decryptpwd1 = new String(decoded_char1);
        cmd = new SqlCommand("update entryrecords set filepath='" + decryptpwd1 + "' where filename='" + TextBox2.Text + "'", con);

        cmd.ExecuteNonQuery();
        SqlDataAdapter da1 = new SqlDataAdapter("select * from entryrecords where paid='" + DropDownList1.SelectedItem.Text + "'and filename='" + TextBox2 .Text + "'", con);
        DataSet ds1 = new DataSet();
        DataTable dt1 = new DataTable();
        da1.Fill(ds1);
        da1.Fill(dt1);
        GridView2.DataSource = ds1;
        GridView2.DataBind();
        con.Close();
}
}

    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        
    }
    public void filedownload()
    {
        //con.Open();
        //string command = "select * from entryrecords where filename =" + GridView2.Rows+ "";
        //string path = Server.MapPath("document\\" + command);
        //FileInfo file = new FileInfo(path);
        //Response.Clear();
        //Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
        //Response.AddHeader("Content-Length", file.Length.ToString());
        //Response.ContentType = "application/octet-stream";
        //Response.WriteFile(file.FullName);
        //con.Close();
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
        //LinkButton lblProdId = (LinkButton)row.FindControl("lnkDownload");
        ////string s = lblProdId.Text;
        //if (e.CommandName == "filedownload")
        //{
            con.Open();
            string command = "select * from entryrecords where filename =" + GridView2.Rows[0].Cells [2].ToString () + "";
            string path = Server.MapPath("document\\" + command);
            FileInfo file = new FileInfo(path);
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
            Response.AddHeader("Content-Length", file.Length.ToString());
            Response.ContentType = "application/octet-stream";
            Response.WriteFile(file.FullName);
            con.Close();
        //}
    }
}
