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

public partial class JApplied : System.Web.UI.Page
{
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();

    DS_Apply.Apply_Mst_MY_APPLIEDDataTable MADT = new DS_Apply.Apply_Mst_MY_APPLIEDDataTable();
    DS_ApplyTableAdapters.Apply_Mst_MY_APPLIEDTableAdapter MAADapter = new DS_ApplyTableAdapters.Apply_Mst_MY_APPLIEDTableAdapter();
    DS_Apply.Apply_Mst_selectDataTable ADT = new DS_Apply.Apply_Mst_selectDataTable();
    DS_ApplyTableAdapters.Apply_Mst_selectTableAdapter AADapter = new DS_ApplyTableAdapters.Apply_Mst_selectTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            //ADT = AADapter.Select_MY_Applied(Session["jemail"].ToString());
            //if (ADT.Rows.Count > 0)
            //{
                MADT=MAADapter.SlectFOE_MY_APPLIED(Session["jemail"].ToString());
                //CDT = CAdapter.SelectBY_CNAME(ADT.Rows[0]["Cname"].ToString());
                DataList3.DataSource = MADT;
                DataList3.DataBind();
            //}
        }

    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int del = AADapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));

        MADT = MAADapter.SlectFOE_MY_APPLIED(Session["jemail"].ToString());
        DataList3.DataSource = MADT;
        DataList3.DataBind();
    }
}
