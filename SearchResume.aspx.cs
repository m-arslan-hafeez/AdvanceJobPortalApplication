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

public partial class HRM_SearchResume : System.Web.UI.Page
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            JDT = JAdapter.SelectSearch_HOME(Session["D"].ToString(), Session["S"].ToString());
            DataList3.DataSource = JDT;
            DataList3.DataBind();
        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("NewCompany.aspx");
    }
}
