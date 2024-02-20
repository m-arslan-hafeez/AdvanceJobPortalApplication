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

public partial class HRM_SearchJob : System.Web.UI.Page
{
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();

    DS_POSTJOB.POSTJOBMST_SELECTDataTable PDT = new DS_POSTJOB.POSTJOBMST_SELECTDataTable();
    DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter PAdapte = new DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //CDT = CAdapter.SelectSearch_HOME(Session["D"].ToString(), Session["S"].ToString());
            PDT = PAdapte.Search_Degree_Skill(Session["D"].ToString(), Session["S"].ToString());
            DataList3.DataSource = PDT;
            DataList3.DataBind();
        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("NewJobseeker.aspx");
    }
}
