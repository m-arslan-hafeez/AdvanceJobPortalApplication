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

public partial class CApplied : System.Web.UI.Page
{
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
   
    DS_Apply.Apply_Mst_MY_APPLIEDDataTable MADT = new DS_Apply.Apply_Mst_MY_APPLIEDDataTable();
    DS_ApplyTableAdapters.Apply_Mst_MY_APPLIEDTableAdapter MAADapter = new DS_ApplyTableAdapters.Apply_Mst_MY_APPLIEDTableAdapter();
    DS_Apply.Apply_Mst_selectDataTable ADT = new DS_Apply.Apply_Mst_selectDataTable();
    DS_ApplyTableAdapters.Apply_Mst_selectTableAdapter AADapter = new DS_ApplyTableAdapters.Apply_Mst_selectTableAdapter();

    DS_Apply.Apply_Mst_MY_APPLIED_COMPANYDataTable ACDT = new DS_Apply.Apply_Mst_MY_APPLIED_COMPANYDataTable();
    DS_ApplyTableAdapters.Apply_Mst_MY_APPLIED_COMPANYTableAdapter ACAdapter = new DS_ApplyTableAdapters.Apply_Mst_MY_APPLIED_COMPANYTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {


            ACDT = ACAdapter.Apply_COMPANYY(Session["cname"].ToString());
            //CDT = CAdapter.SelectBY_CNAME(ADT.Rows[0]["Cname"].ToString());
            DataList3.DataSource = ACDT;
            DataList3.DataBind();
        }

    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        ADT=AADapter.SelectBY_AID(Convert.ToInt32(e.CommandArgument.ToString()));

       JDT=JAdapter.Select_BY_EMAIL(ADT.Rows[0]["jname"].ToString());

        Session["VJID"] = JDT.Rows[0]["UID"].ToString();
        Response.Redirect("CViewmore.aspx");
     
    }
}
