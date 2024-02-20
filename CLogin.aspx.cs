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

public partial class CLogin : System.Web.UI.Page
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();
    DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
    DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();
    DS_POSTJOB.POSTJOBMST_SELECTDataTable PDT = new DS_POSTJOB.POSTJOBMST_SELECTDataTable();
    DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter PAdapte = new DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //CoDT = CoAdapter.select_By_cid(Convert.ToInt32(Session["CID"].ToString()));
           // CDT = CAdapter.SelectBY_CID(Convert.ToInt32(Session["CID"].ToString()));
            PDT = PAdapte.select_by_Cname(Session["cname"].ToString());
            if (Session["CL"] == null)
            {
                if (PDT.Rows.Count > 0)
                {
                    JDT = JAdapter.SelectSearch_HOME(PDT.Rows[0]["Degree"].ToString(), PDT.Rows[0]["Skill"].ToString());
                    DataList3.DataSource = JDT;
                    DataList3.DataBind();
                    Label1.Text = "Profile match with your Job (" + DataList3.Items.Count.ToString() + ")";
                }
            }
            else
            {
               JDT = JAdapter.Select_SEARCH_LOGIN(Session["CL"].ToString(), Session["DL"].ToString(), Session["SL"].ToString());
                DataList3.DataSource = JDT;
                DataList3.DataBind();
                Session["CL"] = null;
                Label1.Text = "Result for JobSeeker Search (" + DataList3.Items.Count.ToString() +")";
            }

        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["VJID"] = e.CommandArgument.ToString();
        Response.Redirect("CViewmore.aspx");
    }
}
