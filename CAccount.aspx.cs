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

public partial class CAccount : System.Web.UI.Page
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();


    DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
    DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (Page.IsPostBack == false)
        {

            CoDT = CoAdapter.select_By_cid(Convert.ToInt32(Session["CID"].ToString()));

            lblcname.Text = CoDT.Rows[0]["companyname"].ToString();
            txtcity.Text = CoDT.Rows[0]["city"].ToString();
            txtadd.Text = CoDT.Rows[0]["address"].ToString();
            txtpin.Text = CoDT.Rows[0]["pincode"].ToString();
            txtmob.Text = CoDT.Rows[0]["contactno"].ToString();
            txtcperson.Text = CoDT.Rows[0]["contactperson"].ToString();
            txttype.Text = CoDT.Rows[0]["type"].ToString();
            txtdetil.Text = CoDT.Rows[0]["detail"].ToString();
           

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        CoAdapter.Update(lblcname.Text, txtadd.Text, txtcity.Text, txtpin.Text, txtcperson.Text, txtmob.Text, txtdetil.Text, txttype.Text, Session["cemail"].ToString());
   //  int d = JAdapter.Update(Convert.ToInt32(Session["JID"].ToString()), txtfname.Text, txtlname.Text, txtcity.Text, txtadd.Text, txtpin.Text, txtmob.Text, drpdegree.SelectedItem.Text, drpskill.SelectedItem.Text, txtsal.Text, txtpassyear.Text, drpexp.SelectedItem.Text);
     lbl.Text = "Detail Updated !!";
    }
}
