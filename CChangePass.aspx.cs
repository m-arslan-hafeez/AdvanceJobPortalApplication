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

public partial class CChangePass : System.Web.UI.Page
{
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();

    DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
    DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (txtnpass.Text == "")
        {
            lbl.Text = "Enate pass";
        }
        else if (txtnpass.Text != txtlcpass.Text)
        {
            lbl.Text = "password not match";

        }
        else
        {
            CoAdapter.COMPANYMST_CHANGE_PASS(Session["cemail"].ToString(), txtnpass.Text);
            //CAdapter.Company_Mst_update_pass(Convert.ToInt32(Session["CID"].ToString()), txtnpass.Text);
            lbl.Text = "Password has been changed";
        }
    }
}
