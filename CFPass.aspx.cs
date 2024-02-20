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

public partial class CFPass : System.Web.UI.Page
{
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();
    DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
    DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        lblpass.Text = "";
        CoDT = CoAdapter.Forgot_pass(txtcity.Text, txtpin.Text, txtmob.Text);
        //CDT = CAdapter.SelectFORGOT_PASS(txtcity.Text, txtpin.Text, txtmob.Text);

        if (CoDT.Rows.Count == 1)
        {
            lblpass.Text = "Your Password = " + CoDT.Rows[0]["pass"].ToString();
            txtmob.Text = "";
            txtpin.Text = "";
            txtcity.Text = "";
        }
        else
        {

            lblpass.Text = "Invalid Detail !!";
        }

    }
}
