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

public partial class HRM_JLogin : System.Web.UI.Page
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();

    DS_POSTJOB.POSTJOBMST_SELECTDataTable PDT = new DS_POSTJOB.POSTJOBMST_SELECTDataTable();
    DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter PAdapte = new DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            JDT = JAdapter.SelectBY_UID(Convert.ToInt32(Session["JID"].ToString()));
            
            if (Session["CL"] == null)
            {

                PDT = PAdapte.Search_Degree_Skill(JDT.Rows[0]["Degree"].ToString(), JDT.Rows[0]["Skill"].ToString());
               // CDT = CAdapter.SelectSearch_HOME(JDT.Rows[0]["Degree"].ToString(), JDT.Rows[0]["Skill"].ToString());
                DataList3.DataSource = PDT;
                DataList3.DataBind();
                Label1.Text = "Job match with your Profile (" + DataList3.Items.Count.ToString() + ")";
            }
            else
            {
                PDT = PAdapte.Search_After_login(Session["CL"].ToString(), Session["DL"].ToString(), Session["SL"].ToString());
                //CDT = CAdapter.Search_LOGIN(Session["CL"].ToString(), Session["DL"].ToString(), Session["SL"].ToString());
                DataList3.DataSource = PDT;
                DataList3.DataBind();
                Session["CL"] = null;
                Label1.Text = "Result for Job Search (" + DataList3.Items.Count.ToString() +")";
            }

        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["VCID"] = e.CommandArgument.ToString();
        Response.Redirect("JViewmore.aspx");
    }
}
