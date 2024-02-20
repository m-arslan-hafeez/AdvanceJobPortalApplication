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

public partial class CViewmore : System.Web.UI.Page
{
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();

    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();

    DS_CMSG.CMessage_Mst_selectDataTable CMDT = new DS_CMSG.CMessage_Mst_selectDataTable();
    DS_CMSGTableAdapters.CMessage_Mst_selectTableAdapter CMAdapter = new DS_CMSGTableAdapters.CMessage_Mst_selectTableAdapter();
    
    DS_Apply.Apply_Mst_selectDataTable ADT = new DS_Apply.Apply_Mst_selectDataTable();
    DS_ApplyTableAdapters.Apply_Mst_selectTableAdapter AAdapter = new DS_ApplyTableAdapters.Apply_Mst_selectTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (Page.IsPostBack == false)
        {

            JDT = JAdapter.SelectBY_UID(Convert.ToInt32(Session["VJID"].ToString()));
            Label1.Text = JDT.Rows[0]["Fname"].ToString();
            Label12.Text = JDT.Rows[0]["Lname"].ToString();
           
            Label3.Text = JDT.Rows[0]["Address"].ToString();
            Label4.Text = JDT.Rows[0]["city"].ToString();
            Label5.Text = JDT.Rows[0]["pincode"].ToString();
            Label6.Text = JDT.Rows[0]["mobileno"].ToString();
            Label7.Text = JDT.Rows[0]["degree"].ToString();
            Label8.Text = JDT.Rows[0]["skill"].ToString();
            Label9.Text = JDT.Rows[0]["Experience"].ToString();
            Label10.Text = JDT.Rows[0]["Paasyear"].ToString();
            Label11.Text = JDT.Rows[0]["email"].ToString();
            
        
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int inmsg = CMAdapter.Insert(Session["cname"].ToString(), Label11.Text, txtmsg.Text);
        txtmsg.Text = "";
        lblmsg.Text = "Message send Successfully";
    }
}
