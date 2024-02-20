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

public partial class CLogin : System.Web.UI.MasterPage
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();

    DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
    DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        CoDT = CoAdapter.select_By_cid(Convert.ToInt32(Session["CID"].ToString()));

      //  CDT = CAdapter.SelectBY_CID(Convert.ToInt32(Session["CID"].ToString()));

        lblname.Text = CoDT.Rows[0]["companyname"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //lblname.Text = "";
        if (drpskill.SelectedIndex == 0 || drpdegree.SelectedIndex == 0)
        {
            lblresult.Text = "Invalid Search";
        }
        else
        {
            Session["CL"] = txtjname.Text + "%";
            Session["DL"] = drpdegree.SelectedItem.Text;
            Session["SL"] = drpskill.SelectedItem.Text;
            Response.Redirect("CLogin.aspx");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["CL"] = null;
        Response.Redirect("CLogin.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["CID"] = null;
        Session["cemail"] = null;
        Response.Redirect("Home.aspx");
    }
}
