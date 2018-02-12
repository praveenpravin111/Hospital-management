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

public partial class Default3 : System.Web.UI.Page
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
        da = new SqlDataAdapter("select * from emergencydet", con);
        da.Fill(dt);
        da = new SqlDataAdapter("select ident_current('emergencydet')", con);
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
        TextBox1.Text = "EME" + id.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        refresh();
    }
    private void refresh()
    {
        TextBox2.Text = "";

   

        TextBox4.Text = "";
     

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('key sent successfully..')</script>");
        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        System.Net.NetworkCredential cred = new System.Net.NetworkCredential("packtemp1@gmail.com", "packtemp1234");
        cmd = new SqlCommand("select * from patientreg where paid='" + DropDownList1 .SelectedItem .Text  + "'", con);
        //SqlDataAdapter ed = new SqlDataAdapter("select * from testdetail where patientidno='" + user.Text + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
      
            //string em = dr[0].ToString();
            string em = TextBox4 .Text ;

            mail.To.Add(em);
            mail.Subject = " Report key for patientidno'" + DropDownList1.SelectedItem.Text + "'";

            mail.From = new System.Net.Mail.MailAddress("packtemp1@gmail.com");
            mail.IsBodyHtml = true; // Aceptamos HTML
            //System.IO.StringWriter sw = new System.IO.StringWriter();
            //System.Web.UI.HtmlTextWriter htw = new System.Web.UI.HtmlTextWriter(sw);
            //GridView1.RenderControl(htw);
            //string renderedGridView = sw.ToString();
            mail.Body = " patient test details '" + dr[9].ToString() + "' !!!";
            System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtp.gmail.com");


            smtp.UseDefaultCredentials = false;
            smtp.EnableSsl = true;
            smtp.Credentials = cred; //asignamos la credencial
            smtp.Send(mail);
            dr.Close();
            cmd = new SqlCommand("insert into emergencydet values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text  + "','" + TextBox4.Text + "')", con);

            cmd.ExecuteNonQuery();
        }

        con.Close();
        //SendHTMLMail();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("emergencyviewpatient.aspx");
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
