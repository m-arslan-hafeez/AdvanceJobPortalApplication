using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class HRM_Home : System.Web.UI.MasterPage
{
    DS_CCOMPANY.Company_Mst_select_HOMEDataTable CHDT = new DS_CCOMPANY.Company_Mst_select_HOMEDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_select_HOMETableAdapter CHAdapter=new DS_CCOMPANYTableAdapters.Company_Mst_select_HOMETableAdapter();

    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();
   
    DS_JSeeker.JobSheeker_Mst_select_HOMEDataTable JHDT = new DS_JSeeker.JobSheeker_Mst_select_HOMEDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_select_HOMETableAdapter JHAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_select_HOMETableAdapter();

    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();

    DS_POSTJOB.POSTJOBMST_SELECTDataTable PDT = new DS_POSTJOB.POSTJOBMST_SELECTDataTable();
    DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter PAdapte = new DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter();

    DS_POSTJOB.POSTJOBMST_select_HOMEDataTable PHDT = new DS_POSTJOB.POSTJOBMST_select_HOMEDataTable();
    DS_POSTJOBTableAdapters.POSTJOBMST_select_HOMETableAdapter PHAdapter = new DS_POSTJOBTableAdapters.POSTJOBMST_select_HOMETableAdapter();

    DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
    DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {
        lblj0.Text = "";
        lblj.Text = "";
        if(Page.IsPostBack==false)
        {
            PHDT = PHAdapter.Select_For_Home();
            
            DataList1.DataSource=PHDT;
            DataList1.DataBind();


            //CHDT = CHAdapter.SelectFOR_HOME();
            JHDT = JHAdapter.SelectForHOME();
            DataList2.DataSource = JHDT;
            DataList2.DataBind();
        
        }

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("NewJobseeker.aspx");
    }
    protected void btnjlogin_Click(object sender, EventArgs e)
    {
        JDT = JAdapter.SelectFOR_LOGIN(txtjname.Text, txtjpass.Text);
        if (JDT.Rows.Count > 0)
        {
            Session["jemail"] = JDT.Rows[0]["Email"].ToString();
            Session["JID"] = JDT.Rows[0]["UID"].ToString();
           // Session["img"] = JDT.Rows[0]["UID"].ToString();
            Response.Redirect("Jlogin.aspx");

        }
        else
        {
            lblj.Text = "Invalid Detail";
        }
    }
    protected void btnjlogin0_Click(object sender, EventArgs e)
    {
        CoDT = CoAdapter.select_Login(txtcname.Text, txtcpass.Text);
     //   CDT = CAdapter.SelectFOR_LOGIN(txtcname.Text, txtcpass.Text);
        if (CoDT.Rows.Count > 0)
        {
            Session["cemail"] = CoDT.Rows[0]["email"].ToString();
            Session["cname"] = CoDT.Rows[0]["companyname"].ToString();
            Session["CID"] = CoDT.Rows[0]["CID"].ToString();
            Response.Redirect("Clogin.aspx");

        }
        else
        {
            lblj0.Text = "Invalid Detail";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        lblresult.Text = "";
        if (drpdegree.SelectedIndex == 0 || drpskill.SelectedIndex == 0)
        {
            
            lblresult.Text = "Invalid Search";
        }
        else
        {
            Session["D"] = drpdegree.SelectedItem.Text;
            Session["S"] = drpskill.SelectedItem.Text;
            Response.Redirect("SearchJob.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblresult.Text = "";
        if (drpdegree.SelectedIndex == 0 || drpskill.SelectedIndex == 0)
        {
          
            lblresult.Text = "Invalid Search";
        }
        else
        {
            Session["D"] = drpdegree.SelectedItem.Text;
            Session["S"] = drpskill.SelectedItem.Text;
            Response.Redirect("SearchResume.aspx");
        }
    }
}
