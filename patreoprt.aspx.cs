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
using CrystalDecisions.CrystalReports.Engine;

using CrystalDecisions.Enterprise;

using CrystalDecisions.Shared;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        //Label1.Visible = true;



        SqlDataAdapter da = new SqlDataAdapter("select patientid,patientname,gender,maritalsts,phno,email,address from patientreg ", con);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(dt);

        ReportDocument TestReport = new ReportDocument();
        TestReport.Load(Server.MapPath("~/CrystalReport1.rpt"));
        TestReport.SetDataSource(dt);
        CrystalReportViewer1.ReportSource = TestReport;
        CrystalReportViewer1.DataBind();
        con.Close();
    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
    protected void CrystalReportViewer1_Init1(object sender, EventArgs e)
    {

    }
}
