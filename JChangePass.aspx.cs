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

public partial class JChangePass : System.Web.UI.Page
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (txtnpass.Text == "")
        {
            lbl.Text = "Enter password";
        }
        else if (txtnpass.Text != txtlcpass.Text)
        {
            lbl.Text = "password not match";

        }
        else
        {
            JAdapter.JobSheeker_Mst_CHANGE_PASS(Convert.ToInt32(Session["JID"].ToString()), txtnpass.Text);
            lbl.Text = "Password has been chaged";
        }
    }
}
