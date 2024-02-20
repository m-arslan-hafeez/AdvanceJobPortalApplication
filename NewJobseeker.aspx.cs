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

public partial class HRM_NewJobseeker : System.Web.UI.Page
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string gnd = "";
        string img="";
        if (rdomale.Checked == true)
        {
            gnd = "MALE";
            img = "~/img/KPM.jpg";
        }
        else
        {
            gnd = "FEMALE";
            img = "~/img/KPF.jpg";
        }

        int inst = JAdapter.Insert(txtfname.Text, txtlname.Text, txtcity.Text, txtadd.Text, txtpin.Text, txtmobile.Text, gnd, Convert.ToDateTime(drpdd.SelectedItem.Text + " " + drpmm.SelectedItem.Text + " " + drpyyy.SelectedItem.Text), img, drpdegree.SelectedItem.Text, drpskill.SelectedItem.Text, txtdetail.Text, txtpassyear.Text, drpexp.SelectedItem.Text, txtuname.Text, txtupass.Text);
        Response.Redirect("home.aspx");
    }
}
