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

public partial class HRM_NewRecruter : System.Web.UI.Page
{
    DS_CCOMPANY.Company_Mst_selectDataTable CDT = new DS_CCOMPANY.Company_Mst_selectDataTable();
    DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter CAdapter = new DS_CCOMPANYTableAdapters.Company_Mst_selectTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        lbldone.Text = "";
        string gnd = "";
       
        if (rdomale.Checked == true)
        {
            gnd = "MALE";
           
        }
        else
        {
            gnd = "FEMALE";
           
        }

        int inst = CAdapter.Insert(txtname.Text, txttile.Text, txtcity.Text, txtadd.Text, txtpin.Text, txtmobile.Text, gnd, drpdegree.SelectedItem.Text, drpskill.SelectedItem.Text, txtsalary.Text, drpexp.SelectedItem.Text, txtuname.Text, txtupass.Text);

        txtname.Text = "";
        txttile.Text = "";
        txtcity.Text = "";
        txtadd.Text = "";
        txtpin.Text = "";
        txtmobile.Text = "";
        txtuname.Text = "";
        txtupass.Text = "";
        lbldone.Text = "Registration Done.";
        Response.Redirect("home.aspx");
    
    }
}
