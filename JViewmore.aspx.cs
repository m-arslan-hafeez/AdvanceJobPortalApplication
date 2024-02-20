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

public partial class JViewmore : System.Web.UI.Page
{
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();


    DS_JMSG.Message_Mst_selectDataTable JMDT = new DS_JMSG.Message_Mst_selectDataTable();
    DS_JMSGTableAdapters.Message_Mst_selectTableAdapter JMAdapter = new DS_JMSGTableAdapters.Message_Mst_selectTableAdapter();
    DS_Apply.Apply_Mst_selectDataTable ADT = new DS_Apply.Apply_Mst_selectDataTable();
    DS_ApplyTableAdapters.Apply_Mst_selectTableAdapter AAdapter = new DS_ApplyTableAdapters.Apply_Mst_selectTableAdapter();


    DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
    DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();

    DS_POSTJOB.POSTJOBMST_SELECTDataTable PDT = new DS_POSTJOB.POSTJOBMST_SELECTDataTable();
    DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter PAdapte = new DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (Page.IsPostBack == false)
        {
            PDT = PAdapte.Select_By_PID(Convert.ToInt32(Session["VCID"].ToString()));

            //CDT = CAdapter.SelectBY_CID(Convert.ToInt32(Session["VCID"].ToString()));
            Label1.Text = PDT.Rows[0]["companyname"].ToString();
            Label2.Text = PDT.Rows[0]["jobtitle"].ToString();
          
            Label7.Text = PDT.Rows[0]["degree"].ToString();
            Label8.Text = PDT.Rows[0]["skill"].ToString();
            Label9.Text = PDT.Rows[0]["Experience"].ToString();
            Label10.Text = PDT.Rows[0]["Salary"].ToString();
            Label11.Text = PDT.Rows[0]["vacancy"].ToString();
            Label13.Text = PDT.Rows[0]["detail"].ToString();

            CoDT = CoAdapter.select_By_CNAME(PDT.Rows[0]["companyname"].ToString());

            Label3.Text = CoDT.Rows[0]["Address"].ToString();
            Label4.Text = CoDT.Rows[0]["city"].ToString();
            Label5.Text = CoDT.Rows[0]["pincode"].ToString();
            Label12.Text = CoDT.Rows[0]["contactperson"].ToString();
            Label6.Text = CoDT.Rows[0]["contactno"].ToString();
          
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        ADT = AAdapter.Select_Befor_Apply(Session["jemail"].ToString(), Label1.Text);
        if (ADT.Rows.Count > 0)
        {
            lblmsg.Text = "Allready Applied !!";
        }
        else
        {

            int inst = AAdapter.Insert(Session["jemail"].ToString(), Label1.Text);
            lblmsg.Text = "Job Applied Successfully";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int inmsg = JMAdapter.Insert(Session["jemail"].ToString(), Label1.Text, txtmsg.Text);
        txtmsg.Text = "";
        lblmsg.Text = "Message send Successfully";
    }
}
