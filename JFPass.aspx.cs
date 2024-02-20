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

public partial class JFPass : System.Web.UI.Page
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        JDT = JAdapter.SelectFORGOT_PASS(txtcity.Text, txtpin.Text, txtmob.Text);
        if (JDT.Rows.Count == 1)
        {
            lblpass.Text = "Your Password = " + JDT.Rows[0]["Password"].ToString();
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
